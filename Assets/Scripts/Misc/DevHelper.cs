using System.Collections;

using System.Collections.Generic;

using UnityEngine;

using UnityEngine.XR;
//TODO: Prevent game view from stealing focus when hitting "pause"

namespace Valve.VR.InteractionSystem
{
    public class DevHelper : MonoBehaviour
    {
        [Tooltip("If true, prevents game tab from forcing itself in focus when hitting play")]
        public bool persistentSceneView = true;
        [Tooltip("If false, in theory prevents VR functionality from loading when hitting play")]
        public bool VRToggle = false;

        void Start()
        {
            XRSettings.enabled = VRToggle;
            if (persistentSceneView)
            {
#if UNITY_EDITOR
                UnityEditor.SceneView.FocusWindowIfItsOpen(typeof(UnityEditor.SceneView));
#endif
            }
        }
    }
}
