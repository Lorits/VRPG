using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Valve.VR.InteractionSystem {
    public class MagnetScript : MonoBehaviour
    {
        public bool behindWall;
        // Use this for initialization
        private SpringJoint spring;
        public Rigidbody rod;
        public Rigidbody magAnch;
        public Transform rodAnch;
        public float initDist;
        public float dist;
        public float maxLength = 6.0f;
        public float minLength = 0.1f;
        public LinearMapping map;
        public RopeRender rope;
        public Transform[] metals;
        public float attractionDist = 1.0f;
        public float pullForce = 0.1f;
        public Collider wall;
        public Transform attract;
        void Start()
        {
            behindWall = false;
            spring = GetComponent<SpringJoint>();
            for (int i = 0; i< metals.Length; i++)
            {
                Physics.IgnoreCollision(metals[i].GetComponent<Collider>(), GetComponent<Collider>());

            }
        }
        private void FixedUpdate()
        {
            dist = maxLength * map.value;
            if (behindWall)
            {
                float d = Vector3.Distance(magAnch.position, rodAnch.position);
                dist += initDist - d;
            } else
            {
            }
            spring.maxDistance = dist;

            for(int i = 0; i < metals.Length; i++)
            {
                if (!metals[i].parent)
                {
                    float dis = Vector3.Distance(attract.position, metals[i].position);
                    if (dis < 0.01f)
                    {
                        metals[i].GetComponent<Rigidbody>().isKinematic = true;
                        metals[i].position = attract.position;
                        //metals[i].GetComponent<Rigidbody>().velocity = Vector3.zero;
                        metals[i].SetParent(attract, true);
                    }
                    else
                    {
                        if (dis < attractionDist)
                        {
                            //Vector3 forceDirection = transform.position - metals[i].transform.position;
                            // apply force on target towards me
                            //metals[i].GetComponent<Rigidbody>().AddForce(forceDirection.normalized * pullForce, ForceMode.Acceleration);
                            //metals[i].GetComponent<Rigidbody>().velocity = Vector3.zero;

                            metals[i].position = Vector3.Lerp(attract.position, metals[i].position, Mathf.Pow(dis*pullForce / attractionDist, 3));

                        }
                    }
                }
            }
        }

        
        private void OnTriggerEnter(Collider other)
        {
            if(other == wall)
            {
                rope.end = magAnch.transform;

                behindWall = true;
                spring.connectedBody = magAnch;
                spring.maxDistance = 0.3f;
                dist = 0.3f;
                spring.connectedAnchor = Vector3.zero;
                initDist = Vector3.Distance(rodAnch.position, magAnch.position);
                Debug.Log(initDist);
            }
          
        }
        private void OnTriggerExit(Collider other)
        {
            if (other == wall)
            {
                rope.end = transform;
                behindWall = false;
                spring.connectedBody = rod;
                spring.maxDistance = Vector3.Distance(magAnch.position, rodAnch.position) * 0.5f;
                spring.connectedAnchor = new Vector3(0, 0, 18.5f);
            }
        }
    }
}
