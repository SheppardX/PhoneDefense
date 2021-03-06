﻿using UnityEngine;
using System.Collections;

public class DefendGUI : MonoBehaviour {
	public GameObject maincam;
	public GameObject GUIcam;
	public GameObject Spawn;
	public GameObject stats;
	public GameObject spielMenu;	
	public GameObject MGIcon;
	public GameObject PatIcon;
	public GameObject menuButton;
	public GameObject discripMenu;
	public TextMesh damage;
	public TextMesh health;
	public TextMesh range;
	public TextMesh discription;
	public TextMesh live;
	public TextMesh wave;
	public TextMesh money;
	
	public GUIStyle font;
	
	public Texture2D[] textures;

	private int layerMask = ~((1<<9)|(1<<8));
	private MGUpgrades upgrades;
	private bool discrptionopen;
	private CameraMovement camMov;
	private string dmgTxt;
	private string healthTxt;
	private string rangeTxt;
	private float startTime = 0.0f;
	private float duration = 58.0f;
	
	private bool toggle= false;

	public Vector3 DiscripMenuTran {
		get{
			return discripMenu.transform.position;
		}
		set{
			discripMenu.transform.position = value;
		}
	}
	public Vector3 SpielMenuTran {
		get{
			return spielMenu.transform.position;
		}
		set{
			spielMenu.transform.position = value;
		}
	}
	void Awake(){
		discrptionopen = false;
	}
	void Start(){
		camMov = maincam.GetComponent<CameraMovement>();
		upgrades = GetComponent<MGUpgrades>();
	}
	
	void Update(){
		if(Turret_Placement.instance.buildPanalOpen){
			camMov.enabled = false;
			menuButton.GetComponent<Renderer>().material.mainTexture = textures[1];
			SpielMenuTran = new Vector3(Mathf.Lerp(SpielMenuTran.x,4.45f,(Time.time - startTime) / duration),SpielMenuTran.y,SpielMenuTran.z);
		}else{
			camMov.enabled = true;
			menuButton.GetComponent<Renderer>().material.mainTexture = textures[0];
			SpielMenuTran = new Vector3(Mathf.Lerp(SpielMenuTran.x,11,(Time.time - startTime) / duration),SpielMenuTran.y,SpielMenuTran.z);
		}
		if(discrptionopen){
			DiscripMenuTran = new Vector3(DiscripMenuTran.x,Mathf.Lerp(DiscripMenuTran.y,-1,(Time.time - startTime) / duration),DiscripMenuTran.z);
			damage.text = dmgTxt;
			health.text = healthTxt;
			range.text = rangeTxt;
		}else{
			DiscripMenuTran = new Vector3(DiscripMenuTran.x,Mathf.Lerp(DiscripMenuTran.y,-3.8f,(Time.time - startTime) / duration),DiscripMenuTran.z);
		}
		//Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began   Input.GetMouseButtonUp(0)
		if (Input.GetMouseButtonUp(0)) {
			Ray ray = GUIcam.GetComponent<Camera>().ScreenPointToRay (Input.mousePosition);
			RaycastHit hit;
			if(Physics.Raycast(ray, out hit, 1000, layerMask)){
				switch (hit.collider.name) {
				case "Spielmenubtn":
					if(Input.GetMouseButtonUp(0)){
						Turret_Placement.instance.buildPanalOpen = !Turret_Placement.instance.buildPanalOpen;
						discrptionopen = false;
						toggle = false;
						MGIcon.GetComponent<Renderer>().material.mainTexture = textures[2];
						Turret_Placement.instance.strucureIndex = 0;
					}
					break;
				case "MGIcon":
					if(Input.GetMouseButtonUp(0)){
						toggle = !toggle;
						if(toggle){
							MGIcon.GetComponent<Renderer>().material.mainTexture = textures[3];
							Turret_Placement.instance.strucureIndex = 1;
							discrptionopen = true;
						}else{
							discrptionopen = false;
							MGIcon.GetComponent<Renderer>().material.mainTexture = textures[2];
							Turret_Placement.instance.strucureIndex = 0;
						}
						dmgTxt = upgrades.getDamageUpdate(0).ToString();
						healthTxt = upgrades.getHealthUpdate(0).ToString();
						rangeTxt = upgrades.getRangeUpdate(0).ToString();
						discription.text ="MG-Nest \nEffektiv gegen \nungepanzerte Ziele.";
					}	
					break;
				case "PatIcon":
					if(Input.GetMouseButtonUp(0)){
						toggle = !toggle;
						if(toggle){
							PatIcon.GetComponent<Renderer>().material.mainTexture = textures[5];
							Turret_Placement.instance.strucureIndex = 2;
							discrptionopen = true;
						}else{
							discrptionopen = false;
							PatIcon.GetComponent<Renderer>().material.mainTexture = textures[4];
							Turret_Placement.instance.strucureIndex = 0;
						}
						dmgTxt = upgrades.getDamageUpdate(0).ToString();
						healthTxt = upgrades.getHealthUpdate(0).ToString();
						rangeTxt = upgrades.getRangeUpdate(0).ToString();
						discription.text ="Patriot Racketensystem \nEffektiv gegen \nFlug und gepanzerte Ziele.";
					}
					break;
				}
			}		
		}
		if(Spawn.GetComponent<UnitSpawn>().enabled)
			wave.text = UnitSpawn.instance.remainWave.ToString ();
			live.text = PlayerStats.instance.setLivePoins.ToString ();
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