using UnityEngine;
using System.Collections;

public class DiscriptionMenu : MonoBehaviour {
	public TextMesh damage;
	public TextMesh health;
	public TextMesh range;
	public TextMesh discription;
	public GameObject discripMenu;
	public GameObject GUIcam;

	private Turret_MG lastHitComponent;	
	private GameObject lastHitObj;
	private MGUpgrades upgrades;
	private string dmgTxt;
	private string healthTxt;
	private string rangeTxt;
	private bool discrptionopen;
	private int layerMask = (1<<11)|(1<<10)|(1<<9);
	private float startTime = 0.0f;
	private float duration = 8.0f;
	// Use this for initialization

	public Vector3 DiscripMenuTran {
		get{
			return discripMenu.transform.position;
		}
		set{
			discripMenu.transform.position = value;
		}
	}
	void Awake(){
		discrptionopen = false;
	}
	void Start () {
		upgrades = GetComponent<MGUpgrades>();
	}
	
	// Update is called once per frame
	void Update () {
		if(discrptionopen){
			DiscripMenuTran = new Vector3(DiscripMenuTran.x,Mathf.Lerp(DiscripMenuTran.y,-1,(Time.time - startTime) / duration),DiscripMenuTran.z);
			damage.text = dmgTxt;
			health.text = healthTxt;
			range.text = rangeTxt;
		}else if(!Turret_Placement.instance.buildPanalOpen){
			DiscripMenuTran = new Vector3(DiscripMenuTran.x,Mathf.Lerp(DiscripMenuTran.y,-3.8f,(Time.time - startTime) / duration),DiscripMenuTran.z);
		}
		if (Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began ) {
			Ray ray = GUIcam.GetComponent<Camera>().ScreenPointToRay (Input.GetTouch (0).position);
			RaycastHit hit;
			if(Physics.Raycast(ray, out hit, 1000, layerMask)){
				if(hit.collider.name.Equals("MGIcon")){
					if(Input.GetTouch (0).phase == TouchPhase.Began){
						discrptionopen = !discrptionopen;
						dmgTxt = upgrades.getDamageUpdate(0).ToString();
						healthTxt = upgrades.getHealthUpdate(0).ToString();
						rangeTxt = upgrades.getRangeUpdate(0).ToString();
						discription.text ="MG-Nest \n Effektiv gegen \nungepanzerte Ziele.";
					}	
				}
			}		
		}
	}
}

