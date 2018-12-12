using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MagneticObject : MonoBehaviour {

	//At which distance to be attracted to the gameObject
	public float MagnetismMagnitudeDistance = 0.0f;

	//At which force it should be forced towards this object;
	public float MagneticForce = 0.0f;
	public float exponentiel = 1;

	void OnTriggerEnter(Collider coll){

	}

	void Awake(){

	}

	void Update(){

	}
}
