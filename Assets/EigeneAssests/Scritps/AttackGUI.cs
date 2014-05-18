using UnityEngine;
using System.Collections;

public class AttackGUI : MonoBehaviour {
	public static AttackGUI instance;
	public GameObject maincam;
	public GameObject GUIcam;
	public GameObject Spawn;
	public GameObject stats;
	public GameObject spielMenu;	
	public GameObject UNITIcon;
	public GameObject menuButton;
	public GameObject settingsButton;
	public GameObject left;
	public GameObject right;
	public GameObject attackBtn;
	public GameObject[] Units = new GameObject[5];
	public string[] unitsName;
	public TextMesh live;
	public TextMesh wave;
	public TextMesh money;
	public string[] aviableUnits;
	public GUIStyle font;
	
	public Texture2D[] textures;

	private int layerMask = ~((1<<9)|(1<<8));
	private AttackList list;
	private bool menu;
	private CameraMovement camMov;
	
	private float startTime = 0.0f;
	private float duration = 58.0f;
	public int index;
	private bool toggle= false;


	public Vector3 SpielMenuTran {
		get{
			return spielMenu.transform.position;
		}
		set{
			spielMenu.transform.position = value;
		}
	}
	public Vector3 Left {
		get{
			return left.transform.position;
		}
		set{
			left.transform.position = value;
		}
	}
	public Vector3 Right {
		get{
			return right.transform.position;
		}
		set{
			right.transform.position = value;
		}
	}
	void Start(){
		instance = this;
		list = AttackList.instance;
		camMov = maincam.GetComponent<CameraMovement>();
		index = 0;
		menu = false;
	}
	
	void Update(){
		if(menu){
			SpielMenuTran = new Vector3(Mathf.Lerp(SpielMenuTran.x,0.05f,(Time.time - startTime) / duration),SpielMenuTran.y,SpielMenuTran.z);
		}else{
			SpielMenuTran = new Vector3(Mathf.Lerp(SpielMenuTran.x,12.43f,(Time.time - startTime) / duration),SpielMenuTran.y,SpielMenuTran.z);
		}
		//Input.touchCount > 0 && Input.GetTouch (0).phase == TouchPhase.Began   Input.GetMouseButtonDown(0)
		if (Input.GetMouseButtonDown(0) ) {
			Ray ray = GUIcam.camera.ScreenPointToRay (Input.mousePosition);
			RaycastHit hit;
			if(Physics.Raycast(ray, out hit, 1000, layerMask)){
				switch (hit.collider.name) {
				case "menuBtn":
					if(Input.GetMouseButtonDown(0)){
						menu = !menu;
					}
					break;
				case "right":
					if(Input.GetMouseButtonDown(0)){
						if(index < textures.Length){
							++index;
							UNITIcon.renderer.material.mainTexture = textures[index];
						}
					}
					break;				
				case "left":
					if(Input.GetMouseButtonDown(0)){
						if (index > 0){
							--index;
							UNITIcon.renderer.material.mainTexture = textures[index];
						}
					}
					break;				
				case "Place1":
					if(Input.GetMouseButtonDown(0)){
						Units[0].renderer.material.mainTexture = textures[index];
						unitsName[0] = aviableUnits[index];
					}
					break;
				case "Place2":
					if(Input.GetMouseButtonDown(0)){
						Units[1].renderer.material.mainTexture = textures[index];
						unitsName[1] = aviableUnits[index];
					}
					break;
				case "Place3":
					if(Input.GetMouseButtonDown(0)){
						Units[2].renderer.material.mainTexture = textures[index];
						unitsName[2] = aviableUnits[index];
					}
					break;
				case "Place4":
					if(Input.GetMouseButtonDown(0)){
						Units[3].renderer.material.mainTexture = textures[index];
						unitsName[3] = aviableUnits[index];
					}
					break;
				case "Place5":
					if(Input.GetMouseButtonDown(0)){
						Units[4].renderer.material.mainTexture = textures[index];
						unitsName[4] = aviableUnits[index];
					}
					break;
				case "attackBtn":
					if(Input.GetMouseButtonDown(0)){
						list.UnitsName = unitsName;
					}
					break;
				}
			}
		}
		if(index <= 0){
			Left = new Vector3(Left.x,Left.y,0);
			Right = new Vector3(Right.x,Right.y,2);
		}else if(index >= textures.Length){
			Right = new Vector3(Right.x,Right.y,0);
			Left = new Vector3(Left.x,Left.y,2);
		}else if(index > 0 && index < textures.Length){
			Right = new Vector3(Right.x,Right.y,2);
			Left = new Vector3(Left.x,Left.y,2);
		}
		if(Spawn.GetComponent<UnitSpawn>().enabled)
			wave.text = UnitSpawn.instance.curWave.ToString ();
		live.text = PlayerStats.instance.livePoints.ToString ();
		money.text = PlayerStats.instance.money.ToString ();
	}
}
