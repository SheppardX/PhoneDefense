using UnityEngine;
using System.Collections;

public class MGUpgrades : Turret {
	public static MGUpgrades instance;
	private int dmg;
	private int health;
	private int range;
	private int dmgCost;
	private int healthCost;
	private int rangeCost;
	public string _discribtion;
	public int[] dmgArray;
	public int[] healthArray;
	public int[] rangeArray;
	public int[] dmgCostArray;
	public int[] healthCostArray;
	public int[] rangeCostArray;


	void Start(){
		instance = this;
		dmg = dmgArray[0];
		health = healthArray[0];
		range = rangeArray[0];
		dmgCost = dmgCostArray[0];
		healthCost = healthCostArray[0];
		rangeCost = rangeCostArray[0];
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

	public override int getRangeUpdate (int level)
	{
		switch (level) {
		case 0:
			range = rangeArray[level];
			break;
		case 1:
			range = rangeArray[level];
			break;
		case 2:
			range = rangeArray[level];
			break;
		case 3:
			range = rangeArray[level];
			break;
		case 4:
			range = rangeArray[level];
			break;
		}
		return range;
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

	public override int getRangeCost (int level)
	{
		switch (level) {
		case 0:
			rangeCost = rangeCostArray[level];
			break;
		case 1:
			rangeCost = rangeCostArray[level];
			break;
		case 2:
			rangeCost = rangeCostArray[level];
			break;
		case 3:
			rangeCost = rangeCostArray[level];
			break;
		case 4:
			rangeCost = rangeCostArray[level];
			break;
		}
		return rangeCost;
 	}

	public override string Discribtion {
		get {
			return _discribtion;
		}
	}
	#endregion
}

