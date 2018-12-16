using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class DestroyOtherOnDestroy : MonoBehaviour {
    public List<GameObject> DestructionSphere;
    public GameObject Glass;
    public GameObject objectToDestroy;
    public GameObject pants;
    public AudioSource audio;
    public AudioClip clip;
    public GameObject key;

    void OnTriggerStay(Collider coll){
        foreach(GameObject Sphere in DestructionSphere){
            if(coll.gameObject == Sphere){
                if(Sphere.transform.parent.GetComponent<MagnifyTest>().CalculateAlpha() > 0.12f){
                    pants.GetComponent<Collider>().enabled = true;
                    audio.Play();
                    key.GetComponent<BoxCollider>().enabled = true;
                    Destroy(gameObject);
                }
            }
        }
    }

    // Use this for initialization
    void start(){
        audio.clip = clip;
    }

    private void OnDestroy()
    {
        Destroy(objectToDestroy);
    }
}
