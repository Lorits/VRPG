using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace Valve.VR.InteractionSystem
{
    public class RoombaLightSwitch : MonoBehaviour
    {
        public Transform lever;
        public Transform start;
        public Transform end;
        public CustomPlaySound sound;
        public bool power = false;
		public GameObject roomba;
        // Use this for initialization
		private bool dont = false;

        public AudioSource player;
        public AudioClip clip;

		void OnTriggerEnter(Collider coll){
			if(coll.gameObject == roomba.gameObject){
				dont = true;
			}
		}

		void OnTriggerExit(Collider coll){
			if(coll.gameObject == roomba.gameObject){
				dont = false;
			}
		}

        void Start()
        {
            player.clip = clip;
        }

        protected void HandHoverUpdate(Hand hand)
        {
            GrabTypes startingGrabType = hand.GetGrabStarting();

            if (startingGrabType != GrabTypes.None)
            {
                if (startingGrabType == GrabTypes.Pinch)
                {
                    power = !power;

					if(!dont){
						roomba.GetComponent<Roomba>().launchSucked();
					}else{
                        player.Play();
                    }

                    lever.SetPositionAndRotation(power?start.position:end.position, power?start.rotation:end.rotation);
                }
            }
        }
    }
}