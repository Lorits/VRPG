//======= Copyright (c) Valve Corporation, All rights reserved. ===============
//
// Purpose: Drives a linear mapping based on position between 2 positions
//
//=============================================================================

using UnityEngine;
using System.Collections;

namespace Valve.VR.InteractionSystem
{
	//-------------------------------------------------------------------------
	[RequireComponent( typeof( Interactable ) )]
	public class LinearMoveFurniture : MonoBehaviour
	{
        //nicolai's variables
        public int weightThreshold = 0;
        private int heaviness = 0;
        public float speedLimit = 0.004f;
        public bool movelocked = false;
        public CustomPlaySound soundscript;
        private bool hasEnded = false;
        public Transform startPosition;
		public Transform endPosition;
		public LinearMapping linearMapping;
        //defaults:
		public bool repositionGameObject = true;
		public bool maintainMomemntum = true;
		public float momemtumDampenRate = 14.0f;
        private bool soundPlaying = false;
        protected Hand.AttachmentFlags attachmentFlags = Hand.AttachmentFlags.DetachOthers;
        protected float initialMappingOffset;
        protected int numMappingChangeSamples = 5;
        protected float[] mappingChangeSamples;
        protected float prevMapping = 0.0f;
        protected float mappingChangeRate;
        protected int sampleCount = 0;

        protected Interactable interactable;


        protected virtual void Awake()
        {
            mappingChangeSamples = new float[numMappingChangeSamples];
            interactable = GetComponent<Interactable>();
        }

        protected virtual void Start()
		{
            if ( linearMapping == null )
			{
				linearMapping = GetComponent<LinearMapping>();
			}

			if ( linearMapping == null )
			{
				linearMapping = gameObject.AddComponent<LinearMapping>();
			}

            initialMappingOffset = linearMapping.value;

			if ( repositionGameObject )
			{
				UpdateLinearMapping( transform );
			}
		}

        protected virtual void HandHoverUpdate( Hand hand )
        {
            GrabTypes startingGrabType = hand.GetGrabStarting();

            if (interactable.attachedToHand == null && startingGrabType != GrabTypes.None)
            {
                initialMappingOffset = linearMapping.value - CalculateLinearMapping( hand.transform );
				sampleCount = 0;
				mappingChangeRate = 0.0f;

                hand.AttachObject(gameObject, startingGrabType, attachmentFlags);
            }
		}
        public void ChangeWeight(int change)
        {
            heaviness += change;
            if (heaviness > weightThreshold)
                movelocked = true;
            if (heaviness <= weightThreshold)
                movelocked = false;
        }
        
        protected virtual void HandAttachedUpdate(Hand hand)
        {
            //if (heavycube.position[1] < transform.position[1])
               // movelocked = false;
            if (!soundPlaying && !hasEnded) { soundscript.Play(); soundPlaying = true; }
            if (!movelocked)
            {
                UpdateLinearMapping(hand.transform);


                if (linearMapping.value > .90 && !hasEnded)
                {
                    soundPlaying = false;
                    soundscript.Stop();
                    soundscript.SetAudioSource(1);
                    soundscript.Play();
                    hasEnded = true;
                }
            }


            if (hand.IsGrabEnding(this.gameObject))
            {
                hand.DetachObject(gameObject);
                soundPlaying = false;
                soundscript.Stop();
            }

        }

        protected virtual void OnDetachedFromHand(Hand hand)
        {
            CalculateMappingChangeRate();
        }


        protected void CalculateMappingChangeRate()
		{
			//Compute the mapping change rate
			mappingChangeRate = 0.0f;
			int mappingSamplesCount = Mathf.Min( sampleCount, mappingChangeSamples.Length );
			if ( mappingSamplesCount != 0 )
			{
				for ( int i = 0; i < mappingSamplesCount; ++i )
				{
					mappingChangeRate += mappingChangeSamples[i];
				}
				mappingChangeRate /= mappingSamplesCount;
			}
		}

        protected void UpdateLinearMapping( Transform updateTransform )
		{
           
                   
            prevMapping = linearMapping.value;
			linearMapping.value = Mathf.Clamp01( initialMappingOffset + CalculateLinearMapping( updateTransform ) );
            linearMapping.value = prevMapping+ Mathf.Clamp(linearMapping.value - prevMapping,0,speedLimit);
			mappingChangeSamples[sampleCount % mappingChangeSamples.Length] = ( 1.0f / Time.deltaTime ) * ( linearMapping.value - prevMapping );
			sampleCount++;

			if ( repositionGameObject )
			{
                //soundscript.Jitter();
				transform.position = Vector3.Lerp( startPosition.position, endPosition.position, linearMapping.value );
			}
            
		}

        protected float CalculateLinearMapping( Transform updateTransform )
		{
			Vector3 direction = endPosition.position - startPosition.position;
			float length = direction.magnitude; 
			direction.Normalize();

			Vector3 displacement = updateTransform.position - startPosition.position;

            return Vector3.Dot(displacement, direction) / length;
		}

        
		protected virtual void Update()
        {
            if ( maintainMomemntum && mappingChangeRate != 0.0f )
			{
				//Dampen the mapping change rate and apply it to the mapping
				mappingChangeRate = Mathf.Lerp( mappingChangeRate, 0.0f, momemtumDampenRate * Time.deltaTime );
				linearMapping.value = Mathf.Clamp01( linearMapping.value + ( mappingChangeRate * Time.deltaTime ) );

				if ( repositionGameObject )
				{
					transform.position = Vector3.Lerp( startPosition.position, endPosition.position, linearMapping.value );
				}
			}
		}
	}
}
