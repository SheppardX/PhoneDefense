using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class MultiplayerManager : MonoBehaviour {

	public static MultiplayerManager instance;
	
	public string PlayerName="Player";	
	private int MatchMaxUser =2;

	public List<MapSettings> MapList = new List<MapSettings>();

	public MapSettings currentMap = null;
	public short oldprefix;
	public bool isMatchStarted = false;
	public PhotonView pv;


	void Start(){
		instance = this;
		PlayerName = PlayerPrefs.GetString("PlayerName");
		currentMap = MapList[0];
		pv = PhotonView.Get(this);
	}

	void FixedUpdate(){
		instance = this;
	}

	public void StartServer(string serverName,string serverPassword){
		PhotonNetwork.CreateRoom (serverName,true,true,MatchMaxUser);
		//Network.InitializeSecurity ();
	}
	

	public void saveSettings(){
		pv.RPC ("Client_GetMultiplayerMatchSettings", PhotonTargets.All,currentMap.MapName,currentMap.budget,currentMap.inComeSec);

	}

	void OnPhotonPlayerConnected(PhotonPlayer playerConnected){
		pv.RPC ("Client_GetMultiplayerMatchSettings", playerConnected,currentMap.MapName,currentMap.budget,currentMap.inComeSec);
	}



	[RPC]
	void Client_GetMultiplayerMatchSettings(string map, int bugdet, int inComeSec){		
		PlayerPrefs.SetInt("InCome",inComeSec);
		PlayerPrefs.SetInt("Budget",bugdet);
		currentMap = GetMap(map);
		currentMap.budget = bugdet;
		currentMap.inComeSec = inComeSec;
		MainMenu.instance.budget = ""+currentMap.budget;
		MainMenu.instance.InCome = ""+currentMap.inComeSec;
	}

	[RPC]
	void Client_LoadMultiplayerMap(string map){
		//PhotonNetwork.SetLevelPrefix(prefix);
		//Application.LoadLevel(map);
		PhotonNetwork.LoadLevel(map);
	}

	public MapSettings GetMap(string name){
		MapSettings get = null;
		foreach(MapSettings st in MapList){
			if (st.MapName == name){
				get = st;
				break;
			}
		}
		return get;
	}
}


[System.Serializable]
public class MapSettings{
	public string MapName;
	public string MapLoadName;
	public Texture MapLoadTexture;
	public int budget =0;
	public int inComeSec = 0;
}
