using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotate : MonoBehaviour {

	// Use this for initialization
	void Start () {

	}

	// Update is called once per frame
	void Update () {
		transform.rotation = Quaternion.Euler(90, 180*(Mathf.Sin(Time.time)),0 );

	}
}
