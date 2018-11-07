Shader "Disc" {
	Properties{ }
		SubShader{
				Tags {"Queue" = "Transparent" "RenderType" = "Transparent" }

			Pass{
			 ZWrite Off
			 Blend SrcAlpha OneMinusSrcAlpha

			CGPROGRAM

			#pragma vertex vert
			#pragma fragment frag
			float breaking = 0.0f;
			struct appdata{
				float4 vertPos:POSITION;
				float3 normals:NORMAL;
				//float4 position_in_world_space:TEXCOORD0;
			};

			struct v2f{
				float4 vertPos:SV_POSITION;
				float4 color:COLOR;
				float4 texcoords:TEXCOORD0;
			};

			float sinemovement(float3 test) {
				return sin((float)_Time*60.0f)*cos((float)_Time*88.0f);
			};

			v2f vert(appdata vIn){
				v2f vOut;
				float test2 = vIn.normals;
				vIn.vertPos = vIn.vertPos*(0.7f + 0.1f*sinemovement(test2));
				vOut.texcoords = vIn.vertPos;
				vOut.vertPos = UnityObjectToClipPos(vIn.vertPos);
				return vOut;
			}
		/*	float4 vert(float4 vertexPos : POSITION) : SV_POSITION
			{
			   if (vertexPos.x > 0.3)
			   {
				   vertexPos.x = vertexPos.x + _SinTime.x;
			   }
			   return UnityObjectToClipPos(vertexPos);
			}*/
			float4 frag(v2f fIn) :COLOR{
				//float dist = distance(fIn.texcoords.xy,float2(0.5,0.5));
				//return dist>=0.5?float4(1.0,0.0,0.0,1.0):float4(0.0,0.0,0.0,1.0);
				/*if (rand < 0.001f) {
					rand = (fIn.texcoords[0]);*/
				/*float rand = 0.0f;*/
				if(breaking<0.001f){
					breaking = fIn.texcoords[0];
				}
				return float4(1.0f, 0.4f + 0.2f*(1.5f + sinemovement(breaking)), 0.1f, 0.8f);
			}
			ENDCG
			}
		}
	}