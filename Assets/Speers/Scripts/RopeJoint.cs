using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class RopeJoint : MonoBehaviour {

	public GameObject parentObject;
	public float limit;
	public float limitSpeed;

	Rigidbody rigidbody;

	// Use this for initialization
	void Start () {
		if(parentObject == null){
			parentObject = transform.parent.gameObject;
		}
		rigidbody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
		float dist = Vector3.Distance(transform.position,parentObject.transform.position);
		if(dist >= limit){
			float distNorm = dist/limit;
			float newX = (transform.position.x - parentObject.transform.position.x) / distNorm;
			float newY = (transform.position.y - parentObject.transform.position.y) / distNorm;
			float newZ = (transform.position.z - parentObject.transform.position.z) / distNorm;
			Vector3 newVect = transform.position - new Vector3(newX,newY,newZ);
			transform.position = newVect;
		}

		if(rigidbody.velocity.magnitude > limitSpeed){
			rigidbody.velocity = rigidbody.velocity.normalized * limitSpeed;
		}
	}
}
