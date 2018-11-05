using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MagnifyingGlassScript : MonoBehaviour {

	public List<GameObject> lights;
	public GameObject light;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

		float angle = 0;
		float alpha = 0;
		bool positive = false;

		float maxAngle = Mathf.Cos(Mathf.PI/5);

		Vector3 par = transform.parent.transform.localPosition;
		
		//Check all lights
		foreach(GameObject light in lights){
			Vector3 dir = (light.transform.position - transform.parent.transform.position).normalized;
			
			//Check whether positive or negative
			if(Vector3.Dot(dir,transform.forward) > 0) positive = true;

			if(angle < Mathf.Max(maxAngle, Mathf.Abs(Vector3.Dot(dir,transform.forward)))){
				angle = Mathf.Max(maxAngle, Mathf.Abs(Vector3.Dot(dir,transform.forward)));
			}
		}

		alpha = 1/(1 - maxAngle + 0.05f)*(angle - maxAngle); 

		Debug.Log(maxAngle + " & " + angle + " & " + alpha + " & " + positive);

		//Change position and scale so it looks more like a ray.
		
		if(angle > maxAngle && positive){
			transform.position = new Vector3(par.x,par.y,(positive ? (-alpha):(alpha)));
			transform.localScale = new Vector3(transform.localScale.x,transform.localScale.y, (alpha)*10);
			
			gameObject.GetComponent<MeshRenderer>().enabled = true;
			Color col = gameObject.GetComponent<Renderer>().material.color;
			col.a = alpha;
			gameObject.GetComponent<Renderer>().material.color = col;
		}else{
			gameObject.GetComponent<MeshRenderer>().enabled = false;
		}
	}
}
