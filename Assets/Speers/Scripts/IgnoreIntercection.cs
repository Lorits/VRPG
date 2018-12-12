using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IgnoreIntercection : MonoBehaviour {

	public string[] tag;

	void OnCollisionEnter(Collision collision){
		Debug.Log("Ey, my rope is colliding! :O!");
		foreach(string thisTag in tag){
		if(collision.gameObject.tag == thisTag){
			Physics.IgnoreCollision(collision.gameObject.GetComponent<Collider>(),GetComponent<Collider>());
			Debug.Log("I've Done it!");
			return;
			Debug.Log("But I messed up");
		}
		}
	}

}
