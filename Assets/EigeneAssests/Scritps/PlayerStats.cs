using UnityEngine;
using System.Collections;

public class PlayerStats : MonoBehaviour {
	public static PlayerStats instance;
	public Camera AttCam;
	public Camera DefCam;
	private PhotonView view;
	public int setLivePoins = 10;
	public int money;
	public int InComeSek;
	private bool startWave = false;
	// Use this for initialization

	void Start () {
		instance = this;
		view = PhotonView.Get(this);
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
	public void livePointsDmg(){
		if (PlayerPrefs.GetString ("online").Equals ("Online"))
			view.RPC ("livePointsDmgRPC", PhotonTargets.MasterClient);
		else
			setLivePoins--;
	}

	[RPC]
	void livePointsDmgRPC(){
		setLivePoins--;
	}
}