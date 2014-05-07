using UnityEngine;
using System.Collections;

public class UpgradeMenu : MonoBehaviour {
	public TextMesh damage;
	public GameObject maincam;
	public GameObject GUIcam;
	private GameObject lastHitObj;
	private string dmgTxt;
	private int layerMask = (1<<11)|(1<<10);
	// Use this for initialization
	void Start () {
		dmgTxt = "0";
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began) {
			Ray ray = GUIcam.camera.ScreenPointToRay(Input.mousePosition);
			Ray rayMain = maincam.camera.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit = new RaycastHit();
			if(Physics.Raycast(ray, out hit, 1000, layerMask)||Physics.Raycast(rayMain, out hit, 1000, layerMask)){
				if(hit.collider.name.Equals("MGTurret")){
					if(Input.GetTouch (0).phase == TouchPhase.Began){
						lastHitObj = hit.collider.gameObject;
						dmgTxt = hit.collider.GetComponent<Turret_MG_ORIGINAL>().dmgArray[hit.collider.GetComponent<Turret_MG_ORIGINAL>().dmgLvl].ToString();
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
	}
}
