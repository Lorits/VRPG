using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LightSine : MonoBehaviour {
    Light pLight;
	// Use this for initialization
	void Start () {
        pLight = GetComponent<Light>();
	}
	
	// Update is called once per frame
	void Update () {
        pLight.range = 1.0f + 0.3f*(((Mathf.Sin((float)Time.time*1.73f))) * ((Mathf.Cos((float)Time.time * 1.25f)))+(0.4f*(Mathf.Sin((float)Time.time * 6.1f))));
    }
}
