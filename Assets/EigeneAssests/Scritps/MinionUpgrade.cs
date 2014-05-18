using UnityEngine;
using System.Collections;

public class MinionUpgrade : Units {
	public static MinionUpgrade instance;
	private int dmg;
	private int health;
	private int speed;
	private int dmgCost;
	private int healthCost;
	private int speedCost;
	public string _discribtion;
	public int[] dmgArray;
	public int[] healthArray;
	public int[] speedArray;
	public int[] dmgCostArray;
	public int[] healthCostArray;
	public int[] speedCostArray;

	void Start(){
		instance = this;
		dmg = dmgArray[0];
		health = healthArray[0];
		speed = speedArray[0];
		dmgCost = dmgCostArray[0];
		healthCost = healthCostArray[0];
		speedCost = speedCostArray[0];
	}
	
	#region implemented abstract members of Turret
	public override int getDamageUpdate (int level)
	{
		switch (level) {
		case 0:
			dmg = dmgArray[level];
			break;
		case 1:
			dmg = dmgArray[level];
			break;
		case 2:
			dmg = dmgArray[level];
			break;
		case 3:
			dmg = dmgArray[level];
			break;
		case 4:
			dmg = dmgArray[level];
			break;
		}
		return dmg;
	}
	
	public override int getHealthUpdate (int level)
	{
		switch (level) {
		case 0:
			health = healthArray[level];
			break;
		case 1:
			health = healthArray[level];
			break;
		case 2:
			health = healthArray[level];
			break;
		case 3:
			health = healthArray[level];
			break;
		case 4:
			health = healthArray[level];
			break;
		}
		return health;
	}
	
	public override int getSpeedUpdate (int level)
	{
		switch (level) {
		case 0:
			speed = speedArray[level];
			break;
		case 1:
			speed = speedArray[level];
			break;
		case 2:
			speed = speedArray[level];
			break;
		case 3:
			speed = speedArray[level];
			break;
		case 4:
			speed = speedArray[level];
			break;
		}
		return speed;
	}
	
	public override int getDamageCost (int level)
	{
		switch (level) {
		case 0:
			dmgCost = dmgCostArray[level];
			break;
		case 1:
			dmgCost = dmgCostArray[level];
			break;
		case 2:
			dmgCost = dmgCostArray[level];
			break;
		case 3:
			dmgCost = dmgCostArray[level];
			break;
		case 4:
			dmgCost = dmgCostArray[level];
			break;
		}
		return dmgCost;
	}
	
	public override int getHealthCost (int level)
	{
		switch (level) {
		case 0:
			healthCost = healthCostArray[level];
			break;
		case 1:
			healthCost = healthCostArray[level];
			break;
		case 2:
			healthCost = healthCostArray[level];
			break;
		case 3:
			healthCost = healthCostArray[level];
			break;
		case 4:
			healthCost = healthCostArray[level];
			break;
		}
		return healthCost;
	}
	
	public override int getSpeedCost (int level)
	{
		switch (level) {
		case 0:
			speedCost = speedCostArray[level];
			break;
		case 1:
			speedCost = speedCostArray[level];
			break;
		case 2:
			speedCost = speedCostArray[level];
			break;
		case 3:
			speedCost = speedCostArray[level];
			break;
		case 4:
			speedCost = speedCostArray[level];
			break;
		}
		return speedCost;
	}
	
	public override string Discribtion {
		get {
			return _discribtion;
		}
	}
	#endregion
}
