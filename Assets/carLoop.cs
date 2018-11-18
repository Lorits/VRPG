using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class carLoop : MonoBehaviour {
    private Quaternion[] rotations;
    private Vector3[] positions;
    public int pointLength = 24;
    public int speed = 5;
    private int count = 0;
    private int currentpos = 0;
	// Use this for initialization
	void Start () {

        rotations = new Quaternion[pointLength];
        positions = new Vector3[pointLength];

        Transform result;
        string cyl;
        Transform pointsContainer = gameObject.transform.parent.Find("CurvePoints");
        //Debug.Log("Parent = " +pointsContainer.name);
        for (int i = 0; i < pointLength; i++)
        {
            cyl = "Point (" + (i+1).ToString() + ")";
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
	void Update () {
        transform.position = Vector3.Lerp(positions[count], positions[(count + 1)%(pointLength)],1.0f/(float)speed*(float)currentpos);
        transform.rotation = Quaternion.Lerp(rotations[count], rotations[(count + 1) % (pointLength)], 1.0f / (float)speed * (float)currentpos);
        currentpos++;
        if(currentpos>speed){
            currentpos = 0;
            count++;
            if(count>=pointLength){
                count = 0;
            }
        }
	}
}
