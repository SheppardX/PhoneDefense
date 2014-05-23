using UnityEngine;
using System.Collections;
[RequireComponent (typeof(PhotonView))]
[System.Serializable]
public class PlacementPlane : MonoBehaviour {
	public bool placePlane;
	private PhotonView view;

	// Use this for initialization
	void Start () {
		placePlane = false;
	}
	void Awake(){
		view = PhotonView.Get(this);
	}
	
	public bool PlacePlane {
		get{
			return placePlane;
		}
		set{
			if(PlayerPrefs.GetString("online").Equals("Online"))
				view.RPC("SetPlacePlane",PhotonTargets.All,value);
			else
				placePlane = value;
		}
	}

	[RPC]
	void SetPlacePlane(bool value){
		placePlane = value;
	}
}
