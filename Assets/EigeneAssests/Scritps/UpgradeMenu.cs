﻿using UnityEngine;
using System.Collections;
[RequireComponent (typeof(MGUpgrades))]
[RequireComponent (typeof(Turret_MG_ORIGINAL))]
public class UpgradeMenu : MonoBehaviour {
	public TextMesh damage;
	public TextMesh health;
	public TextMesh range;
	public GameObject upgradeMenu;
	public GameObject maincam;
	public GameObject GUIcam;
	private GameObject lastHitObj;
	private Turret_MG_ORIGINAL lastHitComponent;
	private Transform upgradeMenuTran;
	private MGUpgrades upgrades;
	private string dmgTxt;
	private string healthTxt;
	private string rangeTxt;
	private bool upgradeopen;
	private int layerMask = (1<<11)|(1<<10);
	private float startTime = 0.0f;
	private float duration = 8.0f;
	// Use this for initialization

	void Awake () {

		upgradeopen = false;
		upgradeMenuTran = upgradeMenu.transform;
	}
	void Start(){		
		upgrades = GetComponent<MGUpgrades>();
		dmgTxt = "0";
		healthTxt = "0";
		rangeTxt = "0";
	}
	
	// Update is called once per frame
	void Update () {
		if(upgradeopen){
			upgradeMenuTran.position = new Vector3(Mathf.Lerp(upgradeMenuTran.position.x,5.25f,(Time.time - startTime) / duration),upgradeMenuTran.position.y,upgradeMenuTran.position.z);
			damage.text = dmgTxt;
			health.text = healthTxt;
			range.text = rangeTxt;
		}else
			upgradeMenuTran.position = new Vector3(Mathf.Lerp(upgradeMenuTran.position.x,13,(Time.time - startTime) / duration),upgradeMenuTran.position.y,upgradeMenuTran.position.z);
		//Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began   Input.GetMouseButton(0)
		if (Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began) {
			Ray ray = GUIcam.camera.ScreenPointToRay(Input.GetTouch (0).position);
			Ray rayMain = maincam.camera.ScreenPointToRay(Input.GetTouch (0).position);
			RaycastHit hit = new RaycastHit();
			if(Physics.Raycast(ray, out hit, 1000, layerMask)||Physics.Raycast(rayMain, out hit, 1000, layerMask)){
				if(hit.collider.name.Equals("MGTurret")){
					if(Input.GetTouch (0).phase == TouchPhase.Began){
						upgradeopen = !upgradeopen;
						lastHitObj = hit.collider.gameObject;
						lastHitComponent = hit.collider.GetComponent<Turret_MG_ORIGINAL>();
						upgradeRefresh();
					}
				}

				if(hit.collider.name.Equals("+")){
					if(Input.GetTouch (0).phase == TouchPhase.Began){
						if(lastHitComponent.dmgLvl < 4 && PlayerStats.instance.money > upgrades.getDamageCost(lastHitComponent.dmgLvl)){
							PlayerStats.instance.money -= upgrades.getDamageCost(lastHitComponent.dmgLvl);
							lastHitComponent.dmgLvl +=1;
							upgradeRefresh();
						}
					}
				}
			}
		}
	}

	void upgradeRefresh(){
		dmgTxt = upgrades.getDamageUpdate(lastHitComponent.dmgLvl).ToString();
		healthTxt = upgrades.getHealthUpdate(lastHitComponent.healthLvl).ToString();
		rangeTxt = upgrades.getRangeUpdate(lastHitComponent.rangeLvl).ToString();
	}
}
