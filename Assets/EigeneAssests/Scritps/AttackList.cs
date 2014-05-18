using UnityEngine;
using System.Collections;

public class AttackList : MonoBehaviour {

	public static AttackList instance;
	public string[] unitsName;

	private PhotonView view;

	public string[] UnitsName {
		get{
			return unitsName;
		}
		set{
			view.RPC("SetAttackList",PhotonTargets.All,value);
		}

	}

	// Use this for initialization
	void Start () {
		instance = this;
		view = PhotonView.Get(this);
	}
	
	// Update is called once per frame
	void Update () {
	
	}
	[RPC]
	void SetAttackList(string[] unitList){
		unitsName = unitList;
	}
}
