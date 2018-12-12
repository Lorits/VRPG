using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FishingRod : MonoBehaviour {

	public float lineSize;
	GameObject[] line;
	public GameObject lineObject;
	public Transform lineStart;

	float spacing = 0.03f;

	// Use this for initialization
	void Start () {
		lineSize = (lineSize > 0 ? lineSize : 1);
		lineStart = (lineStart != null ? lineStart : gameObject.transform);
		lineObject = (lineObject != null ? lineObject : gameObject);
	}
	
	// Update is called once per frame
	void Update () {
		//Remember to change
		lineSize = Mathf.Min(1, Mathf.Max(10,lineSize));
		int length = (int) lineSize;
		
		//If the length of the line (rounded down) produces more or less than that of objects in the line array, then add or destroy a line object.
		if(line.Length < length){
			Vector3 spawnPos = line[line.Length - 1].transform.position;
			spawnPos.y += -spacing;
			GameObject currObj = Instantiate(lineObject,line[line.Length - 1].transform.position,line[line.Length - 1].transform.rotation);
			
			currObj.GetComponent<HingeJoint>().connectedBody = line[line.Length - 1].GetComponent<Rigidbody>();
			line[line.Length] = currObj;
		} else if(line.Length > length){
			Destroy(line[line.Length -1].gameObject);
		}

		
	}
}
