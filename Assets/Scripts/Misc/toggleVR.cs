using System.Collections;

using System.Collections.Generic;

using UnityEngine;

using UnityEngine.XR;
namespace Valve.VR.InteractionSystem
{
    public class toggleVR : MonoBehaviour
    {

        public bool VR_Toggle = false;

        void Start()
        {
            XRSettings.enabled = VR_Toggle;


        }
    }
}