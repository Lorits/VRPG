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
        public Material material;
        private LineRenderer lineRenderer;
        //public Transform magnet;
        //public Transform anch;
        //private Transform objectTrans;

        Vector3[] positions;// = new Vector3[beamQuality];

        void Start()
        {
            XRSettings.enabled = VRToggle;
            if (persistentSceneView)
            {
#if UNITY_EDITOR
                UnityEditor.SceneView.FocusWindowIfItsOpen(typeof(UnityEditor.SceneView));
#endif
            }
            Teleport.instance.CancelTeleportHint();
            //positions = new Vector3[2];
            //CreateLine();
        }
        private void Update()
        {
            //CreateCurve();


        }
        //void CreateCurve()
        //{
        //    lineRenderer.transform.localScale = new Vector3(1.0f, 1.0f, 1.0f);
        //    positions[0] = anch.position;
        //    positions[1] = magnet.position;
        //    lineRenderer.SetPositions(positions);

        //}
        //void CreateLine()
        //{
        //    GameObject objectTransParent = new GameObject("Parent");

        //    objectTrans = objectTransParent.transform;
        //    objectTrans.SetParent(this.transform);
        //    objectTransParent.transform.localRotation = Quaternion.Euler(0, 0, 0);

        //    //scale = Player.instance.transform.lossyScale.x;

        //    lineRenderer = new LineRenderer();

        //    GameObject newObject = new GameObject("LineRenderer");
        //    newObject.transform.SetParent(objectTrans);

        //    lineRenderer = newObject.AddComponent<LineRenderer>();
        //    lineRenderer.transform.position = this.transform.position;
        //    lineRenderer.transform.localRotation = Quaternion.Euler(0, 0, 0);
        //    lineRenderer.receiveShadows = false;
        //    lineRenderer.useWorldSpace = false;
        //    lineRenderer.reflectionProbeUsage = UnityEngine.Rendering.ReflectionProbeUsage.Off;
        //    lineRenderer.lightProbeUsage = UnityEngine.Rendering.LightProbeUsage.Off;
        //    lineRenderer.shadowCastingMode = UnityEngine.Rendering.ShadowCastingMode.Off;
        //    lineRenderer.material = material;

        //}
    }
}
