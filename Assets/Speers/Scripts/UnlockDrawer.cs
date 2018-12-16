using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class UnlockDrawer : MonoBehaviour {

	public GameObject knob;
	public AudioSource audiotSource;
	public AudioClip clip;
	public GameObject Key;

	void OnTriggerEnter(Collider coll){
		if(coll.gameObject == Key){
			audiotSource.Play();
			knob.GetComponent<LinearMoveDrawer>().movelocked = false;
			Destroy(Key);
		}
	}

	
	void OnCollisionEnter(Collision coll){
		if(coll.gameObject == Key){
			audiotSource.Play();
			knob.GetComponent<LinearMoveDrawer>().movelocked = false;
			Destroy(Key);
		}
	}

	// Use this for initialization
	void Start () {
		audiotSource.clip = clip;
	}
	
	// Update is called once per frame
	void Update () {
	}
}
