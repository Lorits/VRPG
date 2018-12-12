using System.Collections;
using System.Collections.Generic;
using UnityEngine;
namespace Valve.VR.InteractionSystem
{

    public class carLoop : MonoBehaviour
    {
        public bool autodrive = true;
        public bool onTrack = true;
        private Quaternion[] rotations;
        private Vector3[] positions;
        public int pointLength = 24;
        public int speed = 5;
        private int count = 0;
        private int currentpos = 0;
        public float radi = 1.0f;
        public DetachableTrack curvedPiece;
        public DetachableTrack straightPiece;
        public Transform target;
        private bool flying = false;
        public MeshRenderer nohole;
        public MeshRenderer hole;
        public MeshRenderer bricks;
        // Use this for initialization
        void Start()
        {

            rotations = new Quaternion[pointLength];
            positions = new Vector3[pointLength];

            Transform result;
            string cyl;
            Transform pointsContainer = gameObject.transform.parent.Find("CurvePoints");
            //Debug.Log("Parent = " +pointsContainer.name);
            for (int i = 0; i < pointLength; i++)
            {
                cyl = "Point (" + (i + 1).ToString() + ")";
                result = pointsContainer.transform.Find(cyl);

                if (result)
                {
                    positions[i] = result.position;
                    rotations[i] = result.rotation;
                    //Debug.Log("Found i="+i+", Pos: " + positions[i]+", cyl="+cyl);
                    //Debug.Log("Rot: " + rotations[i]);
                }
            }
            //for (int i = 0; i < pointLength; i++)
            //{
            //  Debug.Log("Pos: " + positions[i]);
            //    Debug.Log("Rot: " + rotations[i]);
            // }
        }

        // Update is called once per frame
        private void OnCollisionEnter(Collision collision)
        {
            if(collision.transform == target)
            {
                Debug.Log("Ouch");
                nohole.enabled = false;
                hole.enabled = true;
                bricks.enabled = true;
                Destroy(target.gameObject);

                Destroy(gameObject);
                
            }
        }
        void Update()
        {
            //flying = true;
            if (flying)
            {
                //transform.position = new Vector3(Mathf.Lerp(transform.position.x, target.position.x, 0.03f), Mathf.Lerp(transform.position.y, target.position.y, 0.03f), transform.position.z);

                //transform.position = new Vector3(transform.position.x, Mathf.Lerp(transform.position.y, target.position.y, 0.05f), transform.position.z);
                Vector3 targetDir = (target.position - transform.position).normalized;
                Quaternion _lookRotation = Quaternion.LookRotation(targetDir) * Quaternion.Euler(Vector3.up*-90);
                transform.rotation = Quaternion.Slerp(transform.rotation, _lookRotation, radi);
                //transform.rotation = Quaternion.LookRotation(Vector3.RotateTowards(transform.right, targetDir, 0.00001f, radi));
                transform.position = Vector3.MoveTowards(transform.position, target.position, 0.02f);

            }
            if (onTrack)
            {
                if (count >= 16 && count < 20 && !curvedPiece.attached)
                {
                    onTrack = false;
                    transform.GetComponent<Rigidbody>().velocity = Vector3.zero;

                    Vector3 velocity = (new Vector3(1000 / speed, 0, 0));
                    // Here we adjust the angle the car is leaving at so it is sure to hit the crack in the wall
                    // Otherwise it would hit the ceiling
                    // PROBLEM: Unity's physics are apparently not deterministic. Don't get the same result every time.
                    if (speed == 2) // for drag = 1
                    {
                        //transform.GetComponent<Rigidbody>().useGravity = false;

                        flying = true;
                        transform.Rotate(0, 0, -10, Space.Self);
                    }
                    if (speed == 1) // for drag = 1
                    {
                       // transform.GetComponent<Rigidbody>().useGravity = false;

                        flying = true;
                        transform.Rotate(0, 0, -25, Space.Self);
                    }
                    transform.GetComponent<Rigidbody>().AddRelativeForce(velocity);

                }
                if (count >= 1 && count < 6 && !straightPiece.attached)
                {
                    onTrack = false;
                    Vector3 velocity = (new Vector3(1000 / speed, 0, 0));           //not exactly elegant, should fix
                    transform.GetComponent<Rigidbody>().AddRelativeForce(velocity);//    AddForce(velocity);//         = velocity;

                }
                if (autodrive)
                {
                    transform.position = Vector3.Lerp(positions[count], positions[(count + 1) % (pointLength)], 1.0f / (float)speed * (float)currentpos);
                    transform.rotation = Quaternion.Lerp(rotations[count], rotations[(count + 1) % (pointLength)], 1.0f / (float)speed * (float)currentpos);
                    currentpos++;
                    if (currentpos > speed)
                    {
                        currentpos = 0;
                        count++;
                        if (count >= pointLength)
                        {
                            count = 0;
                        }
                    }
                }
                else
                {

                }
            }
        }
    }
}
