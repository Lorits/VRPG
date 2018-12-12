using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Valve.VR.InteractionSystem
{
    public class Mjolner : MonoBehaviour
    {
        public Transform toggleVR;
        private bool toggle;
        private bool going = false;
        public Hand hand;
        public Hand hand2;
        private Hand activeHand;
        Rigidbody rigid;
        float startTime = 0;
        
        private void Start()
        {
            rigid = GetComponent<Rigidbody>();
            toggle = toggleVR.GetComponent<DevHelper>().VRToggle;
        }
        private void Update()

        {

            if (toggle)
            {
                if (hand.GetGrabStarting() == GrabTypes.Grip || hand2.GetGrabStarting() == GrabTypes.Grip)
                {
                    if (hand.GetGrabStarting() == GrabTypes.Grip)
                        activeHand = hand;
                    else
                        activeHand = hand2;
                    if (activeHand.ObjectIsAttached(this.gameObject))
                    {
                        return;
                    }
                    startTime = Time.time;
                    going = true;

                    //rigid.maxAngularVelocity = 5 ;
                    //if (GetComponent<VelocityEstimator>().GetAccelerationEstimate().magnitude < 2.0f)
                    //{
                    Vector3 handtran = activeHand.transform.position;
                    Vector3 hammertran = transform.position;
                    Vector3 vec = (handtran - hammertran).normalized;
                    Vector3 newVector = new Vector3(0.0f, -1.0f, 0.0f);
                    rigid.AddExplosionForce(10.0f, hammertran + newVector, 100.0f, 0.0f, ForceMode.Force);
                    //}
                    transform.rotation.Normalize();

                }
                if (going)
                {
                    rigid.useGravity = false;
                    //if(GetComponent<VelocityEstimator>().GetVelocityEstimate().magnitude < 5.0f)
                    //{
                    Vector3 handtran = activeHand.transform.position;
                    Vector3 hammertran = transform.position;
                    float dist = (hammertran - handtran).magnitude;
                    transform.position = Vector3.Lerp(transform.position, activeHand.transform.position, Mathf.Max(0.001f, Mathf.Pow(1.5f, Mathf.Pow(1.5f, (Time.time - startTime - 1.5f))) - 1.5f));
                    Vector3 empty = new Vector3(0.0f, 0.0f, 0.0f);
                    rigid.velocity = empty;
                    //Vector3 rot = new Vector3(-90, 0, 0);
                    Quaternion rot = activeHand.objectAttachmentPoint.transform.rotation;
                    //Quaternion.Euler(0.0f, 0.0f,0.0f);
                    transform.rotation = Quaternion.Lerp(transform.rotation, rot, 0.1f * (Mathf.Max(0.01f, 1.5f - Mathf.Sqrt(dist))));
                    //} else
                    //{
                    //    Vector3 handtran = hand.transform.position;
                    //    Vector3 hammertran = transform.position;
                    //    Vector3 vec = (handtran - hammertran) * 4.0f;
                    //    vec[1] = (handtran[1] - hammertran[1]) * 10.0f;
                    //    rigid.AddForce(vec, ForceMode.Acceleration);

                    //    // transform.position = (handtran);
                    //}
                    if (dist < 0.08f)
                    {
                        going = false;
                        rigid.useGravity = true;
                        activeHand.AttachObject(this.gameObject, GrabTypes.Grip);

                    }

                }
                if (activeHand.GetGrabEnding() == GrabTypes.Grip)
                {
                    rigid.velocity = GetComponent<VelocityEstimator>().GetVelocityEstimate();

                    going = false;
                    rigid.useGravity = true;
                }
            }
        }

    }
}
