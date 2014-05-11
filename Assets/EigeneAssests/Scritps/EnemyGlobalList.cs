using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnemyGlobalList : MonoBehaviour {

	public static EnemyGlobalList instance;
	public GameObject[] _enemyList;

	void Start(){
		instance = this;
	}
	void Update(){
		_enemyList = GameObject.FindGameObjectsWithTag("Enemy");
	}
	public GameObject[] EnemyList  {
		get{
			return _enemyList;
		}
	}
}
