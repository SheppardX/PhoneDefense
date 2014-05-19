using UnityEngine;
using System.Collections;
[RequireComponent (typeof(EnemiAI))]
[RequireComponent (typeof(Rigidbody))]
[RequireComponent (typeof(CapsuleCollider))]
[RequireComponent (typeof(PhotonView))]
public class Creature : MonoBehaviour {

	public float walkSpeed = 100.0f;
	public float rotateSpeed = 180.0f;
	public float friction = 0.1f;
	public float minLookDistance = 0.1f;
	public float minDistance = 1.5f;
	public float minLookAngle = 150.0f;
	public int maxHealth;	
	public float curHealth;
	public float healthBarLength;
	public Animation animatedCharakter;
	public static int floorLayerMask;	
	public bool live = true;	
	public int healthLvl;	
	public int speedLvl;	
	public Texture2D progressBarEmpty;
	public Texture2D progressBarFull;
	private MinionUpgrade upgrade;
	private Vector2 size = new Vector2(60,20);
	private float specialAnimTimer;
	private float forwardFaktor;
	private Vector3 dir;
	private Vector3 planarTarget;
	private Quaternion lookAtRotation;
	private Vector3 velocity;
	private Vector2 targetPos;
	[HideInInspector] public Vector3 targetPosition;

	
	void Awake () {
		healthLvl = 0;
		speedLvl = 0;
		floorLayerMask = 1 << LayerMask.NameToLayer("Floor");
		targetPosition = transform.position +transform.forward;
		live = true;
		upgrade = MinionUpgrade.instance;
		curHealth = (float)upgrade.getHealthUpdate(healthLvl);
		maxHealth = upgrade.getHealthUpdate(healthLvl);
		healthBarLength = curHealth /(float)upgrade.getHealthUpdate(healthLvl);
	}
	
	void Update () {
		if(curHealth <= 0){			
			live = false;
			PlayerStats.instance.money +=15;
			DestroyObject(gameObject);
		}
		planarTarget = new Vector3(targetPosition.x,transform.position.y,targetPosition.z);
		dir = (planarTarget - transform.position).normalized;
	}
	
	void FixedUpdate(){
		if(Vector3.Distance(transform.position, planarTarget)>minLookDistance){			
			lookAtRotation = Quaternion.LookRotation(dir, transform.up);
			transform.rotation= Quaternion.RotateTowards(transform.rotation, lookAtRotation, rotateSpeed *Time.deltaTime);
		}
		if(Vector3.Distance(transform.position,planarTarget) > minDistance && Vector3.Angle(transform.forward,dir) < minLookAngle){
			forwardFaktor = 1.0f;
		}else{
			forwardFaktor = 0.0f;	
		}
		rigidbody.velocity += transform.forward * forwardFaktor * walkSpeed;
		
		velocity = rigidbody.velocity;
		velocity.x *= friction;
		velocity.z *= friction;		
		rigidbody.velocity = velocity;
	}

	public void AddjustCurrentHealth (float adj)
	{
		curHealth -= adj;	
		if (curHealth < 0)		
			curHealth = 0;	
		if (curHealth > maxHealth)		
			curHealth = maxHealth;		
		if(maxHealth < 1)		
			maxHealth = 1;		
		healthBarLength = curHealth /(float)maxHealth;

	}

	void OnDrawGizmos(){
		Gizmos.color = Color.red;
		Gizmos.DrawLine(transform.position, targetPosition);
		Gizmos.DrawSphere(targetPosition,0.2f);	
	}

	void OnGUI(){			
		targetPos = Camera.main.WorldToScreenPoint (transform.position);
		GUI.BeginGroup(new Rect(targetPos.x, Screen.height - targetPos.y,60,20));
			GUI.Box(new Rect(0,0, size.x, size.y),progressBarEmpty);
			GUI.BeginGroup(new Rect(0,0,size.x*healthBarLength,size.y));
		GUI.Box(new Rect(0,0,size.x,size.y),progressBarFull);
			GUI.EndGroup();
		GUI.EndGroup();
	}
}
