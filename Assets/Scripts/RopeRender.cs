using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RopeRender : MonoBehaviour {
    private Transform[] joints;
    public int numJoints = 23;
    // Use this for initialization
    public Transform start;
    public Transform end;
    private Transform child;


    void Start () {
        joints = new Transform[numJoints];
        child = transform;
        RecursionFun(0);
    }
	void RecursionFun(int num)
    {
        joints[num] = child.GetChild(0);
        child = child.GetChild(0);
        if(num < numJoints - 1)
            RecursionFun(num + 1);
    }
    // Update is called once per frame
    void Update () {
        for(int i = 0; i< numJoints; i++)
        {
            joints[i].position = Vector3.Lerp(start.position, end.position, (float)i / (float)numJoints);
        }

    }
}
