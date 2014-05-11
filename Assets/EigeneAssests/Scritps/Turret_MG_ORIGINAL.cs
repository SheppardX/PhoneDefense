using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Turret_MG_ORIGINAL : MonoBehaviour
{

	public static Turret_MG_ORIGINAL instance;
	public float rotationDamp = 2.0f;
	public float range = 60f;
	public float distanceToPlayer;
	public Transform turretMG;
	public int dmgLvl;
	public int healthLvl;
	public int rangeLvl;
	public GameObject[] enemyObjList;
	private EnemyGlobalList enemyList;
	private MGUpgrades upgrade;
	private Vector3 yOld;
	private Quaternion rotate;
	private RaycastHit hit;
	private Vector3 forward;
	private bool placed = false;
	private float startTime = 0.0f;
	private float duration = 70.0f;
	private GameObject _currentTarget = null;

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
		enemyObjList = enemyList.EnemyList;

		foreach (GameObject enemy in enemyObjList) {
			distanceToPlayer = Vector3.Distance (enemy.transform.position, turretMG.position);	
			if (distanceToPlayer <= range)
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
	}
	void Start(){
		enemyList = EnemyGlobalList.instance;
		upgrade = MGUpgrades.instance;
	}

	void Update ()
	{
		if (placed) {			
			ObjPosition = new Vector3 (ObjPosition.x, Mathf.Lerp (ObjPosition.y, yOld.y, (Time.time - startTime) / duration), ObjPosition.z);
		}


		if (CurrentTarget == null) {
				rotate = Quaternion.identity;	
		} else {
				rotate = Quaternion.LookRotation (CurrentTargetTransform.position - turretMG.position);	
				FireProjectile ();
		}
		Debug.DrawRay (turretMG.position, forward * range, Color.red);
		turretMG.rotation = Quaternion.Lerp (turretMG.rotation, rotate, Time.deltaTime * rotationDamp);
			
	}

	void FireProjectile ()
	{
		CurrentTarget.GetComponent<Creature>().AddjustCurrentHealth(upgrade.getDamageUpdate(dmgLvl) * Time.deltaTime);

	
	}

	IEnumerator wait ()
	{
			yield return new WaitForSeconds (1);
	}
}

