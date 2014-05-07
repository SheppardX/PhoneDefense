using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Text.RegularExpressions;

public class MainMenu : MonoBehaviour {
	private string auswahl = "mainmenu";
	public string budget = "100";	
	private int budgetINT = 0;	
	public string InCome = "5";	
	private int InComeInt = 0;	
	private string channelName = "Min 3 zeichen";	
	private string channelPassword = "";
	private HostData[] hostList;
	private int selectedServer;
	private Vector2 ScrollLobby = Vector2.zero;
	private Vector2 ScrollMap = Vector2.zero;
	private Vector2 ScrollServerList = Vector2.zero;
	public Rect windowRect;
	public GUISkin myskin = null;	
	public static MainMenu instance;
	private RoomInfo[] game;
	// Use this for initialization
	void Start () {
		instance = this;
		windowRect = new Rect(-5, -5, Screen.width+10, Screen.height+10);
	}

	void FixedUpdate(){
		instance = this;
	}

	void OnGUI() {
		GUI.skin = myskin;
		windowRect = GUI.Window(0, windowRect, drawWindow, "PhoneDefense");
	}
	
	void drawWindow(int windowID) {    		
		GUI.skin.button.fontSize = 40;
		GUI.skin.label.fontSize = 20;
		GUI.skin.textField.fontSize = 30;
		switch (auswahl) {
		case "mainmenu":
			GUILayout.BeginArea(new Rect (10,250, 400, 500));
			GUI.Label(new Rect (0,0,150,50),"Spieler Name: ");
			MultiplayerManager.instance.PlayerName = GUI.TextField(new Rect(155,0,150,50),MultiplayerManager.instance.PlayerName);
			if(MultiplayerManager.instance.PlayerName != null && !PlayerPrefs.GetString("PlayerName").Equals(MultiplayerManager.instance.PlayerName)){
				PlayerPrefs.SetString("PlayerName",MultiplayerManager.instance.PlayerName);
				Debug.Log("Saved");
			}
			if(GUI.Button(new Rect (0,55, 300, 50),"Einzel Spieler")){

				auswahl = "levelselection";
			}
			if(GUI.Button(new Rect (0,110, 300, 50),"Mutliplayer")){
				PhotonNetwork.ConnectUsingSettings("PhoneDefense");
				game = PhotonNetwork.GetRoomList();
				PhotonNetwork.playerName = MultiplayerManager.instance.PlayerName;
			}
			if(GUI.Button(new Rect (0,165, 300, 50),"Credits")){}
			if(GUI.Button(new Rect (0,220, 300, 50),"Beenden")){Application.Quit();}
			GUILayout.EndArea();
			break;			
		case "levelselection":
			GUILayout.BeginArea(new Rect (10,250, Screen.width, 500));
			if(GUI.Button(new Rect(0,0,450,50),"Geschlängelte Systeme")){
				PlayerPrefs.SetString("online","Offline");
				PlayerPrefs.SetInt("Budget",100);
				PlayerPrefs.SetInt("InCome",3);
				Application.LoadLevel("Geschlängelte_Systeme");
			}
			if(GUI.Button(new Rect(0,110,300,50),"Zurück")){auswahl = "mainmenu";}
			GUILayout.EndArea();
			break;
		case "multiplayer":
			GUILayout.BeginArea(new Rect (10,250, Screen.width, 500));
			GUI.skin.button.fontSize = 30;			
			GUI.Label(new Rect (0,0,100,50),"Server Name:");
			GUI.Label(new Rect (0,55,100,50),"Server Passwort:");
			channelName = GUI.TextField(new Rect(105,0,200,50),channelName);
			channelPassword = GUI.PasswordField(new Rect(105,55,200,50),channelPassword,'*');
			if(GUI.Button(new Rect(0,110,300,50),"Verteidige")){
				if(channelName.Length >= 3)
					MultiplayerManager.instance.StartServer(channelName,channelPassword);

			}
			//if(GUI.Button(new Rect(0,165,300,50),"Greif an")) {
				//game = PhotonNetwork.GetRoomList();
			//}
			if(GUI.Button(new Rect(0,220,300,50),"Zurück")){auswahl = "mainmenu";}
			GUILayout.EndArea();
			GUILayout.BeginArea(new Rect(Screen.width-450,100,400,550),"Server / Spieler","Box");
			ScrollServerList = GUILayout.BeginScrollView(ScrollServerList,GUILayout.MaxWidth(400));
			GUILayout.Space(20);

			int _a = 0;
			foreach(RoomInfo game in PhotonNetwork.GetRoomList()){
				GUILayout.BeginHorizontal("Box");
				GUILayout.Label(game.name +" "+game.playerCount+"/"+game.maxPlayers);
				if(GUI.Button(new Rect(170,25+(40*_a),200,30),"Connect")){
					PhotonNetwork.JoinRoom(game.name);
					_a++;
				}
				GUILayout.EndHorizontal();
			}
			GUILayout.EndScrollView();
			GUILayout.EndArea();
			break;
		case "Lobby":
			GUILayout.BeginArea(new Rect(10,250,Screen.width/2-300,Screen.height));
			ScrollLobby = GUILayout.BeginScrollView(ScrollLobby,GUILayout.MaxWidth(200));
			foreach(PhotonPlayer pl in PhotonNetwork.playerList){
				GUILayout.Box(pl.name);
			}
			GUILayout.EndScrollView();
			if(GUI.Button(new Rect(0,220,300,50),"Zurück")){
				PhotonNetwork.LeaveRoom();
				auswahl = "multiplayer";
			}
			GUILayout.EndArea();

			GUILayout.BeginArea(new Rect(Screen.width/2-300,250,Screen.width/2,500));
				GUILayout.Label("Wähle Schlachtfeld : ");
				GUI.Box(new Rect (205,0,200,30), MultiplayerManager.instance.currentMap.MapLoadName);
			if(PhotonNetwork.isMasterClient){
					ScrollMap = GUILayout.BeginScrollView(ScrollMap,GUILayout.MaxWidth(500));
					foreach(MapSettings mapset in MultiplayerManager.instance.MapList){
						if(GUILayout.Button(mapset.MapName)){
							MultiplayerManager.instance.currentMap = mapset;
						}
					}
					GUILayout.EndScrollView();
				}
			GUILayout.EndArea();
			GUILayout.BeginArea(new Rect(Screen.width/2+250,250,400,600));
			GUILayout.Label("Map Settings");
			GUILayout.Space(30);
			GUI.Label(new Rect(0,55,100,50),"Bugdet(25-1000000 :");
			GUI.Label(new Rect(0,110,125,50),"Einkommen/sek(1-10) :");
			budget = GUI.TextField(new Rect(130,55,200,50),budget);
			budget = Regex.Replace(budget, "[^0-9]", "");
			InCome = GUI.TextField(new Rect(130,110,200,50),InCome);
			InCome = Regex.Replace(InCome, "[^0-9]", "");
			if(PhotonNetwork.isMasterClient == true){
				if(GUI.Button(new Rect(0,250,400,50),"Einstellung Speichern")){
					if(budget != null)
						budgetINT = int.Parse(budget);
					if(InCome!= null)
						InComeInt = int.Parse(InCome);

					if(budgetINT >= 25 && budgetINT <= 1000){
						MultiplayerManager.instance.currentMap.budget = budgetINT;
						PlayerPrefs.SetInt("Budget",budgetINT);
					}
					else {
						budget = "1000";
						budgetINT = int.Parse(budget);
						MultiplayerManager.instance.currentMap.budget = budgetINT;
						PlayerPrefs.SetInt("Budget",budgetINT);
					}

					if(InComeInt >= 1 && InComeInt <= 10){
						MultiplayerManager.instance.currentMap.inComeSec = InComeInt;
						PlayerPrefs.SetInt("InCome",InComeInt);
					}
					else {
						InCome = "10";
						InComeInt = int.Parse(InCome);
						MultiplayerManager.instance.currentMap.inComeSec = InComeInt;
						PlayerPrefs.SetInt("InCome",InComeInt);
					}
					MultiplayerManager.instance.saveSettings();
				}

				if(GUI.Button(new Rect(0,305,400,50),"Start")){
					MultiplayerManager.instance.pv.RPC ("Client_LoadMultiplayerMap",PhotonTargets.All, MultiplayerManager.instance.currentMap.MapLoadName);
					//MultiplayerManager.instance.oldprefix += 1;
					MultiplayerManager.instance.isMatchStarted = true;
				}
			}
			GUILayout.EndArea();
			
			break;
		default:
			break;
			
		}       
	}

	void OnCreatedRoom(){
		auswahl="Lobby";
	}
	void OnPhotonPlayerConnected(PhotonPlayer playerConnected){

	}
	void OnJoinedLobby(){		
		auswahl ="multiplayer";
		PlayerPrefs.SetString("online","Online");
	}
	void OnJoinedRoom(){
		PhotonNetwork.automaticallySyncScene = true;
		auswahl="Lobby";
	}

	void OnPhotonCreateGameFailed(){
	}

	void OnFailedToConnect(NetworkConnectionError error){
		channelName =""+error;
	}

}