using UnityEngine;
using System.Collections;

public class EnemiAI : MonoBehaviour {
	public Transform player;
	public Vector3[] targetPoints;
	public int targetIndex = 0;
	public float range = 30f;
	public float damage;
	public float minPlayerDistance = 8.0f;
	public float maxPlayerDistance = 12.0f;
	public Transform weapon;
	public GameObject[] enemyObjList;
	public float distanceToEnemy;
	public float rotationDamp = 2.0f;
	private bool readyToShoot = true;
	private float nextFireTime = 2f;
	public float coolDown;
	private MinionUpgrade upgrade;
	private Quaternion rotate;
	private Vector3 forward;
	private GameObject _currentTarget = null;
	private Creature myCreature;
	private EnemyGlobalList enemyList;
	private Vector3 tp;
	private Vector3 tpPlanar;
	private Vector3 oldtarget;

	void Awake(){
		myCreature = GetComponent<Creature>();	
		upgrade = MinionUpgrade.instance;
		enemyList = EnemyGlobalList.instance;
	}	
	void Start(){
		damage = upgrade.getDamageUpdate(upgrade.DamageLvl);
	}
	
	void Update () {
		UpdateWalkPath(); 
		if(targetIndex >= targetPoints.Length){
			DestroyObject(gameObject);
		}

		if (CurrentTarget == null) {
			rotate = Quaternion.identity;	
		} else {
			rotate = Quaternion.LookRotation (CurrentTargetPosition - weapon.position);	
			coolDown+=Time.deltaTime;
			if(readyToShoot)

				FireProjectile ();
			if(coolDown >= nextFireTime  && distanceToEnemy < range){
				distanceToEnemy = Vector3.Distance (CurrentTargetPosition, weapon.position);	
				readyToShoot = true;
				coolDown = 0;
			}
		}
		Debug.DrawRay (weapon.position, forward * range, Color.red);
		weapon.rotation = Quaternion.Lerp (weapon.rotation, rotate, Time.deltaTime * rotationDamp);
		
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
		enemyObjList = enemyList.EnemyListTurret;
		
		foreach(GameObject enemy in enemyObjList) {
			distanceToEnemy = Vector3.Distance (enemy.transform.position, weapon.position);	
			if (distanceToEnemy <= range)
				return enemy;
		}
		return null;
	}
	
	void UpdateWalkPath(){
		tp = targetPoints[targetIndex];
		myCreature.targetPosition = tp;
		tpPlanar = new Vector3(tp.x, transform.position.y, tp.z);
		if(Vector3.Distance(transform.position, tpPlanar) < myCreature.minDistance + 0.1f){
			targetIndex++;	
		}

	}
	void OnDrawGizmos(){
		Gizmos.color = Color.blue;

		foreach(Vector3 target in targetPoints){			
			oldtarget = target;
			Gizmos.DrawLine(oldtarget,target);
			Gizmos.DrawCube (target, Vector3.one * 0.2f);	
		}
	}
	void FireProjectile ()
	{
		readyToShoot = false;
		CurrentTarget.GetComponent<Turret_MG_ORIGINAL>().AddjustCurrentHealth(damage);				
	}

}
