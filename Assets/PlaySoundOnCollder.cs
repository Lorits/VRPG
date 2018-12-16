using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlaySoundOnCollder : MonoBehaviour {

	List<GameObject> InsideCollider;
	public AudioSource player;
	public AudioClip clip;
	public string objTag;

	// Use this for initialization

	void OnTriggerEnter(Collider coll){
		Debug.Log("Triggered by something " + coll.gameObject.name);
	}

	void Start () {
		player.clip = clip;
	}

	void OnCollisionEnter(Collision coll){
		Debug.Log("Collided with something " + coll.gameObject.name);
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
