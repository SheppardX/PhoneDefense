using UnityEngine;
using System.Collections;

public abstract class Units : MonoBehaviour {

	
	public abstract string Discribtion {
		get;
	}
	public abstract int getDamageUpdate(int level);
	public abstract int getHealthUpdate(int level);
	public abstract int getSpeedUpdate(int level);
	public abstract int getDamageCost(int level);
	public abstract int getHealthCost(int level);
	public abstract int getSpeedCost(int level);
	
}
