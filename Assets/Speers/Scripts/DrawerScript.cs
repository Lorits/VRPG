using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class DrawerScript : MonoBehaviour {

	//list of objects that are in collision with the game object's collider
	public List<GameObject> Objects;
	//Is something colliding with the object, yes no?
	public bool isTrigger;

	//When something enters collider
	void OnTriggerEnter(Collider other){
		//Add object to list of objects.
		Objects.Add(other.gameObject);

	}

	//When an object exits the collider
	void OnTriggerExit(Collider other){
		Objects.Remove(other.gameObject);
	}

	void update(){

		//Check if the drawer is weighted down
		bool isWeighted = false;


		isTrigger = false;
		//For each object in objects, check if object's tag is "Weight", if so, isWeighted = true.
		foreach(GameObject obj in Objects){
			if(obj.tag == "Weight"){
				isWeighted = true;
			}
			isTrigger = true;
		}

		//Turn of being interactable and possibly change color of outline (To be researched)
		if(isWeighted){
			this.GetComponent<Interactable>().enabled = false;
		}
	}
}
