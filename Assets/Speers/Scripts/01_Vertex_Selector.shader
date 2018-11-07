// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Cg basic shader" { 
 Properties {
      _Color ("my_color", Color) = (1,1,1,1) 
      _Pos("update_position", Vector) =(0,0,0,0)

   }
   SubShader { 
      Pass { 
         CGPROGRAM 

         #pragma vertex vert 
         #pragma fragment frag

         uniform float4 _Color; 
         uniform float4 _Pos;


         float4 vert(float4 vertexPos : POSITION) : SV_POSITION 
         {
         	if(vertexPos.x > 0.3)
         	{
         		vertexPos.x = vertexPos.x + _SinTime.x;
         	}
            return UnityObjectToClipPos(vertexPos);
         }


         float4 frag(void) : COLOR 
         {
            return float4(_Color); 
         }


         ENDCG 
      }
   }
}