using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class weightinbox : MonoBehaviour {
	
	public List<GameObject> objects;
	public string tag;

	void OnTriggerEnter(Collider coll){
		foreach(GameObject obj in objects){
			if(coll.gameObject == obj){
				return;
			}
		}
		if(coll.gameObject.tag == tag){
			objects.Add(coll.gameObject);
		}
	}

	void OnTriggerExit(Collider coll){
		if(coll.gameObject.tag == tag){
			objects.Remove(coll.gameObject);
		}
	}
	
	// Update is called once per frame
	void Update () {
		if(objects.Count > 0){
			GetComponent<LinearMoveFurniture>().movelocked = true;
		}else{
			GetComponent<LinearMoveFurniture>().movelocked = false;
		}
	}
}
