// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Highlight" {
	Properties{
		_color("color", Color) = (1.0,1.0,1.0,1.0)
		_Shine("shininess", Float) = 10
		_SpecCol("specularColor", Color) = (1.0,1.0,1.0,1.0)

	}
		SubShader{
				Tags {"LightMode" = "ForwardBase"}
					Tags {"Queue" = "Transparent"}// "IgnoreProjector" = "True" "RenderType" = "Transparent" }

			Pass {
			 //ZWrite Off // don't write to depth buffer 
				   // in order not to occlude other objects
				//Cull Off
				//Blend One OneMinusSrcAlpha
				Blend SrcAlpha OneMinusSrcAlpha
			CGPROGRAM

			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"
					uniform float4 _LightColor0; // automaticly from "Lighting.cginc


				float _Shine;
				float4 _SpecCol;
				float4 _color;
			struct appdata {
				float4 vertex : POSITION;
				float3 normals : NORMAL;
				float4 texcoord : TEXCOORD0;
			};
			;
			struct v2f {
				float4 newPositions : SV_POSITION;
				float4 texcoord : TEXCOORD0;
				float3 normals : TEXCOORD2;
				float3 camDir : TEXCOORD3;
				float3 lightPos : TEXCOORD4;
				float3 viewDir : TEXCOORD5;
				float4 posWorld : TEXCOORD6;
				float3 lightDir : TEXCOORD7;
				float3 normnorm : TEXCOORD8;
			};


			//-- vertex shader
			v2f vert(appdata v) {
				v2f o;
				float4x4 modelMatrix = unity_ObjectToWorld;
				float4 worldpos = normalize(mul(modelMatrix, v.vertex));
				float3 worldposabnormalized = mul(modelMatrix, v.vertex);
				float3x3 modelMatrixInverse = unity_WorldToObject;
				float3 worldNorm = normalize(mul(modelMatrix, v.normals));
				float3 cam = normalize(_WorldSpaceCameraPos);
				float3 lightPos = normalize(_WorldSpaceLightPos0.xyz);
				float3 betterCam = _WorldSpaceCameraPos;
				float3 viewDir = normalize(worldposabnormalized - betterCam);
					float3 lightDir = normalize(_WorldSpaceLightPos0.xyz);

				o.texcoord = v.texcoord;

				//float df = 0.30*bumpColor.x + 0.59*bumpColor.y + 0.11*bumpColor.z;
				o.newPositions = UnityObjectToClipPos(v.vertex);

				// o.colors = tex2Dlod(_Texture, vIn.texcoord);

				 //float4x4 modelMatrix = unity_ObjectToWorld;

				 o.lightDir = lightDir;
				 o.normals = worldNorm;
				 o.camDir = cam;
				 o.lightPos = lightPos;
				 o.viewDir = viewDir;
				 o.posWorld = worldpos;
				 o.normnorm = v.normals;
				 return o;

			 }

			 float4 frag(v2f i) :COLOR{

				 float4 color = _color;

				 float4 diffuse = 0.8*max(dot(i.normals,i.lightDir), 0.0);
				 float3 reflection = normalize(reflect(normalize(i.lightDir), i.normals));

				 float3 specular;
				 if (dot(i.normals, i.lightPos) < 0.0)
				 {
					 specular = 0.0;
				 }
				 else
				{
					specular = _SpecCol * pow(max(0.0, dot(reflection, normalize(i.viewDir))), _Shine);
				}
				 // sample the texture
				 fixed4 col1 = color;
				 //Start with ambient color:
				 fixed4 col = UNITY_LIGHTMODEL_AMBIENT * col1;
				 //Then add diffuse
				 col += diffuse * col1;
				 //Add specular highlight
				 col += col1 * float4(specular, 1.0);
				 col *= _LightColor0;
				 col = _color;
				 float time = 0+(1*(1+sin(_Time*50)*cos(_Time * 200)));
				 float sint = sin(_Time*40);
				 float cost = cos(_Time * 15);
				 //col = float4(max(0, sint*cost),max(0,sint*cost), max(0, sint*cost), max(0, sint*cost));
				 col.w = 1.0f;

				 float dotproduct = dot(normalize(i.viewDir)*reflection, sint*i.normnorm);
				 float highlightsize = 1.5;
				//col.w *= 1-min(1, max(0, highlightsize*abs(pow(dotproduct, 1))));
				 /* if (dotproduct<highlightsize && dotproduct > -highlightsize) {
					  if (dotproduct<highlightsize/2 && dotproduct > -highlightsize/2) {
						  col = float4(0.0f, 0.5f, 1.0f, 0.5f);
					  }
					  col *= float4(0.0f, 0.5f, 1.0f, 0.5f);
				  }
				  
 */				

				 //col *= float4(1, 1, 1, min(1,max(0, time*highlightsize*abs(pow(dotproduct,4)))));
				 //col.w = 0.5+min(0.5, max(0, time*highlightsize*abs(pow(dotproduct, 4))));

				 float testval = min(1, max(0, pow(abs(dotproduct) + 0.6,7)));
				 //col.w *= testval;
				 //col.w = min(1,max(0, 2*abs(pow(dotproduct,7))));
				
				 //col = float4(1,1,1, testval);

				 float3 testcolor;
				 testcolor = reflection;
				 float testtest = dot(reflection, normalize(i.viewDir));

				 float4 retCol = float4(testtest,testtest,testtest,1);
				 //retCol*=_color;
				 //return retCol;

				 return col;
				 //return fIn.colors;
			 }


			 ENDCG
			 }
		}
}
