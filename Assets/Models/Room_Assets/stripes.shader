Shader "simpleStripes"{
	Properties{}
	SubShader{
		Pass{

			CGPROGRAM

			#pragma vertex vert
			#pragma fragment frag

			struct appdata{
				float4 vertPos:POSITION;
			};

			struct v2f{
				float4 vertPos:SV_POSITION;
				float4 texcoords:TEXCOORD0;
			};

			v2f vert(appdata vIn )
			{
				v2f vOut;
				vOut.texcoords = vIn.vertPos+0.5;
				vOut.vertPos = UnityObjectToClipPos(vIn.vertPos);
				return vOut;
			}

			float4 frag(v2f fIn):COLOR
			{
				return float4(sin(fIn.texcoords.x*20),0.5,0.8,1.0);
				//if(sin(fIn.texcoords.x*10)>0.7)
				//	return float4(1.0,0.0,0.0,1.0);
				//	else
				//	return float4(0.0,0.0,0.0,1.0);
			}

			ENDCG
		}
	}
}