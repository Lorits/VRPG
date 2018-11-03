using UnityEngine;
using System.Collections;
using Valve.VR;
using Valve.VR.InteractionSystem;

namespace Valve.VR.InteractionSystem.Sample
{
    public class ControllerPositionObjects : MonoBehaviour
    {
        public Transform Joystick;
        public float joyMove = 0.1f;


        [SteamVR_DefaultActionSet("platformer")]
        public SteamVR_ActionSet actionSet;

        [SteamVR_DefaultAction("Move", "platformer")]
        public SteamVR_Action_Vector2 a_move;

        [SteamVR_DefaultAction("Jump", "platformer")]
        public SteamVR_Action_Boolean a_jump;


        public Transform rotObj;

        public Transform move;
        private float prevAngle = 0.0f;

        private Vector3 movement;
        private bool jump;
        private float glow;
        private SteamVR_Input_Sources hand;
        private Interactable interactable;

        private void Start()
        {
            interactable = GetComponent<Interactable>();
            interactable.activateActionSetOnAttach = actionSet;
        }

        private void Update()
        {
            if (interactable.attachedToHand)
            {
                hand = interactable.attachedToHand.handType;
                Vector2 m = a_move.GetAxis(hand);
                movement = new Vector2(m.x, m.y);

                
                Vector3 mov = new Vector3(m.x, m.y, 0);
                Joystick.localPosition = mov* joyMove;
                float rot = Mathf.Atan2(m.x, m.y);
                float rotDeg = Mathf.Rad2Deg * rot;
                
                rotObj.Rotate(Vector3.up, rotDeg - prevAngle);
                //rotObj.rotation = Quaternion.Euler(new Vector3(0, , 0));
                prevAngle = rotDeg;
                //move.position = new Vector3(movement[0], 0.0f, movement[1]);

                jump = a_jump.GetStateDown(hand);
                glow = Mathf.Lerp(glow, a_jump.GetState(hand) ? 1.5f : 1.0f, Time.deltaTime * 20);
            }  else
            {
                //movement = Vector2.zero;
                jump = false;
                glow = 0;
            }



            //movement = Quaternion.AngleAxis(rot, Vector3.up) * movement;
           // if (jump)
            //{
                //Transform tr = rotObj;
            //Debug.Log(movement);
                //rotObj.Rotate[1] = rot;
           // }
            //jumpHighlight.sharedMaterial.SetColor("_EmissionColor", Color.white * glow);

            //character.Move(movement * 2, jump);

        }
    }
}