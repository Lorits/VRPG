using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Valve.VR.InteractionSystem
{
    public class Midpoint : MonoBehaviour
    {
        public Transform cammy;
        public Transform rightie;
        // Use this for initialization
        void Start()
        {
            Debug.Log("hi");
        }

        // Update is called once per frame
        void Update()
        {
            Vector3 dist = rightie.position - cammy.position;
            transform.position = rightie.position + dist;
        }
    }
}