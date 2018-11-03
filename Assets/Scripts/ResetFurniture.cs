using UnityEngine;
using System.Collections;
using UnityEngine.SceneManagement;

namespace Valve.VR.InteractionSystem
{
    public class ResetFurniture : MonoBehaviour
    {
        public Transform[] testob;
        public HoverButton hoverButton;


        private void Start()
        {
            hoverButton.onButtonDown.AddListener(OnButtonDown);
        }

        private void OnButtonDown(Hand hand)
        {
            Reset();
        }

        private void Reset()
        {

            //Transform obj;
            //obj = gameObject.transform.Find("Cabinet_Parent");
            //for(int i = 0; i<testob.Length; i++)
            //{
            //    testob[i].localPosition = new Vector3(0.0f, 0.0f, 0.0f);
            //}

            SceneManager.LoadScene(0);
            //Application.LoadLevel();
            //GameObject planting = GameObject.Instantiate<GameObject>(prefab);
            //planting.transform.position = this.transform.position;
            //planting.transform.rotation = Quaternion.Euler(0, Random.value * 360f, 0);

            //planting.GetComponentInChildren<MeshRenderer>().material.SetColor("_TintColor", Random.ColorHSV(0f, 1f, 1f, 1f, 0.5f, 1f));

            //Rigidbody rigidbody = planting.GetComponent<Rigidbody>();
            //if (rigidbody != null)
            //    rigidbody.isKinematic = true;


            //Vector3 initialScale = Vector3.one * 0.01f;
            //Vector3 targetScale = Vector3.one * (1 + (Random.value * 0.25f));

            //float startTime = Time.time;
            //float overTime = 0.5f;
            //float endTime = startTime + overTime;

            //while (Time.time < endTime)
            //{
            //    planting.transform.localScale = Vector3.Slerp(initialScale, targetScale, (Time.time - startTime) / overTime);
            //    yield return null;
            //}


            //if (rigidbody != null)
            //    rigidbody.isKinematic = false;
        }
    }
}