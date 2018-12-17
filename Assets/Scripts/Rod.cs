using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Valve.VR.InteractionSystem
{
    public class Rod : MonoBehaviour
    {
        public SpringJoint spring;
        public Rigidbody rigid;
        public BoxCollider col;
        public Transform anch;
        public Transform magAnch;
        public MagnetScript mag;
        public Transform magAnchRight;
        public Transform magAnchLeft;
        //private Transform objectTrans;
        //public Material material;

        private float initDist;
        public Transform magnet;
        //Vector3[] positions;// = new Vector3[beamQuality];

        // Use this for initialization
        void Start()
        {
            //positions = new Vector3[2];
            //CreateLine();

        }
        //void CreateCurve()
        //{
        //    lineRenderer.transform.localScale = new Vector3(1.0f, 1.0f, 1.0f);
        //    positions[0] = anch.position;
        //    positions[1] = magnet.position;
        //    lineRenderer.SetPositions(positions);

        //}

        // Update is called once per frame
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
        private void FixedUpdate()
        {
            float q = 0.0f;

            // always draw a 5-unit colored line from the origin
            Color color = new Color(0.3f, 0.3f, 0.3f);
            q = q + 0.01f;

            if (q > 1.0f)
            {
                q = 0.0f;
            }
            if (mag.behindWall)
            {

                if (anch.position.z > magAnch.position.z && magAnch.position.z < magAnchLeft.position.z)
                {
                    magAnch.position = new Vector3(magAnch.position.x, magAnch.position.y, magAnch.position.z + (anch.position.z - magAnch.position.z) * 0.01f);
                }
                if (anch.position.z < magAnch.position.z && magAnch.position.z > magAnchRight.position.z)
                {
                    magAnch.position = new Vector3(magAnch.position.x, magAnch.position.y, magAnch.position.z + (anch.position.z - magAnch.position.z) * 0.01f);
                }
                //if (Input.GetKey(KeyCode.A))
                //{
                //    //spring.maxDistance -= 0.06f;
                //    mag.dist -= 0.06f;

                //}
                //if (Input.GetKey(KeyCode.S))
                //{
                //    //spring.maxDistance += 0.02f;
                //    mag.dist += 0.02f;
                //}
                Debug.DrawLine(anch.position, magAnch.position, color);

            }
            else
            {
                Debug.DrawLine(anch.position, magnet.position, color);

                //if (Input.GetKey(KeyCode.A))
                //{
                //    spring.maxDistance -= 0.02f;
                //}
                //if (Input.GetKey(KeyCode.S))
                //{
                //    spring.maxDistance += 0.02f;
                //}
            }
            rigid.AddForce(0, 0.000001f, 0, ForceMode.Acceleration); // force object to update, else will get stuck on floor

        }
        void Update()
        {

        }
    }
}