using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class RoombaExplodeOnTouch : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void HandHoverUpdate(Hand hand){
		GrabTypes startingGrabType = hand.GetGrabStarting();

    	if (startingGrabType != GrabTypes.None){

            if (startingGrabType == GrabTypes.Pinch){

			GetComponent<Roomba>().launchSucked();
            
			}
        }
	}
}
