using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TeleportObjToCenterWhenLeavingBoundaries : MonoBehaviour {

	// Use this for initialization

	void OnTriggerExit(Collider coll){
		coll.GetComponent<Rigidbody>().isKinematic = true;
		coll.gameObject.transform.position = new Vector3(0,1.4f,0);
	}

	void OnCollisionExit(Collision coll){
		coll.gameObject.GetComponent<Rigidbody>().isKinematic = true;
		coll.gameObject.transform.position = new Vector3(0,1.4f,0);
	}
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
