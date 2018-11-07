using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

namespace Valve.VR.InteractionSystem
{
    public class Switch : MonoBehaviour
    {
        public Transform lever;
        public Transform start;
        public Transform end;
        public Light[] lightlight;
        public MeshRenderer[] lightrend;
        public CustomPlaySound sound;
        public bool power = false;
        // Use this for initialization
        void Start()
        {
        }

        protected void HandHoverUpdate(Hand hand)
        {
            GrabTypes startingGrabType = hand.GetGrabStarting();

            if (startingGrabType != GrabTypes.None)
            {
                if (startingGrabType == GrabTypes.Pinch)
                {
                    power = !power;
                    //plight.intensity = power ? 1.5f : 0.0f;
                    for (int i = 0; i < lightlight.Length; i++)
                    {
                        lightlight[i].enabled = power;                     
                    }
                    for (int i = 0; i < lightrend.Length; i++)
                    {
                        lightrend[i].enabled = power;
                    }

                    lever.SetPositionAndRotation(power?start.position:end.position, power?start.rotation:end.rotation);

                    sound.SetAudioSource(power ? 1 : 0);
                    sound.Play();
                }
            }
        }
    }
}