using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class IncreaseSizeOfLightOnAngle : MonoBehaviour {

	public GameObject glass;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		this.GetComponent<Light>().range = glass.GetComponent<MagnifyTest>().NowAlpha * 0.25f;
		GetComponent<SphereCollider>().radius = glass.GetComponent<MagnifyTest>().NowAlpha * 0.25f;
	}
}
