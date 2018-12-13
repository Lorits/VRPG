using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Valve.VR.InteractionSystem
{
    public class CodeUnlock : MonoBehaviour
    {
        public LinearMapping amplitude;
        public LinearMapping frequency;
        public Rigidbody latch;
        private bool locked = true;
        // Use this for initialization
        void Start()
        {

        }

        // Update is called once per frame
        void Update()
        {
            //foreach (KeyCode vKey in System.Enum.GetValues(typeof(KeyCode)))
            //{
            //    if (Input.GetKey(vKey))
            //    {
            //        Debug.Log(vKey.ToString());

            //    }
            //}
            if (Input.GetKeyDown(KeyCode.F))
                    {
                //        Debug.Log("Respect");
                //latch.isKinematic = false;

                    }
            if (Input.GetKeyDown(KeyCode.Space))
            {
                //Debug.Log("Locked = "+locked+", Amplitude = " +frequency.value + ", Amplitude rounded = "+ Mathf.RoundToInt(frequency.value * 10.0f)
                //          + ", Frequency = " + amplitude.value + ", Frequency rounded = " + Mathf.RoundToInt(amplitude.value * 10.0f));

            }
            if (locked)
            {
                if (Mathf.RoundToInt(frequency.value * 10.0f) == 4)
                {
                    if (Mathf.RoundToInt(amplitude.value * 10.0f) == 8)
                    {
                        latch.isKinematic = false;
                    }
                }
            }
        }
    }
}