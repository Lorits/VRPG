using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyOtherOnDestroy : MonoBehaviour {
    public Transform objectToDestroy;
    // Use this for initialization

    private void OnDestroy()
    {
        Destroy(objectToDestroy);
    }
}
