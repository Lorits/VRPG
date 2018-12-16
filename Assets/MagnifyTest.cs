using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Valve.VR.InteractionSystem
{

public class MagnifyTest : MonoBehaviour {
        public float NowAlpha;
        public int exponent = 20;
        public float lightspan = 0.1f;
        //public float focalPoint = 0.5f;
        [Range(0.0f, 1.0f)] public float focalPoint = 0.1f;
        private LineRenderer lineRenderer;
        public Material material;

        //public float thickness = 0.01f;
        //public float scale = 0.1f;
        public Transform source;
        public int beamQuality = 20;
        public float beamLength = 5.0f;
        private Transform objectTrans;
        //private Gradient gradient;
        private GradientColorKey[] colorKey;
        private GradientAlphaKey[] alphaKey;
        Keyframe[] keys;// = new Keyframe[beamQuality];
        Vector3[] positions;// = new Vector3[beamQuality];

        void Start () {
            keys = new Keyframe[beamQuality];
            positions = new Vector3[beamQuality];

            CreateLine();
            CreateCurve(0.0f);
            //gradient = new Gradient();

            colorKey = new GradientColorKey[2];
            alphaKey = new GradientAlphaKey[5];
            SetGradient(CalculateAlpha());
        }
        // Update is called once per frame
        void Update () {
            
            //For most cases you can get away with Lerping rotations. 
            //That's because the angle used "under the hood" in a quaternion is half the angle of rotation
            // WHAT!?
            float alpha = CalculateAlpha();
            NowAlpha = alpha;
            CreateCurve(alpha);
            lineRenderer.colorGradient = SetGradient(alpha);
            if (Input.GetKeyDown(KeyCode.Space))
            {
                Vector3 dist = Vector3.Normalize(this.transform.position - source.position);
                float dot = Mathf.Min(1.0f, Mathf.Max(Vector3.Dot(dist, this.transform.forward.normalized),0.0f));
                float dotExp = Mathf.Pow(dot, exponent);
                Debug.Log("Dot = "+dot+", dotexp = "+dotExp);

            }

        }
        public float CalculateAlpha()
        {
            Vector3 dist = Vector3.Normalize(this.transform.position - source.position);
            float dot = Mathf.Min(1.0f, Mathf.Max(Vector3.Dot(dist, this.transform.forward.normalized), 0.0f));
            float dotExp = Mathf.Pow(dot, exponent);
            
            return dotExp;
        }
        Gradient SetGradient(float strength)
        {
            Gradient gradient;
            gradient = new Gradient();
            colorKey = new GradientColorKey[2];
            alphaKey = new GradientAlphaKey[5];
            colorKey[0].color = Color.white;
            colorKey[0].time = 0.0f;

            colorKey[1].color = Color.yellow;
            colorKey[1].time = 1.0f ;

            //start0
            //befMid
            //mid
            //aftMid
            //end0

            alphaKey[0].alpha = 0.0f; // start with no alpha
            alphaKey[0].time = 0.0f;

            alphaKey[1].alpha = 0.0f;
            alphaKey[1].time = focalPoint * (1 + lightspan); // build up

            alphaKey[2].alpha = 1.0f * strength;
            alphaKey[2].time = focalPoint; // strong light at focal point

            alphaKey[3].alpha = 0.0f;
            alphaKey[3].time = focalPoint * (1 - lightspan); //end light

            alphaKey[4].alpha = 0.0f;
            alphaKey[4].time = focalPoint * 1.5f; //end with no alpha (for nice fade)

            gradient.SetKeys(colorKey, alphaKey);
            //Debug.Log("Test");
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

        }
        void CreateCurve(float power)
        {
            //length:
            lineRenderer.transform.localScale = new Vector3(1.0f,1.0f,1.0f); 
            float scale = 0.1f;
            //Keyframe[] keys = new Keyframe[beamQuality];
            //Vector3[] positions = new Vector3[beamQuality];
            float increment = beamLength / (float)beamQuality;
            float focalPower = focalPoint*beamQuality;
            //Yes we have to do this. 
            //Because Unity's line renderer was made by a monkey with a typewriter.
            for (int i = 0; i < positions.Length; i++)
            {
                positions[i] = new Vector3(0.0f, 0.0f, i * increment);
                // keyframe args: time, value
                //gotta find the nearest multiple of 0.05
                keys[i] = new Keyframe((float)i/(float)positions.Length,Mathf.Abs(scale*(1.0f-(float)i/focalPower)) ); //; * power); //Mathf.Abs((float)((float)positions.Length*focalPower-((float)i)) * increment)
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
