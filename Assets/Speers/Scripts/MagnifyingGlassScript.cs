﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MagnifyingGlassScript : MonoBehaviour {

	public List<GameObject> lights;
	public GameObject light;
    public MeshRenderer rend;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

		float angle = 0;
		float alpha = 0;

		float maxAngle = Mathf.Cos(30);

		foreach(GameObject light in lights){
			Vector3 dir = (light.transform.position - transform.position).normalized;
			if(angle < Mathf.Max(maxAngle, Vector3.Dot(dir,transform.forward))){
				angle = Mathf.Max(maxAngle, Vector3.Dot(dir,transform.forward));
			}
		}

		alpha = 1/(1 - maxAngle)*(angle - maxAngle);
        rend = GetComponent<MeshRenderer>();

        if (alpha > 0){            

            rend.enabled = true;
		
			Color col = gameObject.GetComponent<Renderer>().material.color;
			col.a = alpha - Mathf.Cos(35);
			gameObject.GetComponent<Renderer>().material.color = col;
		}else{
			rend.enabled = false;
		}
	}
}
