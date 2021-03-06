using UnityEngine;
using System.Collections;
using System.Collections.Generic;
[RequireComponent (typeof(Upgrades))]
public class Turret_MG : MonoBehaviour
{

	public static Turret_MG instance;
	public float rotationDamp = 2.0f;
	public float distanceToEnemy;
	public Transform turretMG;
	public GameObject[] enemyObjList;
	public int dmgLvl;
	public int healthLvl;
	public int rangeLvl;	
	public float curHealth;
	public int maxHealth;
	public float healthBarLength;
	public Texture2D progressBarEmpty;
	public Texture2D progressBarFull;
	public float coolDown;
	public float lineDrawSpeed;
	public Upgrades upgrades;
	private LineRenderer shootEffect;
	private float counter;
	private PlacementPlane placePlane;
	private bool readyToShoot = true;
	private float nextFireTime = 0.5f;
	private Vector2 size = new Vector2(60,20);
	private EnemyGlobalList enemyList;
	private Vector3 yOld;
	private MGUpgrades upgrade;
	private Quaternion rotate;
	private RaycastHit hit;
	private Vector3 forward;
	private bool placed = false;
	private float startTime = 0.0f;
	private float duration = 70.0f;
	private Vector2 targetPos;
	private GameObject _currentTarget = null;
	private PhotonView view;
	private int layerMask = ~(1<<9);

	public PlacementPlane PlacePlane {
		get{
			return placePlane;
		}
		set{
			placePlane = value;
		}
	}
	public Vector3 TurretMG {
		get{
			return turretMG.position;
		}
		set{
			turretMG.position = value;
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

	public Vector3 CurrentTargetPosition {
			get {
					return CurrentTarget.transform.position;
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
		enemyObjList = enemyList.EnemyListMinion;

		foreach (GameObject enemy in enemyObjList) {
			distanceToEnemy = Vector3.Distance (enemy.transform.position, TurretMG);	
			if (distanceToEnemy <= upgrade.getRangeUpdate(upgrades.RangeLvl))
					return enemy;
		}
		return null;
	}
	void Awake ()
	{
		instance = this;
		startTime = Time.time;
		placed = true;	
		upgrade = MGUpgrades.instance;
		yOld = ObjPosition + Turret_Placement.instance.startPos;			
		view = PhotonView.Get(this);
		enemyList = EnemyGlobalList.instance;
		curHealth = (float)upgrade.getHealthUpdate(upgrades.HealthLvl);
		maxHealth = upgrade.getHealthUpdate(upgrades.HealthLvl);
		healthBarLength = curHealth /(float)maxHealth;
	}
	void Start(){
		Vector3 temp = yOld + new Vector3(0,2,0);
		shootEffect = GetComponent<LineRenderer>();
		shootEffect.SetPosition(0,temp);
		shootEffect.SetPosition (1, temp);
		shootEffect.SetWidth(.45f,.45f);
	}

	void Update ()
	{
		if (placed) {			
			ObjPosition = new Vector3 (ObjPosition.x, Mathf.Lerp (ObjPosition.y, yOld.y+0.3f, (Time.time - startTime) / duration), ObjPosition.z);
		}


		if (CurrentTarget == null) {
			//	rotate = Quaternion.identity;	
		}
		else {
			rotate = Quaternion.LookRotation (CurrentTargetPosition - TurretMG);	
			coolDown+=Time.deltaTime;
			if(readyToShoot && distanceToEnemy < upgrade.getRangeUpdate(upgrades.RangeLvl))
				FireProjectile ();
			if(coolDown >= nextFireTime){
				readyToShoot = true;
				coolDown = 0;
			}
		}
		turretMG.rotation = Quaternion.Lerp (turretMG.rotation, rotate, Time.deltaTime * rotationDamp);

		if(curHealth <= 0){		
			PlayerStats.instance.money +=15;
			DestroyObject(gameObject);
		}	

	}

	void OnDestroy(){
		RaycastHit hit = new RaycastHit();
		if (Physics.Raycast (transform.position, -transform.up,out hit,100,layerMask))
			hit.collider.GetComponent<PlacementPlane>().PlacePlane = false;
	}


	void FireProjectile (){
		readyToShoot = false;
		counter += .1f / lineDrawSpeed;
		float x = Mathf.Lerp(0,distanceToEnemy,counter);
		Vector3 ab = x * Vector3.Normalize(CurrentTargetPosition-TurretMG)+TurretMG;
		shootEffect.SetPosition(1, ab);
		counter = 0;
		CurrentTarget.GetComponent<Creature>().AddjustCurrentHealth(upgrade.getDamageUpdate(upgrades.DamageLvl));
		StartCoroutine (Wait ());		
	}
	IEnumerator Wait() {
		yield return new WaitForFixedUpdate();		
		shootEffect.SetPosition(1, TurretMG);
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
		if(PhotonNetwork.isMasterClient && PlayerPrefs.GetString("online").Equals("Online")){
			curHealth -= adj;	
			maxHealth = upgrade.getHealthUpdate(upgrades.HealthLvl);
			if (curHealth < 0)		
				curHealth = 0;	
			if (curHealth > maxHealth)		
				curHealth = maxHealth;		
			if(maxHealth < 1)		
				maxHealth = 1;		
			healthBarLength = curHealth /(float)maxHealth;
			view.RPC("NetworkHealth",PhotonTargets.All,curHealth,maxHealth,healthBarLength);
		}else if(PlayerPrefs.GetString("online").Equals("Offline")){
			curHealth -= adj;	
			maxHealth = upgrade.getHealthUpdate(upgrades.HealthLvl);
			if (curHealth < 0)		
				curHealth = 0;	
			if (curHealth > maxHealth)		
				curHealth = maxHealth;		
			if(maxHealth < 1)		
				maxHealth = 1;		
			healthBarLength = curHealth /(float)maxHealth;
		}

	}

	[RPC]
	void NetworkHealth(float cur,int max,float hBL){
		curHealth = cur;
		maxHealth = max;
		healthBarLength = hBL;
	}
}

