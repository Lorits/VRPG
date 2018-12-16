//Attach this script to a GameObject with an Animator component attached.
//For this example, create parameters in the Animator and name them “Crouch” and “Jump”
//Apply these parameters to your transitions between states

//This script allows you to trigger an Animator parameter and reset the other that could possibly still be active. Press the up and down arrow keys to do this.

using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEditor;
using Valve.VR.InteractionSystem;

public class UnlockPadlock : MonoBehaviour
{
    public AudioSource player;
    public AudioClip clip;

    public Hand rightHand;
    public Hand leftHand;
    public GameObject user;

    private bool leftGrab = false, rightGrab = false;
    private string leftObj , rightObj;

    Animator m_Animator;
    private GameObject padlock;
    private List<string> objectLog;
    private List<string> positionLog;

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

        objectLog = new List<string>();
        positionLog = new List<string>();
    }

    void Update(){
        currentTime += Time.deltaTime;
        if(Input.GetKey("r")){
            startTime = currentTime;
            positionLog = new List<string>();
        }

        logHand(rightHand);
        logHand(leftHand);

        if(Time.frameCount % 40 == 0){
            positionLog.Add("Position x:" + user.transform.position.x + " z:" + user.transform.position.z + " at time:" + currentTime);
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
        WriteString(Time.ToString(), "Test Participant time: " + Time.ToString(), objectLog, positionLog);
    }

    static void WriteString(string time, string writeOutput, List<string> objOutput, List<string> posOutput)
    {
        string path = System.Environment.GetFolderPath(System.Environment.SpecialFolder.Desktop);
        Debug.Log("Path " + path + "/test");

        if(!System.IO.Directory.Exists(path + "/Test")){
            Directory.CreateDirectory(path + "/Test");
            Debug.Log("Couldn't find folder, so folder is created");
        }

        int participantNumber = 1;

        while(true){
            if(System.IO.Directory.Exists(path + "/Test/Test" + participantNumber)){
                participantNumber++;
            }else{
                break;
            }
        }

        Directory.CreateDirectory(path+"/Test/Test" + participantNumber);

        //Write some text to the test.txt file
        StreamWriter writer = new StreamWriter(path + "/Test/Test" + participantNumber + "/TimeLog.txt", true);
        writer.WriteLine(writeOutput);
        writer.Close();

        StreamWriter objWriter = new StreamWriter(path + "/Test/Test" + participantNumber + "/ObjLog.txt",true);
        if(objOutput.Count > 0){
        for(int i = 0; i < objOutput.Count - 1; i++){
            objWriter.WriteLine(objOutput[i]);
        }
        }else{
            objWriter.WriteLine("Didn't grab anything :O!");
        }
        objWriter.Close();

        StreamWriter posWriter = new StreamWriter(path + "/Test/Test" + participantNumber + "/PosLog.txt",true);
        for(int i = 0; i < posOutput.Count - 1; i++){
            posWriter.WriteLine(posOutput[i]);
        }
        posWriter.Close();

    }

     void logHand(Hand hand){
        GrabTypes startingGrabType = hand.GetGrabStarting();

        if(hand == rightHand){
            if(startingGrabType != GrabTypes.None){
                if(startingGrabType == GrabTypes.Pinch && !rightGrab){
                    rightGrab = true;
                    
                    rightObj = hand.currentAttachedObject.name;
                    objectLog.Add(rightObj +" Up     Time: " + currentTime);
                }
            }else if(rightGrab){
                rightGrab = false;

                objectLog.Add(rightObj +" Down     Time: " + currentTime);
            }
        }else if (hand == leftHand){
            if(startingGrabType != GrabTypes.None){
                if(startingGrabType == GrabTypes.Pinch && !leftGrab){
                    leftGrab = true;
                    
                    leftObj = hand.currentAttachedObject.name;
                    objectLog.Add(leftObj +" Up     Time: " + currentTime);
                }
            }else{
                leftGrab = false;

                objectLog.Add(rightObj +" Down     Time: " + currentTime);
            }
        }
    }
}