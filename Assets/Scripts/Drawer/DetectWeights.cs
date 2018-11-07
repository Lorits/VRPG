using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class DetectWeights : MonoBehaviour {

    public LinearMoveFurniture furniture;

    //Foreign object collides with this one:
    void OnTriggerEnter(Collider other){
        if (other.CompareTag("heavy"))
            furniture.ChangeWeight(1);
    }
	//Foreign object no longer collides with this one:
	void OnTriggerExit(Collider other){
        if (other.CompareTag("heavy"))
            furniture.ChangeWeight(-1);
    }
}
