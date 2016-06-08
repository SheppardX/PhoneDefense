using UnityEngine;
using System.Collections;

public class Upgrades : MonoBehaviour {
	public Upgrades instance;
	public int dmgLvl;
	public int healthLvl;
	public int rangeLvl;
	public float curHealth;
	private PatriotUpgrades upgradePat;
	private MGUpgrades upgradeMG;
	private TurretUpgrades upgrade;
	private PhotonView view;

	public int DamageLvl {
		get{
			return dmgLvl;
		}
		set{
			if(PlayerPrefs.GetString("online").Equals("Online"))
				view.RPC("UpgradeDMG",PhotonTargets.All,value);
			else
				dmgLvl = value;
		}
	}
	public int HealthLvl {
		get{
			return healthLvl;
		}
		set{
			if(PlayerPrefs.GetString("online").Equals("Online"))
				view.RPC("UpgradeHealth",PhotonTargets.All,value);
			else{
				healthLvl = value;
				curHealth = upgrade.getHealthUpdate(healthLvl);
			}
		}
	}
	public int RangeLvl {
		get{
			return rangeLvl;
		}
		set{
			if(PlayerPrefs.GetString("online").Equals("Online"))
				view.RPC("UpgradeRange",PhotonTargets.All,value);
			else
				rangeLvl = value;
		}
	}
	[RPC]
	void UpgradeDMG(int value){
		dmgLvl = value;
	}
	[RPC]
	void UpgradeHealth(int value){
		healthLvl = value;
		curHealth = upgrade.getHealthUpdate(healthLvl);
	}
	[RPC]
	void UpgradeRange(int value){
		rangeLvl = value;
	}
	void Start(){
		instance = this;
		view = PhotonView.Get(this);
		upgradeMG = MGUpgrades.instance;
		switch (gameObject.name) {
		case "Turret_MG":
			upgrade = upgradeMG;
			Debug.Log(upgrade);
			break;
				default:
						break;
		}
	}
}
