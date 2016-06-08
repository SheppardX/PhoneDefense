using UnityEngine;
using System.Collections;
[RequireComponent (typeof(MGUpgrades))]
[RequireComponent (typeof(Turret_MG))]

public class DefUpgradeMenu : MonoBehaviour {
	public TextMesh damage;
	public TextMesh health;
	public TextMesh range;
	public TextMesh damageCost;
	public TextMesh healthCost;
	public TextMesh rangeCost;
	public GameObject upgradeMenu;
	public GameObject maincam;
	public GameObject GUIcam;
	public GameObject dmgPlusBtn;
	public GameObject htlPlusBtn;
	public GameObject rgePlusBtn;

	private GameObject lastHitObj;
	private Upgrades lastHitComponent;
	private MGUpgrades upgrades;
	private CameraMovement camMov;
	private int dmgTxt;
	private int healthTxt;
	private int rangeTxt;
	private int dmgCostTxt;
	private int healthCostTxt;
	private int rangeCostTxt;
	private bool upgradeopen;
	private int layerMask = (1<<11)|(1<<10)|(1<<9);
	private float startTime = 0.0f;
	private float duration = 2.0f;
	// Use this for initialization
	public Vector3 CamTran {
		get{
			return maincam.transform.position;
		}
		set{
			maincam.transform.position = value;
		}
	}

	public Vector3 DamageCost {
		get{
			return damageCost.transform.position;
		}
		set{
			damageCost.transform.position = value;
		}
	}
	public Vector3 HealthCost {
		get{
			return healthCost.transform.position;
		}
		set{
			healthCost.transform.position = value;
		}
	}
	public Vector3 RangeCost {
		get{
			return rangeCost.transform.position;
		}
		set{
			rangeCost.transform.position = value;
		}
	}
	public Vector3 UpgradeMenuTran {
		get{
			return upgradeMenu.transform.position;
		}
		set{
			upgradeMenu.transform.position = value;
		}
	}
	public Vector3 DMGPlus {
		get{
			return dmgPlusBtn.transform.position;
		}
		set{
			dmgPlusBtn.transform.position = value;
		}
	}
	public Vector3 HTLPlus {
		get{
			return htlPlusBtn.transform.position;
		}
		set{
			htlPlusBtn.transform.position = value;
		}
	}
	public Vector3 RGEPlus {
		get{
			return rgePlusBtn.transform.position;
		}
		set{
			rgePlusBtn.transform.position = value;
		}
	}

	void Awake () {


	}

	void Start(){		

		upgradeopen = false;
		camMov = maincam.GetComponent<CameraMovement>();
		upgrades = GetComponent<MGUpgrades>();
	}
	
