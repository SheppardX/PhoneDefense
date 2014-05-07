using UnityEngine;
using System.Collections;

public class OptionsMenu : MonoBehaviour {
	private bool inGameMenu = true;
	private bool optionMenu = false;
	void OnGui(){
		if(Input.GetKeyUp(KeyCode.Escape) || Input.GetKeyUp(KeyCode.Menu)){
			if(inGameMenu){
				GUILayout.BeginArea(new Rect(Screen.width / 2 -160,Screen.height / 2-50,400,Screen.height));
					GUI.skin.button.fontSize = 60;
					if(GUILayout.Button("Main Menu")){Application.LoadLevel("Intro");}
					if(GUILayout.Button("Option")){inGameMenu=false; optionMenu=true;}
					if(GUILayout.Button("Beenden")){Application.Quit();}
				GUILayout.EndArea();	
			}
			if(optionMenu){
				GUILayout.BeginArea(new Rect(Screen.width / 2 -160,Screen.height / 2-50,400,Screen.height));
					GUI.skin.button.fontSize = 60;
					if(GUILayout.Button("Zurück")){inGameMenu=true; optionMenu=false;}
				GUILayout.EndArea();	
			}
		}
	}
}
