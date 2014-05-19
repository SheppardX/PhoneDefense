using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Turret_MG_ORIGINAL : MonoBehaviour
{

	public static Turret_MG_ORIGINAL instance;
	public float rotationDamp = 2.0f;
	public float distanceToEnemy;
	public Transform turretMG;
	public GameObject[] enemyObjList;
	public int dmgLvl;
	public int healthLvl;
	public int rangeLvl;	
	public float curHealth;
	public int maxHealth;
	public GameObject placePlane;
	public float healthBarLength;
	public Texture2D progressBarEmpty;
	public Texture2D progressBarFull;
	private Vector2 size = new Vector2(60,20);
	private EnemyGlobalList enemyList;
	private MGUpgrades upgrade;
	private Vector3 yOld;
	private Quaternion rotate;
	private RaycastHit hit;
	private Vector3 forward;
	private bool placed = false;
	private float startTime = 0.0f;
	private float duration = 70.0f;
	private Vector2 targetPos;
	private GameObject _currentTarget = null;
	private PhotonView view;


	public Vector3 TurretMG {
		get{
			return turretMG.position;
		}
		set{
			turretMG.position = value;
		}
	}

	public int DamageLvl {
		get{
			return dmgLvl;
		}
		set{
			if(PlayerPrefs.GetString("online").Equals("Online"))
				view.RPC("UpgradeDMG",PhotonTargets.All,value);
			else
				dmgLvl = value;
		}
	}
	public int HealthLvl {
		get{
			return healthLvl;
		}
		set{
			if(PlayerPrefs.GetString("online").Equals("Online"))
				view.RPC("UpgradeHealth",PhotonTargets.All,value);
			else{
				healthLvl = value;
				curHealth = upgrade.getHealthUpdate(healthLvl);
			}
		}
	}
	public int RangeLvl {
		get{
			return rangeLvl;
		}
		set{
			if(PlayerPrefs.GetString("online").Equals("Online"))
				view.RPC("UpgradeRange",PhotonTargets.All,value);
			else
				rangeLvl = value;
		}
	}

	private Vector3 ObjPosition {
		get{
			return this.transform.position;
		} 
		set{
			this.transform.position = value;
		}
	}

	public Transform CurrentTargetTransform {
			get {
					return CurrentTarget.transform;
			}
	}

	public GameObject CurrentTarget {
			get {
					if (_currentTarget != null) 
							return _currentTarget;
					else 
							_currentTarget = searchForNewTarget ();

					return _currentTarget;
			}
	}

	private GameObject searchForNewTarget ()
	{
		//TODO als globale Singeltonliste 
		enemyObjList = enemyList.EnemyListMinion;

		foreach (GameObject enemy in enemyObjList) {
			distanceToEnemy = Vector3.Distance (enemy.transform.position, TurretMG);	
			if (distanceToEnemy <= upgrade.getRangeUpdate(rangeLvl))
					return enemy;
		}
		return null;
	}
	void Awake ()
	{
		instance = this;
		startTime = Time.time;
		placed = true;	
		yOld = ObjPosition + Turret_Placement.instance.startPos;			
		view = PhotonView.Get(this);
		enemyList = EnemyGlobalList.instance;
		upgrade = MGUpgrades.instance;
		curHealth = (float)upgrade.getHealthUpdate(healthLvl);
		maxHealth = upgrade.getHealthUpdate(healthLvl);
		healthBarLength = curHealth /(float)maxHealth;
	}
	void Start(){
	}

	void Update ()
	{
		if (placed) {			
			ObjPosition = new Vector3 (ObjPosition.x, Mathf.Lerp (ObjPosition.y, yOld.y, (Time.time - startTime) / duration), ObjPosition.z);
		}


		if (CurrentTarget == null) {
				rotate = Quaternion.identity;	
		} else {
			if(distanceToEnemy > upgrade.getRangeUpdate(rangeLvl))
				searchForNewTarget();
			rotate = Quaternion.LookRotation (CurrentTargetTransform.position - TurretMG);	
			FireProjectile ();
		}
		Debug.DrawRay (TurretMG, forward * upgrade.getRangeUpdate(rangeLvl), Color.red);
		turretMG.rotation = Quaternion.Lerp (turretMG.rotation, rotate, Time.deltaTime * rotationDamp);

		if(curHealth <= 0){		
			PlayerStats.instance.money +=15;
			placePlane.tag = "PlacementPlane_Open";
			DestroyObject(gameObject);
		}	
	}


	void FireProjectile ()
	{
		CurrentTarget.GetComponent<Creature>().AddjustCurrentHealth(upgrade.getDamageUpdate(dmgLvl) * Time.deltaTime);

	
	}

	IEnumerator wait ()
	{
			yield return new WaitForSeconds (1);
	}

	[RPC]
	void UpgradeDMG(int value){
		dmgLvl = value;
	}
	[RPC]
	void UpgradeHealth(int value){
		healthLvl = value;
		curHealth = upgrade.getHealthUpdate(healthLvl);
	}
	[RPC]
	void UpgradeRange(int value){
		rangeLvl = value;
	}

	void OnGUI(){			
		targetPos = Camera.main.WorldToScreenPoint (transform.position);
		GUI.BeginGroup(new Rect(targetPos.x, Screen.height - targetPos.y,60,20));
		GUI.Box(new Rect(0,0, size.x, size.y),progressBarEmpty);
		GUI.BeginGroup(new Rect(0,0,size.x*healthBarLength,size.y));
		GUI.Box(new Rect(0,0,size.x,size.y),progressBarFull);
		GUI.EndGroup();
		GUI.EndGroup();
	}

	public void AddjustCurrentHealth (float adj)
	{
		curHealth -= adj;	
		maxHealth = upgrade.getHealthUpdate(healthLvl);
		if (curHealth < 0)		
			curHealth = 0;	
		if (curHealth > maxHealth)		
			curHealth = maxHealth;		
		if(maxHealth < 1)		
			maxHealth = 1;		
		healthBarLength = curHealth /(float)maxHealth;
		
	}
}

