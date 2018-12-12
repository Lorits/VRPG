using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Valve.VR.InteractionSystem {
    public class ActivateOnDestroy : MonoBehaviour
    {

        public Transform objectToActivate;
        // Use this for initialization

        private void OnDestroy()
        {
            objectToActivate.GetComponent<Interactable>().enabled = true;
        }
    }
}
