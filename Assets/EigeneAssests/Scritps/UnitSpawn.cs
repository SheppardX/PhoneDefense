using UnityEngine;
using System.Collections.Generic;
using System.Collections;

public class UnitSpawn : MonoBehaviour
{
	public static UnitSpawn instance;
	//Your enemy character prefab (Must have a character controller component)
	public GameObject unit;

	//How high above the ground you want your unit spawned (0 = ground level)
	public float spawnHeightOffset = 0.0f;

	//The minimum distance from the target your units will spawn
	public float spawnRadiusMin = 20.0f;

	//The maximum distance from the target your units will spawn
	public float spawnRadiusMax = 30.0f;

	//The amount of time between each spawn
	public float spawnDelay = 0.5f;
	public int waveDelay = 30;
	private int waveCounter = 0;

	//Are you using a terrain? Script uses this to calculate how high above the enemy needs to be placed on spawn
	public bool useTerrain = true;
	//Start of the wave timer
	private bool timerStarted = false;
	//GUI text for wavedelay
	public TextMesh startDelay;
	//How tall is are your units
	private float unitHeight;

	//!!!IMPORTANT!!! SEVERAL OF UNITS
	public string[] Units;

	//What is the current wave
	public int curWave = 1;
	private PhotonView view;
	//Is the spawn system currently spawning units
	private bool isSpawning = false;
	private bool isLastDead = false;
	//The initial maximum number of units per wave
	public int maxUnits = 5;

	//The current units in the scene
	public GameObject[] curUnits;

	//The selected spawn point (Random angle and distance from target)
	private Vector3 spawnPoint;

	void Start ()
	{
		view = PhotonView.Get(this);

		Units = AttackList.instance.UnitsName;
		instance = this;
	}

	void Update ()
	{
		
		//Check if the script is NOT spawning units
		if(!PhotonNetwork.isMasterClient){
			if (!isSpawning) {

				//Check how many units are still in the scene
				curUnits = GameObject.FindGameObjectsWithTag ("Enemy");

				//When there are no more units left, increase the current wave
				isLastDead=false;
				if (curUnits.Length <= 0 && !timerStarted) {
					isLastDead=true;
					StartCoroutine (Timer ());
					timerStarted = true;
				}

			}
		}


	}

	IEnumerator SpawnEnemy (){
		//Tell script that we are currently spawning units
		isLastDead = false;
		isSpawning = true;

		//Loop until script has spawned the maximum number of units for this round
		for (int i = 0; i < maxUnits; i++) {

			//Delay between spawning
			yield return new WaitForSeconds(spawnDelay);

			//Find a random spawn point
			FindSpawnPoint (Random.Range (spawnRadiusMin, spawnRadiusMax), Random.Range (0, 359));

			//Spawn an enemy at the random spawn point
			GameObject enemyPrefab2 = unit;
			GameObject clone;			
			if(PlayerPrefs.GetString("online").Equals("Online")){
				clone = (GameObject)PhotonNetwork.Instantiate (Units[i], spawnPoint, Quaternion.identity,0);
			}else{
				clone = (GameObject)Instantiate (unit, spawnPoint, Quaternion.identity);
			}
			isLastDead=false;
			clone.name = "AttackCube" + i;
			curUnits = GameObject.FindGameObjectsWithTag ("Enemy");
		}
		while (!isLastDead) {
			curUnits = GameObject.FindGameObjectsWithTag ("Enemy");
			yield return new WaitForSeconds(0);
		

			if(curUnits.Length<=0){
				isLastDead=true;
			}
		}
		if(isLastDead){	
			StopCoroutine("SpawnEnemy");
			isSpawning = false;	
			timerStarted = false;
		}
	}

	IEnumerator Timer(){
		if(isLastDead){	
			waveCounter = waveDelay;
			for(int i = waveDelay+1 ; i > 0 ; --i){			
				yield return new WaitForSeconds(1);
				waveCounter-=1;
				if(PlayerPrefs.GetString("side").Equals("Defense")||PlayerPrefs.GetString("online").Equals("Offline")){
					startDelay.text ="Angriff kommt in "+waveCounter;
					if(PlayerPrefs.GetString("online").Equals("Online"))
					   view.RPC("AttackTimer",PhotonTargets.All,waveCounter,startDelay.text);
				}
				else if(PlayerPrefs.GetString("side").Equals("Attack"))
					startDelay.text ="Zug fährt ab in "+waveCounter+" Sek";
			}			
			if(waveCounter<=0){
				waveCounter=0;
				startDelay.text ="";				
				if(PlayerPrefs.GetString("online").Equals("Online"))
					view.RPC("AttackTimer",PhotonTargets.All,waveCounter,startDelay.text);
				isLastDead=false;
				StartCoroutine(SpawnEnemy());
				StopCoroutine("Timer");
			}
		}
	}
	public void startWave (){
		if(isLastDead){
			waveCounter=0;
			isLastDead = false;
			isSpawning = false;	
		}
	}

	Vector3 FindSpawnPoint (float spawnRadius, int angleInDegrees)
	{

		//find a random point on the circumference of a circle, with random radius from target between specified min / max distance
		float pointX = (spawnRadius * Mathf.Cos (angleInDegrees * Mathf.PI / 180.0f)) + transform.position.x;
		float pointZ = (spawnRadius * Mathf.Sin (angleInDegrees * Mathf.PI / 180.0f)) + transform.position.z;

		//Set the spawn point into a Vector3
		spawnPoint = new Vector3 (pointX, 0.0f, pointZ);

		//Are we using a terrain?
		if (useTerrain) {

			//Adjust the spawn points y value to account for terrain relief
			spawnPoint.y = Terrain.activeTerrain.SampleHeight (spawnPoint);

		}

		//Add half of the units height to the y value (So that his feet are on the ground, not waist deep)
		spawnPoint.y += (unitHeight / 2) + spawnHeightOffset;

		//Return the final spawn point
		return spawnPoint;

	}

	[RPC]
	void AttackTimer(int timer, string startdelay){
		waveCounter = timer;
		startDelay.text = startdelay;
	}

	void OnGUI ()
	{

		//GUI.Label (new Rect (10, 130, 100, 30), "Wave " + curWave.ToString ());		
		//GUI.Label (new Rect (10, 160, 400, 100), waveCounter.ToString());
		//GUI.Label (new Rect (10, 190, 400, 100), isLastDead.ToString());
	}
	
}