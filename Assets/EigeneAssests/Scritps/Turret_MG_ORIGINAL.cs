using UnityEngine;
using System.Collections;

public class Turret_MG_ORIGINAL : MonoBehaviour
{

		public static Turret_MG_ORIGINAL instance;
		public float rotationDamp = 2.0f;
		public GameObject myProjectile;
		public float reloadTime = 1f;
		public Transform[] muzzlePositions;
		public float range = 60f;
		public float distanceToPlayer;
		public bool hasTarget = false;
		public Transform turretMG;
		public ArrayList enemyList = new ArrayList ();
		public int dmgLvl;
		public int healthLvl;
		public int rangeLvl;
		public int[] dmgArray;
		public int[] healthArray;
		public int[] rangeArray;
		public int[] dmgCost;
		public int[] healthCost;
		public int[] rangeCost;
		public GameObject[] enemyObjList = new GameObject[5];
		private ParticleEmitter emiter;
		private Vector3 yOld;
		private Quaternion rotate;
		private RaycastHit hit;
		private Vector3 forward;
		private Transform objPosition;
		private float nextFireTime = .5f;
		private int layerMask = ~((1 << 10) | (1 << 9));
		private bool placed = false;
		private bool moved = false;
		private float startTime = 0.0f;
		private float duration = 70.0f;
		private GameObject _currentTarget = null;

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
			enemyObjList = GameObject.FindGameObjectsWithTag ("Enemy");
	
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
				dmgLvl = 0;
				healthLvl = 0;
				rangeLvl = 0;
				emiter = GetComponent<ParticleEmitter> ();
				startTime = Time.time;
				placed = true;
				objPosition = transform;		
				yOld = objPosition.position + Turret_Placement.instance.startPos;
		}

		void Update ()
		{
				if (placed) {			
						objPosition.position = new Vector3 (objPosition.position.x, Mathf.Lerp (objPosition.position.y, yOld.y, (Time.time - startTime) / duration), objPosition.position.z);
				}

				GameObject currentTarget = CurrentTarget;

				if (currentTarget == null) {
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
				CurrentTarget.GetComponent<Creature> ().AddjustCurrentHealth (dmgArray [dmgLvl] * Time.deltaTime);

		
		}
	
		IEnumerator wait ()
		{
				yield return new WaitForSeconds (1);
		}


		/**
	void Update () {
		if(placed){			
			objPosition.position = new Vector3(objPosition.position.x,Mathf.Lerp(objPosition.position.y,yOld.y,(Time.time - startTime) / duration),objPosition.position.z);
			StartCoroutine(wait());
		}
		if(myTarget){
			forward = turretMG.TransformDirection(Vector3.forward);
			distanceToPlayer = Vector3.Distance(myTargetTran.position, turretMG.position);
			
			if(distanceToPlayer <= range){
				if(myTarget){
					Vector3 temp = myTargetTran.position;
					rotate = Quaternion.LookRotation(temp - turretMG.position);				
				}
				if(Physics.Raycast(objPosition.position, forward,out hit, range,layerMask)){
					if(hit.collider.gameObject.CompareTag("Enemy")){
						FireProjectile();
					}						
				}
			}
			else{
				rotate = Quaternion.identity;	
			}

			Debug.DrawRay(turretMG.position,forward*range,Color.red);
			turretMG.rotation = Quaternion.Lerp(turretMG.rotation, rotate, Time.deltaTime * rotationDamp);
		}


//		for(int i = 0; i < enemieList.Count; i++){
//			GameObject item = (GameObject)enemieList[i];			
//			if(!item.GetComponent<Creature>().live){
//				if(item.name == myTargetObj.name){
//					enemieList.RemoveAt(i);
//				}
//			}
//		}
//		Debug.Log(enemieList.Count);

	}


	void OnTriggerEnter(Collider other)
	{		

		enemyList.Add(other);

	}


	void OnTriggerStay(Collider other)
	{
		myTarget = null;
		float hirange = float.MaxValue;
		for(int i = 0; i < enemyList.Count ; ++i) {
			if(enemyList[i].Equals(null)){ 
				myTarget = null;
				enemyList.RemoveAt(i);
			}
		}
		foreach (Collider col in enemyList) {	
			GameObject target = col.gameObject;
			Transform targetPos = target.transform;
			if(target.CompareTag("Enemy") && target.GetComponent<Creature>().live==true){
				Vector3 dir = targetPos.position - objPosition.position;
				float dist = dir.magnitude;
				float angle = Vector3.Angle(dir,objPosition.forward);
				if(range <= hirange && angle <= 360){
					hirange = dist;
					myTarget = target;
					myTargetTran = myTarget.transform;
				}
			}
		}
	}
 
	void OnTriggerExit(Collider other)
	{	
		enemyList.Remove(other);
	}


	void FireProjectile(){
		myTarget.GetComponent<Creature>().AddjustCurrentHealth(dmgArray[dmgLvl]*Time.deltaTime);
        
    }



	
	IEnumerator wait() {
		yield return new WaitForSeconds(1);

	}
	**/
}
