// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Cg shader for RGB cube" { 
   SubShader { 
      Pass { 
         CGPROGRAM 
 
         #pragma vertex vert // alias for the vertex shader 
         #pragma fragment frag // alias for the fragment shader
 
         // outpout structure for vertex parameters

         struct v2f {
            float4 pos : SV_POSITION;
            float4 col : TEXCOORD0;
         };
 
         v2f vert(float4 vertexPos : POSITION) 
            // vertex shader 
         {
            v2f output; 
 
            output.pos =  UnityObjectToClipPos(vertexPos);
            output.col = vertexPos + float4(0.5, 0.5, 0.5, 0.0);

            return output;
         }
 
         float4 frag(v2f input) : COLOR // fragment shader
         {
            return input.col; 
         }
 
         ENDCG  
      }
   }
}
