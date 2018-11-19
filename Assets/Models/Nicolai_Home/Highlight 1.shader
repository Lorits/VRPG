// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Highlight" {
	Properties{
		_color("color", Color) = (1.0,1.0,1.0,1.0)
		_Opacity("Opacity",float) = 1
	}
		SubShader{
				Tags {"LightMode" = "ForwardBase"}
					Tags {"Queue" = "Transparent"}// "IgnoreProjector" = "True" "RenderType" = "Transparent" }

			Pass {
			 //ZWrite Off // don't write to depth buffer
				   // in order not to occlude other objects
				//Cull Off
				/* Blend One OneMinusSrcAlpha */
				Blend SrcAlpha OneMinusSrcAlpha
			CGPROGRAM

			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
 uniform float4 _LightColor0;
				float4 _color;
				float _Opacity;
			struct appdata {
				float4 vertex : POSITION;
				float3 normals : NORMAL;
				float4 texcoord : TEXCOORD0;

			};

			struct v2f {
				float3 normals : TEXCOORD2;
				float3 viewDir : TEXCOORD5;
				float4 texcoord : TEXCOORD0;
				float4 newPositions : SV_POSITION;

			};


			//-- vertex shader
			v2f vert(appdata v) {
				v2f o;
				float4x4 modelMatrix = unity_ObjectToWorld;
				float3 worldposabnormalized = mul(modelMatrix, v.vertex);
				float3 worldNorm = normalize(mul(modelMatrix, v.normals));
				float3 betterCam = _WorldSpaceCameraPos;
				float3 viewDir = normalize(worldposabnormalized - betterCam);
				 o.normals = worldNorm;
				 o.viewDir = viewDir;
				 o.texcoord = v.texcoord;
				 o.newPositions = UnityObjectToClipPos(v.vertex);
				 return o;
			 }

			 float4 frag(v2f i) :COLOR{
				 float4 col = _color;
				 float time = 1+(0.1*(1+sin(_Time*33)*cos(_Time * 50)));
				 float sint = sin(_Time*40);
				 float cost = cos(_Time * 15);

				 float dotproduct = dot(normalize(i.viewDir), i.normals);
				 float highlightsize = 1.2;
				 float alphaCalc = 1-min(1, max(0, time*highlightsize*abs(pow(dotproduct, 1))));
				 col.w *= alphaCalc;
				 col.w *= _Opacity;
				 col+=float4(0.30*(1+sint)+alphaCalc,-0.5,-alphaCalc,0.01);

				 return col;
			 }
			 ENDCG
			 }
		}
}
