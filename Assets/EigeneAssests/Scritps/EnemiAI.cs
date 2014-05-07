using UnityEngine;
using System.Collections;

public class EnemiAI : MonoBehaviour {
	public Transform player;
	public Vector3[] targetPoints;
	public int targetIndex = 0;
	public float minPlayerDistance = 8.0f;
	public float maxPlayerDistance = 12.0f;
	Creature myCreature;
	Vector3 tp;
	Vector3 tpPlanar;
	Vector3 oldtarget;

	void Start(){
		myCreature = GetComponent<Creature>();	
	}	
	
	void Update () {
		UpdateWalkPath(); 
		if(targetIndex >= targetPoints.Length){
			DestroyObject(gameObject);
		}
		
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
}
