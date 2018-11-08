using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Valve.VR.InteractionSystem
{

public class MagnifyTest : MonoBehaviour {
        private LineRenderer lineRenderer;
        public Material material;
        //public float thickness = 0.01f;
        //public float scale = 0.1f;
        public Transform source;
        public int beamQuality = 20;
        public float beamLength = 5.0f;
        private Transform objectTrans;
        private Gradient gradient;
        private GradientColorKey[] colorKey;
        private GradientAlphaKey[] alphaKey;
        private float testMin = 1.0f;
        private float testMax = 0.0f;
        // Use this for initialization
        private bool fucked = false;
        private bool debugging = false;
        void Start () {
            CreateLine();
            CreateCurve(0.0f);
            gradient = new Gradient();
            colorKey = new GradientColorKey[2];
            alphaKey = new GradientAlphaKey[4];
            SetGradient(CalculateAlpha());
        }

        // Update is called once per frame
        void Update () {

            //For most cases you can get away with Lerping rotations. 
            //That's because the angle used "under the hood" in a quaternion is half the angle of rotation
            // WHAT!?
            float alpha = CalculateAlpha();
            CreateCurve(alpha);
            lineRenderer.colorGradient = SetGradient(alpha);

        }
        float CalculateAlpha()
        {
            Vector3 dist = Vector3.Normalize(this.transform.position - source.position);
            return Mathf.Pow(Mathf.Max(Vector3.Dot(dist, this.transform.forward.normalized), 0.0f), 5.0f);
        }
        Gradient SetGradient(float breakPoint)
        {
            if (debugging)
            {
                if (breakPoint > testMax)
                {
                    testMax = breakPoint;
                    Debug.Log("New Maximum: " + testMax);
                }
                if (breakPoint < testMin)
                {
                    testMin = breakPoint;
                    Debug.Log("New Minimum: " + testMin);
                }
            }

            gradient = new Gradient();
            colorKey = new GradientColorKey[2];
            alphaKey = new GradientAlphaKey[4];
            colorKey[0].color = Color.white;
            colorKey[0].time = 0.0f;
            colorKey[1].color = Color.yellow;
            colorKey[1].time = 1.0f ;
            //n - incr*5 = 0
            //n = qual
            //incr = len/qual
            //qual - len/qual*5 = 0
            //(20 - 2/20*5)
            //incr*5 = 20
            //incr = 4
            //incrNorm = 0.2

            alphaKey[0].alpha = 0.2f;
            alphaKey[0].time = 0.0f;
            alphaKey[1].alpha = 1.0f;
            alphaKey[1].time = 0.4f;
            alphaKey[2].alpha = 0.2f;
            alphaKey[2].time = 0.5f;
            alphaKey[3].alpha = 0.0f;
            alphaKey[3].time = 0.6f;

            gradient.SetKeys(colorKey, alphaKey);
            
            return gradient;
        }
        void CreateLine()
        {
            GameObject objectTransParent = new GameObject("Parent");

            objectTrans = objectTransParent.transform;
            objectTrans.SetParent(this.transform);
            objectTransParent.transform.localRotation = Quaternion.Euler(0, 0, 0);

            //scale = Player.instance.transform.lossyScale.x;

            lineRenderer = new LineRenderer();

            GameObject newObject = new GameObject("LineRenderer");
            newObject.transform.SetParent(objectTrans);

            lineRenderer = newObject.AddComponent<LineRenderer>();
            lineRenderer.transform.position = this.transform.position;
            lineRenderer.transform.localRotation = Quaternion.Euler(0, 0, 0);
            lineRenderer.receiveShadows = false;
            lineRenderer.useWorldSpace = false; 
            lineRenderer.reflectionProbeUsage = UnityEngine.Rendering.ReflectionProbeUsage.Off;
            lineRenderer.lightProbeUsage = UnityEngine.Rendering.LightProbeUsage.Off;
            lineRenderer.shadowCastingMode = UnityEngine.Rendering.ShadowCastingMode.Off;
            lineRenderer.material = material;
#if (UNITY_5_4)
                lineRenderer.SetWidth(thickness, thickness);
#else
            //lineRenderer.startWidth = 0.0f;
            //lineRenderer.endWidth = thickness;
            
#endif
           

        }
        void CreateCurve(float power)
        {
            //length:
            lineRenderer.transform.localScale = new Vector3(1.0f,1.0f,power);
            float scale = 0.05f;
            Keyframe[] keys = new Keyframe[beamQuality];
            Vector3[] positions = new Vector3[beamQuality];
            float increment = beamLength / (float)beamQuality;
            //Yes we have to do this. 
            //Because Unity's line renderer was made by a monkey with a typewriter.
            for (int i = 0; i < positions.Length; i++)
            {
                positions[i] = new Vector3(0.0f, 0.0f, i * increment);
                // keyframe args: time, value
                //gotta find the nearest multiple of 0.05
                keys[i] = new Keyframe((float)i/(float)positions.Length, Mathf.Abs(scale*(float)((float)positions.Length-((float)i*5.0f)) * increment)); //; * power);
                //keys[i].inTangent = 0.0f;
                //keys[i].outTangent = 0.0f;
                keys[i].weightedMode = WeightedMode.Both;
                keys[i].outWeight = 0.0f;
                keys[i].inWeight = 0.0f;
                //THIS WAS SO MUCH WORK
                //TO CREATE A STRAIGHT LINE
            }
            // But we had to, because it can't do a variable gradient
            // If we don't define points and tangents manually.
            // Shoot me
            lineRenderer.positionCount = beamQuality;
            lineRenderer.SetPositions(positions);
            AnimationCurve fuckingCurve = new AnimationCurve(keys);
            lineRenderer.widthCurve = fuckingCurve;
        }
    }
}
