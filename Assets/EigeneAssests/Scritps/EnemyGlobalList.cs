using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnemyGlobalList : MonoBehaviour {

	public static EnemyGlobalList instance;
	public GameObject[] _enemyListMinion;
	public GameObject[] _enemyListTurret;
	void Start(){
		instance = this;
	}
	void Update(){
		_enemyListMinion = GameObject.FindGameObjectsWithTag("Enemy");
		_enemyListTurret = GameObject.FindGameObjectsWithTag("Turret");
	}
	public GameObject[] EnemyListMinion  {
		get{
			return _enemyListMinion;
		}
	}

	public GameObject[] EnemyListTurret  {
		get{
			return _enemyListTurret;
		}
	}
}