	// Update is called once per frame
	void Update () {
		if(upgradeopen){
			camMov.enabled = false;
			UpgradeMenuTran = new Vector3(Mathf.Lerp(UpgradeMenuTran.x,6.2f,(Time.time - startTime) / duration),UpgradeMenuTran.y,UpgradeMenuTran.z);
			damage.text = dmgTxt.ToString();
			health.text = healthTxt.ToString();
			range.text = rangeTxt.ToString();
			damageCost.text = dmgCostTxt.ToString();
			healthCost.text = healthCostTxt.ToString();
			rangeCost.text = rangeCostTxt.ToString();
		}else{
			camMov.enabled = true;
			UpgradeMenuTran = new Vector3(Mathf.Lerp(UpgradeMenuTran.x,12.39f,(Time.time - startTime) / duration),UpgradeMenuTran.y,UpgradeMenuTran.z);
		}
		//Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began   Input.GetMouseButtonUp(0)
		if (Input.GetMouseButtonUp(0)) {
			Ray ray = GUIcam.camera.ScreenPointToRay(Input.mousePosition);
			Ray rayMain = maincam.camera.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit = new RaycastHit();
			if(Physics.Raycast(ray, out hit, 1000, layerMask)||Physics.Raycast(rayMain, out hit, 1000, layerMask)){
				switch (hit.collider.name) {
				case "Turret_MG":
					if(Input.GetMouseButtonUp(0)){
						upgradeopen = !upgradeopen;					
						lastHitObj = hit.collider.gameObject;
						CamTran = new Vector3(lastHitObj.transform.position.x,CamTran.y,lastHitObj.transform.position.z-15);
						lastHitComponent = hit.collider.GetComponent<Upgrades>();
						upgradeRefresh();
					}
				break;
				case "Turret_Patroit":
					if(Input.GetMouseButtonUp(0)){
						upgradeopen = !upgradeopen;					
						lastHitObj = hit.collider.gameObject;
						CamTran = new Vector3(lastHitObj.transform.position.x,CamTran.y,lastHitObj.transform.position.z-15);
						lastHitComponent = hit.collider.GetComponent<Upgrades>();
						upgradeRefresh();
					}
					break;
				case "DMG+":
					if(Input.GetMouseButtonUp(0)){
						if(lastHitComponent.DamageLvl <= 4 && PlayerStats.instance.money > dmgCostTxt){	
							PlayerStats.instance.money -= dmgCostTxt;
							lastHitComponent.DamageLvl +=1;
							upgradeRefresh();
						}
					}
				break;
				case "HTL+":
					if(Input.GetMouseButtonUp(0)){
						if(lastHitComponent.HealthLvl <= 4 && PlayerStats.instance.money > healthCostTxt){		
							PlayerStats.instance.money -= healthCostTxt;
							lastHitComponent.HealthLvl +=1;
							upgradeRefresh();
						}
					}
					break;
				case "RANGE+":
					if(Input.GetMouseButtonUp(0)){
						if(lastHitComponent.RangeLvl <= 4 && PlayerStats.instance.money > rangeCostTxt){
							PlayerStats.instance.money -= rangeCostTxt;
							lastHitComponent.RangeLvl +=1;
							upgradeRefresh();
						}
					}
					break;
				}
				if(lastHitComponent != null){
					if(lastHitComponent.DamageLvl <= 3){							
						DamageCost = new Vector3(DamageCost.x, DamageCost.y, 8);
						DMGPlus = new Vector3(DMGPlus.x,DMGPlus.y,8);
					}else{
						DamageCost = new Vector3(DamageCost.x, DamageCost.y,11);
						DMGPlus = new Vector3(DMGPlus.x,DMGPlus.y,11);
					}
					if(lastHitComponent.HealthLvl <= 3){							
						HealthCost = new Vector3(HealthCost.x, HealthCost.y, 8);
						HTLPlus = new Vector3(HTLPlus.x,HTLPlus.y,8);
					}else{
						HealthCost = new Vector3(HealthCost.x, HealthCost.y,11);
						HTLPlus = new Vector3(HTLPlus.x,HTLPlus.y,11);
					}
					if(lastHitComponent.RangeLvl <= 3){							
						RangeCost = new Vector3(RangeCost.x, RangeCost.y, 8);
						RGEPlus = new Vector3(RGEPlus.x,RGEPlus.y,8);
					}else{
						RangeCost = new Vector3(RangeCost.x, RangeCost.y,11);
						RGEPlus = new Vector3(RGEPlus.x,RGEPlus.y,11);
					}
				}
			}
		}
	}

	void upgradeRefresh(){
		dmgTxt = upgrades.getDamageUpdate(lastHitComponent.DamageLvl);
		healthTxt = upgrades.getHealthUpdate(lastHitComponent.HealthLvl);
		rangeTxt = upgrades.getRangeUpdate(lastHitComponent.RangeLvl);
		dmgCostTxt = upgrades.getDamageCost(lastHitComponent.DamageLvl+1);
		healthCostTxt = upgrades.getHealthCost(lastHitComponent.HealthLvl+1);
		rangeCostTxt = upgrades.getRangeCost(lastHitComponent.RangeLvl+1);
	}


}
