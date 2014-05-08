using UnityEngine;
using System.Collections;

public class UpgradeMenu : MonoBehaviour {
	public TextMesh damage;
	public TextMesh health;
	public TextMesh range;
//	public GameObject upgradePlus;
	public GameObject upgradeMenu;
	public GameObject maincam;
	public GameObject GUIcam;

	private GameObject lastHitObj;
	private Transform upgradeMenuTran;
	//private Transform damageTran;
	//private Transform healthTran;
	//private Transform rangeTran;
	//private Transform plusTran;

	private string dmgTxt;
	private string healthTxt;
	private string rangeTxt;
	private bool upgradeopen;
	private int layerMask = (1<<11)|(1<<10);
	private float startTime = 0.0f;
	private float duration = 8.0f;
	// Use this for initialization
	void Start () {
		upgradeopen = false;
		dmgTxt = "0";
		healthTxt = "0";
		rangeTxt = "0";
		upgradeMenuTran = upgradeMenu.transform;
	//	damageTran = damage.transform;
	//	healthTran = health.transform;
	//	rangeTran = range.transform;
	//	plusTran = upgradePlus.transform;
	}
	
	// Update is called once per frame
	void Update () {
		if(upgradeopen){
			upgradeMenuTran.position = new Vector3(Mathf.Lerp(upgradeMenuTran.position.x,5.25f,(Time.time - startTime) / duration),upgradeMenuTran.position.y,upgradeMenuTran.position.z);
	//		damageTran.position = new Vector3(Mathf.Lerp(damageTran.position.x,1,(Time.time - startTime) / duration),damageTran.position.y,damageTran.position.z);
	//		healthTran.position = new Vector3(Mathf.Lerp(healthTran.position.x,1,(Time.time - startTime) / duration),healthTran.position.y,healthTran.position.z);
	//		rangeTran.position = new Vector3(Mathf.Lerp(rangeTran.position.x,1,(Time.time - startTime) / duration),rangeTran.position.y,rangeTran.position.z);

		}else
			upgradeMenuTran.position = new Vector3(Mathf.Lerp(upgradeMenuTran.position.x,13,(Time.time - startTime) / duration),upgradeMenuTran.position.y,upgradeMenuTran.position.z);

		if (Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began) {
			Ray ray = GUIcam.camera.ScreenPointToRay(Input.mousePosition);
			Ray rayMain = maincam.camera.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit = new RaycastHit();
			if(Physics.Raycast(ray, out hit, 1000, layerMask)||Physics.Raycast(rayMain, out hit, 1000, layerMask)){
				if(hit.collider.name.Equals("MGTurret")){
					if(Input.GetTouch (0).phase == TouchPhase.Began){
						upgradeopen = !upgradeopen;
						lastHitObj = hit.collider.gameObject;
						dmgTxt = hit.collider.GetComponent<Turret_MG_ORIGINAL>().dmgArray[hit.collider.GetComponent<Turret_MG_ORIGINAL>().dmgLvl].ToString();
						healthTxt = hit.collider.GetComponent<Turret_MG_ORIGINAL>().healthArray[hit.collider.GetComponent<Turret_MG_ORIGINAL>().healthLvl].ToString();
						rangeTxt = hit.collider.GetComponent<Turret_MG_ORIGINAL>().rangeArray[hit.collider.GetComponent<Turret_MG_ORIGINAL>().rangeLvl].ToString();
					}
				}

				if(hit.collider.name.Equals("+")){
					if(Input.GetTouch (0).phase == TouchPhase.Began){
						if(lastHitObj.GetComponent<Turret_MG_ORIGINAL>().dmgLvl < 4 && PlayerStats.instance.money > lastHitObj.GetComponent<Turret_MG_ORIGINAL>().dmgCost[lastHitObj.GetComponent<Turret_MG_ORIGINAL>().dmgLvl]){
							PlayerStats.instance.money -= lastHitObj.GetComponent<Turret_MG_ORIGINAL>().dmgCost[lastHitObj.GetComponent<Turret_MG_ORIGINAL>().dmgLvl];
							lastHitObj.GetComponent<Turret_MG_ORIGINAL>().dmgLvl +=1;
						}
					}
				}
			}
		}
		damage.text = dmgTxt;
		health.text = healthTxt;
		range.text = rangeTxt;
	}
}
