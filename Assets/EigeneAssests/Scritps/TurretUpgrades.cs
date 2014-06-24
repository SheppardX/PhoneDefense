using UnityEngine;
using System.Collections;

public abstract class TurretUpgrades : MonoBehaviour {

	public abstract string Discribtion {
				get;
	}
	public abstract int getDamageUpdate(int level);
	public abstract int getHealthUpdate(int level);
	public abstract int getRangeUpdate(int level);
	public abstract int getDamageCost(int level);
	public abstract int getHealthCost(int level);
	public abstract int getRangeCost(int level);

}
