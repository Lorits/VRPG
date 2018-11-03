using System.Collections;

using System.Collections.Generic;

using UnityEngine;

using UnityEngine.XR;

public class toggleVR : MonoBehaviour
{
    public bool VR_Toggle = false;

    void Start()
    {
        XRSettings.enabled = VR_Toggle;
    }
}