//Attach this script to a GameObject with an Animator component attached.
//For this example, create parameters in the Animator and name them “Crouch” and “Jump”
//Apply these parameters to your transitions between states

//This script allows you to trigger an Animator parameter and reset the other that could possibly still be active. Press the up and down arrow keys to do this.

using UnityEngine;

public class UnlockPadlock : MonoBehaviour
{
    Animator m_Animator;
    private GameObject padlock;
    void Start()
    {
        //Get the Animator attached to the GameObject you are intending to animate.
        m_Animator = gameObject.GetComponent<Animator>();
        m_Animator.ResetTrigger("keyholing");

        //m_Animator.SetTrigger("keyholing");

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
    }
}