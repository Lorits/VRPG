using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class UnlockBricksOnEndPos : MonoBehaviour {

	public List<GameObject> planks;
	// Use this for initialization
	void Start () {
		foreach(GameObject obj in planks){
			obj.GetComponent<BoxCollider>().enabled = false;
		}
	}
	
	// Update is called once per frame
	void Update () {
		if(gameObject.GetComponent<LinearMapping>().value > 0.75f){
			foreach(GameObject obj in planks){
				obj.GetComponent<Collider>().enabled = true;
			}
		}
	}
}
