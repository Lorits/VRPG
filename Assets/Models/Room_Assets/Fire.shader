Shader "Fire"{
	Properties{}
		SubShader{
			Pass{
			CGPROGRAM

			#pragma vertex vert
			#pragma fragment frag

			struct appdata {
				float4 vertPos:POSITION;
				float3 normals:NORMAL;
				float4 position_in_world_space : TEXCOORD0;
			};

			struct v2f {
				float4 vertPos:SV_POSITION;
				float4 color:COLOR;
				float4 texcoords:TEXCOORD0;
			};

			v2f vert(appdata vIn) {
				v2f vOut;
				vOut.texcoords = vIn.vertPos + 0.5;
				vOut.vertPos = UnityObjectToClipPos(vIn.vertPos);
				return vOut;
			}

			float4 frag(v2f fIn) :COLOR{
				float dist = distance(fIn.texcoords.xy,float2(0.5,0.5));
				return dist >= 0.5 ? float4(1.0,0.0,0.0,1.0) : float4(0.0,0.0,0.0,1.0);
			}

			ENDCG
			}
	}