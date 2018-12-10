using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Valve.VR.InteractionSystem{
    public class DetachableTrack : MonoBehaviour
    {

        public Transform trackPos;
        public float attractDistance = 0.3f;
        public bool attached = false;
        // Use this for initialization
        private Rigidbody rigid;
        private Hand.AttachmentFlags attachmentFlags = Hand.defaultAttachmentFlags & (~Hand.AttachmentFlags.SnapOnAttach) & (~Hand.AttachmentFlags.DetachOthers) & (~Hand.AttachmentFlags.VelocityMovement);
        private bool holding = false;
        void Start()
        {
            rigid = transform.GetComponent<Rigidbody>();
        }
        //-------------------------------------------------
        // Called when this GameObject becomes attached to the hand
        //-------------------------------------------------
        private void OnAttachedToHand(Hand hand)
        {
            attached = false;
            holding = true;
            rigid.useGravity = true;
            rigid.isKinematic = false;
        }
        

        //-------------------------------------------------
        // Called when this GameObject is detached from the hand
        //-------------------------------------------------
        private void OnDetachedFromHand(Hand hand)
        {
            holding = false;
        }


        // Update is called once per frame
        void Update()
        {
            if (!attached && !holding)
            {
                float dist = Vector3.Distance(trackPos.position, transform.position);

                if (dist < attractDistance)
                {
                    rigid.useGravity = false;
                    rigid.isKinematic = true;
                    transform.position = Vector3.Lerp(transform.position, trackPos.position, 0.5f);
                    transform.rotation = Quaternion.Lerp(transform.rotation, trackPos.rotation, 0.5f);
                    if (dist < 0.005)
                    {
                        transform.rotation = trackPos.rotation;
                        transform.position = trackPos.position;
                        attached = true;
                        rigid.useGravity = false;
                        rigid.isKinematic = true;
                    }
                }
            }
        }
    }

}
