using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Valve.VR;
using Valve.VR.InteractionSystem;

namespace Valve.VR.InteractionSystem.Sample
{
    public class RacecarController : MonoBehaviour
    {
        public float maxspeed = 2.0f;
        public float minspeed = 10000.0f;

        public float brakeforce = 0.9f; // lerp value
        public float acceleration = 0.5f; // lerp value

        public Transform modelJoystick;
        public float joystickRot = 20;

        public Transform modelTrigger;
        public float triggerRot = 20;
        private float speed = 30.0f;
        public Transform car;

        //public Transform buttonBrake;
        //public Transform buttonReset;

        //ui stuff

        //public Canvas ui_Canvas;
        //public Image ui_rpm;
        //public Image ui_speed;
        //public RectTransform ui_steer;

        //public float ui_steerangle;

        //public Vector2 ui_fillAngles;

        //public Transform resetToPoint;

        [SteamVR_DefaultActionSet("buggy")]
        public SteamVR_ActionSet actionSet;

        //[SteamVR_DefaultAction("Steering", "buggy")]
        //public SteamVR_Action_Vector2 a_steering;

        [SteamVR_DefaultAction("Throttle", "buggy")]
        public SteamVR_Action_Single a_trigger;

        //[SteamVR_DefaultAction("Brake", "buggy")]
        //public SteamVR_Action_Boolean a_brake;

        //[SteamVR_DefaultAction("Reset", "buggy")]
        //public SteamVR_Action_Boolean a_reset;

        //private float usteer;

        private Interactable interactable;

        private Quaternion trigSRot;

        private Quaternion joySRot;

        //private Coroutine resettingRoutine;

        //private Vector3 initialScale;

        private void Start()
        {
            joySRot = modelJoystick.localRotation;
            trigSRot = modelTrigger.localRotation;

            interactable = GetComponent<Interactable>();
            interactable.activateActionSetOnAttach = actionSet;
        }

        private void Update()
        {
            Vector2 steer = Vector2.zero;
            float throttle = 0;
            float brake = 0;

            bool reset = false;

            bool b_brake = false;
            bool b_reset = false;


            if (interactable.attachedToHand)
            {
                SteamVR_Input_Sources hand = interactable.attachedToHand.handType;

                //steer = a_steering.GetAxis(hand);

                throttle = a_trigger.GetAxis(hand);
                //b_brake = a_brake.GetState(hand);
                //b_reset = a_reset.GetState(hand);
                //brake = b_brake ? 1 : 0;
                //reset = a_reset.GetStateDown(hand);
            }


            //if (ui_Canvas != null)
            //{
            //    //ui_Canvas.gameObject.SetActive(interactable.attachedToHand);

            //    //usteer = Mathf.Lerp(usteer, steer.x, Time.deltaTime * 9);
            //    //ui_steer.localEulerAngles = Vector3.forward * usteer * -ui_steerangle;
            //    //ui_rpm.fillAmount = Mathf.Lerp(ui_rpm.fillAmount, Mathf.Lerp(ui_fillAngles.x, ui_fillAngles.y, throttle), Time.deltaTime * 4);
            //    //float speedLim = 40;
            //    //ui_speed.fillAmount = Mathf.Lerp(ui_fillAngles.x, ui_fillAngles.y, 1 - (Mathf.Exp(-buggy.speed / speedLim)));

            //}

            modelJoystick.localRotation = joySRot;
            /*if (input.AttachedHand != null && input.AttachedHand.IsLeft)
            {
                Joystick.Rotate(steer.y * -joystickRot, steer.x * -joystickRot, 0, Space.Self);
            }
            else if (input.AttachedHand != null && input.AttachedHand.IsRight)
            {
                Joystick.Rotate(steer.y * -joystickRot, steer.x * joystickRot, 0, Space.Self);
            }
            else*/
            //{
            modelJoystick.Rotate(steer.y * -joystickRot, steer.x * -joystickRot, 0, Space.Self);
            //}

            modelTrigger.localRotation = trigSRot;
            modelTrigger.Rotate(throttle * -triggerRot, 0, 0, Space.Self);
            //buttonBrake.localScale = new Vector3(1, 1, b_brake ? 0.4f : 1.0f);
            //buttonReset.localScale = new Vector3(1, 1, b_reset ? 0.4f : 1.0f);

            //buggy.steer = steer;
            if (interactable.attachedToHand && throttle > 0.1f)
            {
                speed = Mathf.Lerp(speed, maxspeed, acceleration);

                car.GetComponent<carLoop>().speed = Mathf.Max((int)speed, (int)maxspeed);
            }
            else
            {
                speed = Mathf.Lerp(speed, minspeed, brakeforce);
                car.GetComponent<carLoop>().speed = Mathf.Min((int)speed, (int)minspeed);

            }
            //car.GetComponent<carLoop>().speed = (int)Mathf.Floor(throttle*10.0f);
            //buggy.handBrake = brake;
            //buggy.controllerReference = transform;
        }




    }
}