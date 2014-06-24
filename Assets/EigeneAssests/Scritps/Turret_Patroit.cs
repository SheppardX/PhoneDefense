using UnityEngine;
using System.Collections;

public class Turret_Patroit : MonoBehaviour {

	
	public static Turret_Patroit instance;
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
	public float rotateCoolDown;
	public Vector3 rotateAngle; 
	private PlacementPlane placePlane;
	private bool readyToShoot = true;
	private float nextFireTime = 5.5f;
	private Vector2 size = new Vector2(60,20);
	private EnemyGlobalList enemyList;
	private PatriotUpgrades upgrade;
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
		//TODO als globale Singeltonliste 
		enemyObjList = enemyList.EnemyListMinion;
		
		foreach (GameObject enemy in enemyObjList) {
			distanceToEnemy = Vector3.Distance (enemy.transform.position, TurretMG);	
			if (distanceToEnemy <= upgrade.getRangeUpdate(rangeLvl) && distanceToEnemy >= 30)
				return enemy;
			else return null;
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
		upgrade = PatriotUpgrades.instance;
		curHealth = (float)upgrade.getHealthUpdate(healthLvl);
		maxHealth = upgrade.getHealthUpdate(healthLvl);
		healthBarLength = curHealth /(float)maxHealth;
	}
	void Start(){
		
	}
	
	void Update ()
	{
		if (placed) {			
			ObjPosition = new Vector3 (ObjPosition.x, Mathf.Lerp (ObjPosition.y, yOld.y+0.3f, (Time.time - startTime) / duration), ObjPosition.z);
		}
		
		
		if (CurrentTarget == null) {
			rotateCoolDown+=Time.deltaTime;
			if(rotateCoolDown >= Random.Range(2f,10f)){
				rotateAngle = new Vector3(0,Random.Range(0f,360f),0);
				rotateCoolDown = 0;
			}
			rotate = Quaternion.LookRotation(rotateAngle);
			Debug.Log(rotate);

		} else {
			rotate = Quaternion.LookRotation (CurrentTargetPosition - TurretMG);	
			coolDown+=Time.deltaTime;
			if(readyToShoot && distanceToEnemy < upgrade.getRangeUpdate(rangeLvl))
				FireProjectile ();
			if(coolDown >= nextFireTime){
				readyToShoot = true;
				coolDown = 0;
			}
		}
		Debug.DrawRay (TurretMG, forward * upgrade.getRangeUpdate(rangeLvl), Color.red);
		turretMG.rotation = Quaternion.Lerp (turretMG.rotation, rotate, Time.deltaTime * rotationDamp);
		Debug.Log("turretMG.rotation "+turretMG.rotation);
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
		CurrentTarget.GetComponent<Creature>().AddjustCurrentHealth(upgrade.getDamageUpdate(dmgLvl));
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
		if(PhotonNetwork.isMasterClient){
			curHealth -= adj;	
			maxHealth = upgrade.getHealthUpdate(healthLvl);
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
	
	[RPC]
	void NetworkHealth(float cur,int max,float hBL){
		curHealth = cur;
		maxHealth = max;
		healthBarLength = hBL;
	}
}
