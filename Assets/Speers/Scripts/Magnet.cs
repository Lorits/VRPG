using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Magnet : MonoBehaviour {

	//At which distance to be attracted to the gameObject
	public float MagnetismMagnitudeDistance = 0.0f;

	//At which force it should be forced towards this object;
	public float MagneticForce = 0.0f;

	void OnCollisionEnter(Collision other){
		Debug.Log("Am I even working????");
		if(other.gameObject.tag == "Magnetic"){
			other.gameObject.transform.parent = gameObject.transform;
			other.gameObject.GetComponent<Rigidbody>().isKinematic = true;
			other.gameObject.tag = "None";
		}
	}

	void Awake(){
		MagnetismMagnitudeDistance = (MagnetismMagnitudeDistance > 0 ? MagnetismMagnitudeDistance : 1);
		MagneticForce = (MagneticForce > 0 ? MagneticForce : 0.05f);
	}

	void Update () {
		foreach(Collider coll in Physics.OverlapSphere(gameObject.transform.position,MagnetismMagnitudeDistance)){
			if(coll.gameObject.tag == "Magnetic"){
				coll.gameObject.GetComponent<Rigidbody>().useGravity = false;
				float dist = Vector3.Distance(transform.position, coll.gameObject.transform.position);
				Vector3 dir = transform.position - coll.gameObject.transform.position;
				float threshold = (1/-MagnetismMagnitudeDistance)*(dist - MagnetismMagnitudeDistance);

				float force = MagneticForce * Mathf.Min(1,(Mathf.Cos(Mathf.PI * (1 + 0.5f * threshold) )+1));
				coll.transform.GetComponent<Rigidbody>().AddForce(dir * force);
			}
		}
	}
}
