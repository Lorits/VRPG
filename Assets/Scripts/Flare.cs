using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Valve.VR.InteractionSystem
{
    public class Flare : MonoBehaviour
    {
        public float scalePos = 20.0f;
        public float timetoburn = 10.0f;
        private float burntime = 0.0f;
        private bool burning = false;
        private LensFlare flare;
        private Light pLight;
        private MagnifyTest magnify;
        // Use this for initialization
        void Start()
        {
            magnify = transform.GetComponentInParent<MagnifyTest>();
            pLight = transform.GetComponent<Light>();
            flare = transform.GetComponent<LensFlare>();
            transform.position = new Vector3(0,0,scalePos*magnify.focalPoint);
        }

        // Update is called once per frame
        void Update()
        {
            float alpha = magnify.CalculateAlpha();
            pLight.intensity = 2.0f * alpha * (burning ? 2.0f : 1.0f);
            pLight.range = 2.0f * alpha * (burning ? 2.0f : 1.0f);
            flare.brightness = 2.0f * alpha * (burning ? 2.0f : 1.0f);
        }
        private void OnTriggerEnter(Collider other)
        {
           if( other.CompareTag("burnable"))
                burning = true;
        }
        private void OnTriggerStay(Collider other)
        {
            burntime += 0.01f;
            if (burntime > timetoburn)
            {
                Destroy(other);
            } 
        }
        private void OnTriggerExit(Collider other)
        {
            if (other.CompareTag("burnable"))
                burning = false;
        }
    }
}
