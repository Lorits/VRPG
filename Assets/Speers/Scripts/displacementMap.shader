 q// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/displMap" {
	Properties {
		_Texture ("Texture", 2D) = "white" {}
		_MaxHeight("MaxHeight",float)= 1.0

	}
	SubShader {
        Pass {		
		
		CGPROGRAM

		#pragma vertex vert
		#pragma fragment frag

		sampler2D _Texture;
		uniform float _MaxHeight;

		struct appdata{
			float4 positionsIn : POSITION;
			float3 normals : NORMAL;
			float4 texcoord : TEXCOORD0;
		};

		struct v2f{
			float4 newPositions : SV_POSITION;
			float4 colors : COLOR;
			float4 texcoord : TEXCOORD0;
		};


		//-- vertex shader
		v2f vert(appdata vIn){
			v2f vOut;
			vOut.texcoord = vIn.texcoord;
			float4 bumpColor = tex2Dlod(_Texture, vIn.texcoord);

			// make it grayscale
			float df = 0.30*bumpColor.x + 0.59*bumpColor.y + 0.11*bumpColor.z;
            float4 newVertexPos = float4(vIn.normals * df * _MaxHeight, 0.0) + vIn.positionsIn;

            vOut.newPositions = UnityObjectToClipPos(vIn.positionsIn+newVertexPos);
            vOut.colors = tex2Dlod(_Texture, vIn.texcoord);
            return vOut;

		}

		float4 frag(v2f fIn):COLOR{

		    return tex2D(_Texture, fIn.texcoord.xy);
			//return fIn.colors;
		}


		ENDCG
		}
	}
}
