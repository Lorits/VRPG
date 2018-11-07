//======= Copyright (c) Valve Corporation, All rights reserved. ===============
//
// Purpose: Move the position of this object based on a linear mapping
//
//=============================================================================

using UnityEngine;
using System.Collections;

namespace Valve.VR.InteractionSystem
{
	//-------------------------------------------------------------------------
	public class FurnitureDisplacement : MonoBehaviour
	{
        public Vector2 frequency;
        public Vector2 strength;
		public LinearMapping linearMapping;

		private Vector3 initialPosition;

		//-------------------------------------------------
		void Start()
		{
			initialPosition = transform.localPosition;

			if ( linearMapping == null )
			{
				linearMapping = GetComponent<LinearMapping>();
			}
		}


		//-------------------------------------------------
		void Update()
		{
			if ( linearMapping )
			{
                Vector3 test = new Vector3(transform.localPosition[0],transform.localPosition[1], transform.localPosition[2]);

                if (linearMapping.value > 0.95)
                {
                    test[0] = initialPosition[0] + Mathf.Sin(linearMapping.value * frequency[0]) * strength[0];
                    test[1] = initialPosition[1] + Mathf.Sin((linearMapping.value-0.95f)*Mathf.PI*2*frequency[1])* strength[1];
                } else {
                    test[0] = initialPosition[0] + Mathf.Sin(linearMapping.value * (frequency[0])) * strength[0];
                    test[1] = initialPosition[1] + Mathf.Sin(linearMapping.value * (frequency[1])) * strength[0] * (1 + linearMapping.value);

                }

                transform.localPosition = test;
			}
		}
	}
}
