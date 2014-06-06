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
	private bool startWave = false;
	// Use this for initialization

	void Start () {
		instance = this;
		livePoints = livePoints;
		money = PlayerPrefs.GetInt("Budget");
		InComeSek = PlayerPrefs.GetInt("InCome");
		if(PhotonNetwork.isMasterClient && PlayerPrefs.GetString("online").Equals("Online")||PlayerPrefs.GetString("online").Equals("Offline")){
			AttCam.camera.enabled = false;			
			GetComponent<AttackGUI>().enabled = false;		
		}
		else{			
			DefCam.camera.enabled = false;
			GetComponent<DefendGUI>().enabled = false;		
		}
	}


}