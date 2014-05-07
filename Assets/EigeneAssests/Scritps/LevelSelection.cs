using UnityEngine;
using System.Collections;

public class LevelSelection : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void OnGUI () {
		
		GUILayout.BeginArea(new Rect(Screen.width / 2 -180,Screen.height / 2-50,400,Screen.height));
			GUI.skin.button.fontSize = 60;
			if(GUILayout.Button("Level1")){Application.LoadLevel("Level1");}
			if(GUILayout.Button("Level2")){Application.LoadLevel("Level2");}
			if(GUILayout.Button("zurueck")){Application.LoadLevel("Intro");}
		GUILayout.EndArea();
	
	}
}
