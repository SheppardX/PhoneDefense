using UnityEngine;
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
	private CameraMovement camMov;
	private string dmgTxt;
	private string healthTxt;
	private string rangeTxt;
	private bool upgradeopen;
	private int layerMask = (1<<11)|(1<<10)|(1<<9);
	private float startTime = 0.0f;
	private float duration = 8.0f;
	// Use this for initialization
	public Vector3 CamTran {
		get{
			return maincam.transform.position;
		}
		set{
			maincam.transform.position = value;
		}
		}
	void Awake () {

		upgradeopen = false;
		upgradeMenuTran = upgradeMenu.transform;
	}

	void Start(){		
		camMov = maincam.GetComponent<CameraMovement>();
		upgrades = GetComponent<MGUpgrades>();
		dmgTxt = "0";
		healthTxt = "0";
		rangeTxt = "0";
	}
	
	// Update is called once per frame
	void Update () {
		if(upgradeopen){
			camMov.enabled = false;
			upgradeMenuTran.position = new Vector3(Mathf.Lerp(upgradeMenuTran.position.x,5.25f,(Time.time - startTime) / duration),upgradeMenuTran.position.y,upgradeMenuTran.position.z);
			damage.text = dmgTxt;
			health.text = healthTxt;
			range.text = rangeTxt;
		}else{
			camMov.enabled = true;
			upgradeMenuTran.position = new Vector3(Mathf.Lerp(upgradeMenuTran.position.x,13,(Time.time - startTime) / duration),upgradeMenuTran.position.y,upgradeMenuTran.position.z);
		}
		//Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began   Input.GetMouseButton(0)
		if (Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began) {
			Ray ray = GUIcam.camera.ScreenPointToRay(Input.GetTouch (0).position);
			Ray rayMain = maincam.camera.ScreenPointToRay(Input.GetTouch (0).position);
			RaycastHit hit = new RaycastHit();
			if(Physics.Raycast(ray, out hit, 1000, layerMask)||Physics.Raycast(rayMain, out hit, 1000, layerMask)){
				switch (hit.collider.name) {
				case "Floor":
					upgradeopen = false;
					break;
				case "MGTurret":
					if(Input.GetTouch (0).phase == TouchPhase.Began){
						upgradeopen = true;					
						lastHitObj = hit.collider.gameObject;
						CamTran = new Vector3(lastHitObj.transform.position.x,CamTran.y,lastHitObj.transform.position.z-15);
						lastHitComponent = hit.collider.GetComponent<Turret_MG_ORIGINAL>();
						upgradeRefresh();
					}
				break;
				case "DMG+":
					if(Input.GetTouch (0).phase == TouchPhase.Began){
						if(lastHitComponent.dmgLvl < 4 && PlayerStats.instance.money > upgrades.getDamageCost(lastHitComponent.dmgLvl)){
							PlayerStats.instance.money -= upgrades.getDamageCost(lastHitComponent.dmgLvl);
							lastHitComponent.dmgLvl +=1;
							upgradeRefresh();
						}
					}
				break;
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
