Shader "Custom/MagnifyingRay" {
	Properties {
		_Color ("Color", Color) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_range ("Alpha", Range(0,1)) = 1
		_Metallic ("Metallic", Range(0,1)) = 0.0
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200

		CGPROGRAM
		#pragma vertex vert
		#pragma fragment fragm
		#include "UnityCG.cginc"

		float4 _Color;
		float _range;

		struct vin{
			float4 vertex : POSITION;
			float3 normal : NORMAL;
			float4 uv : TEXCOORD0;
		}

		struct fin{
			float4 vertex : POSITION;
			float3 normal : NORMAL;
			float4 uv : TEXCOORD1;
			float4 color : COLOR;
		}

		fin vert(vin input){
			fin output;

			//Find the object in a world position. E.g. multiply the points position by the objects position as to orego, since the point's position is located as to the object center of mass.
			float4 worldPos = mul(unity_ObjectToWorld,input.vertex);

			//Find normal by multiplying the normal by the rotation and scaling of the object to the world.
			output.normal = normalize(mul(float4(input.normal,0.0),unity_WorldToObject).xyz);
			//Find alpha value from the lights in the scene
			float alpha;
			//5Get the information of the 4 nearest lights using unity's engine
			for (int index = 0; index < 4; index++){  
      			float4 lightPosition = float4(unity_4LightPosX0[index], 
        		unity_4LightPosY0[index], 
         		unity_4LightPosZ0[index], 1.0);

				float3 vertexToLightSource = normalize(lightPosition.xyz - output.posWorld.xyz);
			}
			return output; 
		}

		ENDCG
	}
	FallBack "Diffuse"
}
