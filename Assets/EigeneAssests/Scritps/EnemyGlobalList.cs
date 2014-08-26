using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class EnemyGlobalList : MonoBehaviour {
	// Singelton Object da es nur einmal im gesamten Projekt gebraucht wird
	public static EnemyGlobalList instance;
	public GameObject[] _enemyListMinion;
	public GameObject[] _enemyListTurret;
	//erzeugt eine Instance von sich
	void Start(){
		instance = this;
	}
	//Fragt jedem Frame nach GameObjecte mit dem Tag Enemy oder Turret ab
	void Update(){
		_enemyListMinion = GameObject.FindGameObjectsWithTag("Enemy");
		_enemyListTurret = GameObject.FindGameObjectsWithTag("Turret");
	}
	//Gibt die jeweilige Liste zurück
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
