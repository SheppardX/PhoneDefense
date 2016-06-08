using UnityEngine;
using System.Collections;

public class Rocket : MonoBehaviour {
	public GameObject explosion;
	public GameObject target;
	public Vector3 targetPosition;
	public float range;
	public float damange;
	public float speed;
	private float startToCurrentDist;
	void Start () {
	}

	void Update () {		
		startToCurrentDist += Time.deltaTime * speed;
		transform.Translate (Vector3.forward * Time.deltaTime * speed);

		if (startToCurrentDist >= range) 
			Explode();

		if (target)
			transform.LookAt (target.transform.position);
		else
			Explode ();
	}

	public void Explode(){
		if (target)
			target.GetComponent<Creature>().AddjustCurrentHealth(damange);

		Destroy (gameObject);
	}

	public void OnTriggerEnter(Collider other){
		if (other.gameObject.name == "Bauer")
			Explode ();
	}
}
