using UnityEngine;
using System.Collections;

public class CameraMovement : MonoBehaviour{
	// The ID of the touch that began the scroll:
	int scrollTouchID = -1;
	// The position of that initial touch:
	Vector3 desiredPosition;
	float minCameraX = 22f;
	float maxCameraX = 178f;
	float minCameraY = 35f;
	float maxCameraY = 115f;
	float minCameraZ = 6f;
	float maxCameraZ = 225f;
	float delta;
	Touch touch;
	Touch touch1; 
	Vector2 curDist;
	Vector3 temp;
	Vector2 prevDist;
	Vector3 cameraPosition;
	// The current camera speed:
	Vector3 cameraSpeed = new Vector3(0, 0, 0);
	
	void Update(){
		foreach(Touch t in Input.touches){
			//Note down the touch ID and position when the touch begins:

			if(t.phase==TouchPhase.Began){
				if(scrollTouchID==-1){
					scrollTouchID = t.fingerId;
				}
			}
			
			//Forget it when the touch ends:
			if(t.phase==TouchPhase.Ended || t.phase==TouchPhase.Canceled){
				scrollTouchID = -1;
			}
			
			//If the finger has moved and it's the finger that started the touch, change the camera speed:
			if(t.phase==TouchPhase.Moved && t.fingerId==scrollTouchID){
				cameraSpeed.x = (t.deltaPosition.x/5)*(-1);
				cameraSpeed.z = (t.deltaPosition.y/5)*(-1);				
			}

			if (Input.touchCount == 2){				
				cameraSpeed.z = 0;
				cameraSpeed.x = 0;
				touch = Input.GetTouch(0);
				touch1 = Input.GetTouch(1);
				if (touch.phase == TouchPhase.Moved && touch1.phase == TouchPhase.Moved){
					curDist = touch.position - touch1.position;
					prevDist = (touch.position - touch.deltaPosition) - (touch1.position - touch1.deltaPosition);
					delta = prevDist.magnitude - curDist.magnitude;
					desiredPosition = camera.transform.position + cameraSpeed;
					if (desiredPosition.y < minCameraY){
						delta = 0;
						temp = camera.transform.position;
						temp.y = minCameraY;
						camera.transform.position = temp;
					} else if( maxCameraY < desiredPosition.y){
						 delta = 0;
						temp = camera.transform.position;
						temp.y = maxCameraY;
						camera.transform.position = temp;
					}
					Camera.main.transform.Translate(0,delta*0.05f,0,Space.World);
				}
			}			 
		}
		
		// Move camera according to current camera speed:
		cameraPosition = Camera.main.transform.position;
		desiredPosition = camera.transform.position + cameraSpeed;
		if (desiredPosition.x < minCameraX || maxCameraX < desiredPosition.x){
			cameraSpeed.x = 0;
		}
		if (desiredPosition.z < minCameraZ || maxCameraZ < desiredPosition.z) {
			cameraSpeed.z = 0;
		}
		camera.transform.position = new Vector3(desiredPosition.x, desiredPosition.y,cameraPosition.z + cameraSpeed.z);
			
		// Lower camera speed to make the camera stop moving slowly:
		cameraSpeed.x = 0.8f*cameraSpeed.x;
		cameraSpeed.y = 0.8f*cameraSpeed.y;
		cameraSpeed.z = 0.8f*cameraSpeed.z;

	}
}