using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AttachObjectOnCollision : MonoBehaviour {

	public GameObject[] ObjectToAttachto;

	void OnCollisionEnter(Collision collision){
		foreach(GameObject obj in ObjectToAttachto){
			if(collision.gameObject == obj && obj != gameObject.transform.parent.gameObject){
				gameObject.transform.parent = obj.transform;
				gameObject.GetComponent<Rigidbody>().isKinematic = true;
				transform.localPosition = new Vector3(0,-3.5f,0);
				transform.rotation = new Quaternion(0,0,0,0);
			}
		}

		//Check if hand, find out which parameter that counts as pinching with controller;
		if(collision.gameObject.tag == "Hand" && Input.GetButtonDown("InteractUI")){
			gameObject.GetComponent<Rigidbody>().isKinematic = false;
			gameObject.transform.position = gameObject.transform.parent.position;
		}
	}

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
