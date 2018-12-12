using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class Hammerable : MonoBehaviour
{
    Rigidbody m_Rigidbody;
    public PlaySound hitsound;
    public PlaySound breaksound;
    //public TextMesh textMesh;
    //public TextMesh shortText;
    private float damage = 0;
    private bool broken = false;
    public float coolDown = 2.0f;
    private float impactTime = 0.0f;
    //Foreign object collides with this one:
    void OnTriggerEnter(Collider other)
    {
        
        if (!broken && other.CompareTag("hammer") && Time.time-impactTime>coolDown)
        {
            Interactable interactable;
            interactable = other.GetComponentInParent<Interactable>();
            if (interactable.attachedToHand)
            {
                float impactVelocity = Vector3.Magnitude(other.GetComponentInParent<VelocityEstimator>().GetVelocityEstimate());
                //textMesh.text = "Hammertime at:\n" + impactVelocity.ToString("F2") + "speed";
                //shortText.text = impactVelocity.ToString("F2");
                if (impactVelocity > 3.0f)
                {
                    hitsound.Play();
                    impactTime = Time.time;
                    damage += impactVelocity;
                    if(damage > 15.0f)
                    {
                        breaksound.Play();
                        broken = true;
                        m_Rigidbody = GetComponent<Rigidbody>();
                        m_Rigidbody.constraints = RigidbodyConstraints.None;
                        m_Rigidbody.isKinematic = false;
                        m_Rigidbody.useGravity = true;
                        GetComponent<Interactable>().enabled = true;
                    }
               
                }
            }

        }

    }
}
