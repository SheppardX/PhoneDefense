using UnityEngine;
using System.Collections;

public class Turret_Placement : MonoBehaviour {
	
	
	public static Turret_Placement instance;
	public GameObject maincam;
	public GameObject GUIcam;
	public bool buildPanalOpen = false;	
	public bool buildPanalClose = true;	
	public Transform placementPlanesRoot;
	public Material hoverMat;
	public LayerMask placementLayerMask;
	public Color OnColor;
	public Color OffColor;
	public GameObject[] allStrucutres;
	public int[] cost;
	public int strucureIndex = 0;
	public Vector3 startPos = new Vector3(0,10,0);

	private int layerMask = (1<<11)|(1<<8);
	private Material originalMat;
	private GameObject lastHitObj;
	private GameObject[] placementChildrenRenderer;
	private GameObject newStructure;

	// Use this for initialization
	void Start () {
		instance = this;
		strucureIndex = 0;
		placementChildrenRenderer = GameObject.FindGameObjectsWithTag("PlacementPlane_Open");
		
	}
	
	// Update is called once per frame
	void Update () {
		if(buildPanalOpen){
			foreach(GameObject item in placementChildrenRenderer){
				item.GetComponent<Renderer>().enabled = true;
			}
			Ray ray = GUIcam.camera.ScreenPointToRay(Input.mousePosition);
			Ray rayMain = maincam.camera.ScreenPointToRay(Input.mousePosition);
			RaycastHit hit = new RaycastHit();
			if(Physics.Raycast(ray, out hit, 1000, layerMask)||Physics.Raycast(rayMain, out hit, 1000, layerMask)){
				//Debug.Log(hit.collider.name);
				if(lastHitObj){
					lastHitObj.renderer.material = originalMat;	
				}
				if(hit.collider.name.Equals("Plane")){
					lastHitObj = hit.collider.gameObject;
					originalMat = lastHitObj.renderer.material;
					lastHitObj.renderer.material = hoverMat;
				}
			}
			
		}
		else{
			if(lastHitObj){
				lastHitObj.renderer.material = originalMat;
				lastHitObj = null;
			}
			foreach(GameObject item in placementChildrenRenderer){
				item.GetComponent<Renderer>().enabled = false;
			}
			
		}
		//Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began && lastHitObj
		if(Input.GetMouseButtonDown(0) && lastHitObj){
			if(!lastHitObj.GetComponent<PlacementPlane>().PlacePlane && strucureIndex > 0){
				if(PlayerStats.instance.money > cost[strucureIndex]){
					if(PlayerPrefs.GetString("online").Equals("Online")){
						newStructure = (GameObject)PhotonNetwork.Instantiate(allStrucutres[strucureIndex].name, lastHitObj.transform.position-startPos, Quaternion.identity,0);
					}else{
						
						newStructure = (GameObject)Instantiate(allStrucutres[strucureIndex], lastHitObj.transform.position-startPos, Quaternion.identity);
					}
					newStructure.name = allStrucutres[strucureIndex].name;
					Vector3 temp = newStructure.transform.localEulerAngles;
					PlayerStats.instance.money -= cost[strucureIndex];
					temp.y = (Random.Range(0,360));
					newStructure.transform.localEulerAngles = temp;
					lastHitObj.GetComponent<PlacementPlane>().PlacePlane = true;
				}
			}
		}
	}
	
	
	
	void SetBuildChoice( GameObject btnObj){
		string btnName = btnObj.name;
		if(btnName == "btn_MG"){
			strucureIndex=1;	
		}
	}
}
