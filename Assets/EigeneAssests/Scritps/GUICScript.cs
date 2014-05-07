﻿using UnityEngine;
using System.Collections;





public class GUICScript : MonoBehaviour {
	
	public GameObject maincam;
	public GameObject GUIcam;
	public GameObject Spawn;
	public GameObject stats;
	public GameObject spielMenu;	
	public GameObject MGIcon;
	public GameObject menuButton;
	public GameObject settingsButton;


	public TextMesh live;
	public TextMesh wave;
	public TextMesh money;
	
	public GUIStyle font;
	
	public Texture2D[] textures;

	private int layerMask = ~((1<<9)|(1<<8));
	private Transform statsTran;
	private Transform spielMenuTran;	
	private Transform MGIconTran;
	private Transform menuButtonTran;
	private Transform settingsButtonTran;
	
	private CameraMovement camMov;
	
	private float startTime = 0.0f;
	private float duration = 58.0f;
	
	private bool toggle= false;
	
	void Start(){
		camMov = maincam.GetComponent<CameraMovement>();
		menuButtonTran = menuButton.transform;
		spielMenuTran = spielMenu.transform;
		MGIconTran = MGIcon.transform;
		if(!PhotonNetwork.isMasterClient&&PlayerPrefs.GetString("online").Equals("Online")){
			GUIcam.camera.enabled = false;
		}
	}
	
	void Update(){
		if(Turret_Placement.instance.buildPanalOpen){
			menuButtonTran.position = new Vector3(Mathf.Lerp(menuButtonTran.position.x,1,(Time.time - startTime) / duration),menuButtonTran.position.y,menuButtonTran.position.z);
			menuButton.renderer.material.mainTexture = textures[1];
			spielMenuTran.position = new Vector3(Mathf.Lerp(spielMenuTran.position.x,4,(Time.time - startTime) / duration),spielMenuTran.position.y,spielMenuTran.position.z);
			MGIconTran.position = new Vector3(Mathf.Lerp(MGIconTran.position.x,3.2f,(Time.time - startTime) / duration),MGIconTran.position.y,MGIconTran.position.z);
		}else{
			menuButtonTran.position = new Vector3(Mathf.Lerp(menuButtonTran.position.x,8,(Time.time - startTime) / duration),menuButtonTran.position.y,menuButtonTran.position.z);
			menuButton.renderer.material.mainTexture = textures[0];
			spielMenuTran.position = new Vector3(Mathf.Lerp(spielMenuTran.position.x,11,(Time.time - startTime) / duration),spielMenuTran.position.y,spielMenuTran.position.z);
			MGIconTran.position = new Vector3(Mathf.Lerp(MGIconTran.position.x,10.2f,(Time.time - startTime) / duration),MGIconTran.position.y,MGIconTran.position.z);
		}
		if (Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began) {
			Ray ray = GUIcam.camera.ScreenPointToRay (Input.mousePosition);
			RaycastHit hit;
			if(Physics.Raycast(ray, out hit, 1000, layerMask)){
				if(hit.collider.name.Equals("Spielmenubtn")){
						if(Input.GetTouch (0).phase == TouchPhase.Began){
						Turret_Placement.instance.buildPanalOpen = !Turret_Placement.instance.buildPanalOpen;
						MGIcon.renderer.material.mainTexture = textures[2];
						Turret_Placement.instance.strucureIndex = 0;
					}
				}
				if(hit.collider.name.Equals("MGIcon")){
					if(Input.GetTouch (0).phase == TouchPhase.Began){
						toggle = !toggle;
						if(toggle){
							MGIcon.renderer.material.mainTexture = textures[3];
							Turret_Placement.instance.strucureIndex = 1;
						}else{
							MGIcon.renderer.material.mainTexture = textures[2];
							Turret_Placement.instance.strucureIndex = 0;
						}
					}	
				}
			}		
		}
		if(Spawn.GetComponent<UnitSpawn>().enabled)
			wave.text = UnitSpawn.instance.curWave.ToString ();
		live.text = PlayerStats.instance.livePoints.ToString ();
		money.text = PlayerStats.instance.money.ToString ();

		}
	
}








/**
public class GUICScript : MonoBehaviour {
	
	public GameObject maincam;
	public Texture2D stats;
	public Texture2D spielMenu;	
	public GUISkin MGIcon;
	private bool firstToggle = false; 
	public GUIStyle menuButton;
	public GUIStyle menuButtonClose;
	public GUIStyle settingsButton;
	private float menuRect=1170;
	public GUIStyle font;
	private float spielMenuRect=1080 ;
	private float MGIconRect=1200 ;
	private float slide = 0;
	private float startTime = 0.0f;
	private float duration = 3.0f;
	private CameraMovement camMov;
	void Start(){
		camMov = maincam.GetComponent<CameraMovement>();
	}
	void Update(){
		if(Turret_Placement.buildPanalOpen){
			menuRect = Mathf.Lerp(menuRect,600,(Time.time - startTime) / duration);
			spielMenuRect = Mathf.Lerp(spielMenuRect,530,(Time.time - startTime) / duration);
			MGIconRect = Mathf.Lerp(MGIconRect,794,(Time.time - startTime) / duration);
		}else{
			menuRect = Mathf.Lerp(menuRect,1170,(Time.time - startTime) / duration);
			spielMenuRect = Mathf.Lerp(spielMenuRect,1080,(Time.time - startTime) / duration);
			MGIconRect = Mathf.Lerp(MGIconRect,1200,(Time.time - startTime) / duration);
		}
	}
	
	void OnGUI(){
		if(PhotonNetwork.isMasterClient){
			slide += Time.deltaTime;
			GUISizer.BeginGUI();
			GUI.DrawTexture(new Rect(160, -70, stats.width, stats.height), stats);
			GUI.Label (new Rect (380, 15, 100, 30), "" + UnitSpawn.curWave.ToString(),font);
			GUI.Label (new Rect (680, 15, 100, 30), ""+PlayerStats.LivePoints,font);
			GUI.Label (new Rect (880, 15, 100, 30), ""+PlayerStats.Money,font);
			GUI.DrawTexture(new Rect(spielMenuRect,530, spielMenu.width, spielMenu.height), spielMenu);
			if(!Turret_Placement.buildPanalOpen){
				if(GUI.Button(new Rect(menuRect,600, menuButton.fixedWidth, menuButton.fixedHeight),"", menuButton)){	
					startTime = Time.time;
					Turret_Placement.buildPanalOpen = true;	
					camMov.enabled = false;
					Turret_Placement.strucureIndex=0;
					firstToggle = false;
				}
			}else{
				if(GUI.Button(new Rect(menuRect,600, menuButtonClose.fixedWidth, menuButtonClose.fixedHeight),"", menuButtonClose)){	
					startTime = Time.time;		
					Turret_Placement.buildPanalOpen = false;
					camMov.enabled = true;
				}
				this.firstToggle = GUI.Toggle(new Rect(MGIconRect,608,MGIcon.customStyles[0].fixedWidth,MGIcon.customStyles[0].fixedHeight), this.firstToggle, "", MGIcon.customStyles[0]);
				if(firstToggle){
					Turret_Placement.strucureIndex=1;
					
				}else{
					Turret_Placement.strucureIndex=0;
				}
			}
			if(GUI.Button(new Rect(0, 660, settingsButton.fixedWidth, settingsButton.fixedHeight),"", settingsButton)){
				
			}			
			GUISizer.EndGUI();
		}
		else{

		}
	}
	
}
**/