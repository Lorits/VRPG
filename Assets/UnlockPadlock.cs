//Attach this script to a GameObject with an Animator component attached.
//For this example, create parameters in the Animator and name them “Crouch” and “Jump”
//Apply these parameters to your transitions between states

//This script allows you to trigger an Animator parameter and reset the other that could possibly still be active. Press the up and down arrow keys to do this.

using UnityEngine;
using System.IO;
using UnityEditor;

public class UnlockPadlock : MonoBehaviour
{
    public AudioSource player;
    public AudioClip clip;
    Animator m_Animator;
    private GameObject padlock;

    private float startTime;
    private float currentTime;
    void Start()
    {
        //Get the Animator attached to the GameObject you are intending to animate.
        m_Animator = gameObject.GetComponent<Animator>();
        m_Animator.ResetTrigger("keyholing");
        player.clip = clip;

        //m_Animator.SetTrigger("keyholing");
        startTime = Time.deltaTime;
        currentTime = startTime;
    }

    void Update(){
        currentTime += Time.deltaTime;
        if(Input.GetKey("r")){
            startTime = currentTime;
        }
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("padlock"))
        {
            m_Animator.SetTrigger("keyholing");
            padlock = other.gameObject;
        }
    }
    public void openLock(){
        padlock.GetComponent<Animator>().SetTrigger("locktrigger");
        padlock.tag = "Untagged";
        padlock.GetComponent<SpringJoint>().breakForce = 500;
        player.Play();
        float Time = currentTime - startTime;
        WriteString(Time.ToString(), "Test Participant time: " + Time.ToString());
    }

    static void WriteString(string time, string writeOutput)
    {
        string path = System.Environment.GetFolderPath(System.Environment.SpecialFolder.Desktop);
        Debug.Log("Path " + path + "/test");

        if(!System.IO.Directory.Exists(path + "/test")){
            Directory.CreateDirectory(path + "/test");
            Debug.Log("Couldn't find folder, so folder is created");
        }
        //Write some text to the test.txt file
        StreamWriter writer = new StreamWriter(path + "/test/test " + time + ".txt", true);
        writer.WriteLine(writeOutput);
        writer.Close();
    }
}