using UnityEngine;
using System.Collections;

public class ScaleScript : MonoBehaviour {
	
	public Vector2 scaleOnRatio = new Vector2(0.01f,0.02f);
	private Transform mytrans;
	private float widthHeighRatio;
	// Use this for initialization
	void Start () {
		mytrans = transform;
		SetScale();
	}
	
	// Update is called once per frame
	void Update () {
		SetScale();
	}

	
	
	void SetScale(){
		widthHeighRatio = (float) Screen.width/Screen.height * Screen.height;
		
		mytrans.localScale = new Vector3(scaleOnRatio.x, widthHeighRatio * scaleOnRatio.y,1);
	}
}
