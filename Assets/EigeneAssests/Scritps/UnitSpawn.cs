using UnityEngine;
using System.Collections.Generic;
using System.Collections;

public class UnitSpawn : MonoBehaviour
{
	public static UnitSpawn instance;
	//Your enemy character prefab (Must have a character controller component)
	public GameObject enemyPrefab;

	//How high above the ground you want your enemy spawned (0 = ground level)
	public float spawnHeightOffset = 0.0f;

	//The minimum distance from the target your enemies will spawn
	public float spawnRadiusMin = 20.0f;

	//The maximum distance from the target your enemies will spawn
	public float spawnRadiusMax = 30.0f;

	//The amount of time between each spawn
	public float spawnDelay = 0.5f;
	public int waveDelay = 30;
	public int waveCounter = 0;

	//Are you using a terrain? Script uses this to calculate how high above the enemy needs to be placed on spawn
	public bool useTerrain = true;
	

	//How tall is your enemy character
	private float enemyHeight;

	//!!!IMPORTANT!!! SEVERAL OF UNITS
	public GameObject[] Units;

	//What is the current wave
	public int curWave = 1;

	//Is the spawn system currently spawning enemies
	private bool isSpawning = false;
	private bool isLastDead = false;

	//The initial maximum number of enemies per wave
	public int maxEnemies = 5;

	//The current enemies in the scene
	public GameObject[] curEnemies;

	//The selected spawn point (Random angle and distance from target)
	private Vector3 spawnPoint;

	void Start ()
	{
		instance = this;
		//Find what the height of the enemy's CharacterContoller component is
		// enemyHeight = enemyPrefab.GetComponent<BoxCollider>().height;
		//Begin the first wave
		if(!PhotonNetwork.isMasterClient){
			enemyHeight=0;
			StartCoroutine (SpawnEnemy ());
		}
	}

	void Update ()
	{
	
		//Check if the script is NOT spawning enemies
		if(!PhotonNetwork.isMasterClient){
			if (!isSpawning) {

				//Check how many enemies are still in the scene
				curEnemies = GameObject.FindGameObjectsWithTag ("Enemy");

				//When there are no more enemies left, increase the current wave
				isLastDead=false;
				if (curEnemies.Length <= 0) {
					isLastDead=true;
					IncreaseWave ();
				}

			}
		}


	}

	IEnumerator SpawnEnemy (){
		//Tell script that we are currently spawning enemies
		isLastDead = false;
		isSpawning = true;

		//Loop until script has spawned the maximum number of enemies for this round
		for (int i = 0; i < maxEnemies; i++) {

			//Delay between spawning
			yield return new WaitForSeconds(spawnDelay);

			//Find a random spawn point
			FindSpawnPoint (Random.Range (spawnRadiusMin, spawnRadiusMax), Random.Range (0, 359));

			//Spawn an enemy at the random spawn point
			GameObject enemyPrefab2 = enemyPrefab;
			GameObject clone;			
			if(PlayerPrefs.GetString("online").Equals("Online")){
				clone = (GameObject)PhotonNetwork.Instantiate ("MachinMinion", spawnPoint, Quaternion.identity,0);
			}else{
				clone = (GameObject)Instantiate (enemyPrefab, spawnPoint, Quaternion.identity);
			}
			isLastDead=false;
			clone.name = "AttackCube" + i;
			curEnemies = GameObject.FindGameObjectsWithTag ("Enemy");
		}
		while (!isLastDead) {
			curEnemies = GameObject.FindGameObjectsWithTag ("Enemy");
			yield return new WaitForSeconds(0);
		

			if(curEnemies.Length<=0){
				isLastDead=true;
			}
		}
		if(isLastDead){	
			for(int i = 0 ; i < waveDelay ; i++){			
				yield return new WaitForSeconds(1);
				waveCounter+=1;
			}
			if(waveCounter>=waveDelay){
				waveCounter=0;
				isLastDead=false;
			}	
			//Tell script that we are finished spawning enemies for this round		
			isSpawning = false;		
		}
	}
	
	IEnumerator Wait(){
		yield return new WaitForSeconds(30);
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

		//Add half of the enemies height to the y value (So that his feet are on the ground, not waist deep)
		spawnPoint.y += (enemyHeight / 2) + spawnHeightOffset;

		//Return the final spawn point
		return spawnPoint;

	}

	void IncreaseWave ()
	{

		//Increase the current wave by 1
		isLastDead=false;
		curWave++;

		//Increase the maximum number of enemies for this wave
		maxEnemies = 5;

		//Start the next wave
		if(!PhotonNetwork.isMasterClient)
			StartCoroutine (SpawnEnemy ());

	}


	void OnGUI ()
	{

		//GUI.Label (new Rect (10, 130, 100, 30), "Wave " + curWave.ToString ());		
		GUI.Label (new Rect (10, 160, 400, 100), waveCounter.ToString());
		GUI.Label (new Rect (10, 190, 400, 100), isLastDead.ToString());
	}
	
}