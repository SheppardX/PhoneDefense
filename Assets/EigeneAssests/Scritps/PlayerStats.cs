using UnityEngine;
using System.Collections;

public class PlayerStats : MonoBehaviour {
	public static PlayerStats instance;
	public Camera AttCam;
	public Camera DefCam;

	public int setLivePoins = 10;
	public int money;
	public int livePoints;
	public int InComeSek;
	public TextMesh startdelay;
	public int waveDelay = 30;
	public int waveCounter = 0;
	public GameObject Spawn;
	// Use this for initialization
	void Start () {
		instance = this;
		waveCounter = waveDelay;
		livePoints = livePoints;
		money = PlayerPrefs.GetInt("Budget");
		InComeSek = PlayerPrefs.GetInt("InCome");
		StartCoroutine(startTimer ());
		if(PhotonNetwork.isMasterClient && PlayerPrefs.GetString("online").Equals("Online")||PlayerPrefs.GetString("online").Equals("Offline")){
			AttCam.camera.enabled = false;			
			GetComponent<AttackGUI>().enabled = false;
		}
		else{
			DefCam.camera.enabled = false;
			GetComponent<DefendGUI>().enabled = false;
		}
	}

	void Update(){

	}

	IEnumerator delay() {		
		while(true){
			yield return new WaitForSeconds(5);
			money += InComeSek;
			delay();
		}
	}

	IEnumerator startTimer() {	
		for(int i = waveDelay+1 ; i > 0 ; i--){			
			yield return new WaitForSeconds(1);
			waveCounter-=1;
			startdelay.text ="Welle kommt in \n "+waveCounter;
			if(waveCounter<=0){
				startdelay.text ="GOO!!!";
			}
		}

		if(waveCounter<=0){
			Spawn.GetComponent<UnitSpawn>().enabled = true;
			DestroyObject(startdelay);
		}	


		StartCoroutine(delay ());
	}

}