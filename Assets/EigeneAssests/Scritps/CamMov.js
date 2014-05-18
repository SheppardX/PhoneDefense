
var PanSpeed:float = 160;
var moveJoystick : Joystick;
var desiredPosition:Vector3;

 
function OnEndGame(){
	moveJoystick.Disable();
}

 

function Update (){
	
	var movement = transform.TransformDirection( Vector3( moveJoystick.position.x, 0, moveJoystick.position.y ) );
	// We only want the camera-space horizontal direction
	movement.y = 0;
	movement.Normalize(); // Adjust magnitude after ignoring vertical movement
	
	// Let's use the largest component of the joystick position for the speed.
	var absJoyPos = Vector2( Mathf.Abs( moveJoystick.position.x ), Mathf.Abs( moveJoystick.position.y ) );
	movement *= PanSpeed * ( ( absJoyPos.x > absJoyPos.y ) ? absJoyPos.x : absJoyPos.y );
	movement *= Time.deltaTime;
	
	//translation += Vector3.right * Time.deltaTime * PanSpeed * (Input.GetTouch(0).position.x - Screen.width * 0.5f)/(Screen.width * 0.5f);
	
	desiredPosition = camera.transform.position + movement;
	if (desiredPosition.x > 405|| 84 > desiredPosition.x) {
		movement.x = 0;
	}
	if (desiredPosition.y > 275 || 50 > desiredPosition.y) {
		movement.y = 0;
	}
	if (desiredPosition.z > 422 || 0 > desiredPosition.z) {
		movement.z = 0;
	}
	
	transform.Translate(movement,Space.World);

}

function OnGUI (){

		GUI.Label (new Rect (10, 100, 400, 100), desiredPosition.ToString());
	
}