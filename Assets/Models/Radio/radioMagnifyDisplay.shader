// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "radioMagnifyDisplay" {
Properties{
_Height ("Height", 2D) = "white" {}
        _Texture ("Texture", 2D) = "white" {}
        _MaxHeight("MaxHeight",float)= 0.0
        
        _color("color", Color) = (1.0,1.0,1.0,1.0)
        _Shine("shininess", Float) = 10
        _SpecCol("specularColor", Color) = (1.0,0.0,0.0,1.0)
             _OffSetX("offsetX", Range(0,10)) = 0
     _OffSetY("offsetY", Range(0,10)) = 0
}
   SubShader {
              // Tags {"LightMode" = "ForwardBase"}

     Tags { "Queue" = "Transparent" } 
         // draw after all opaque geometry has been drawn
      Pass {
         ZWrite Off // don't write to depth buffer 
            // in order not to occlude other objects

         //Blend SrcAlpha OneMinusSrcAlpha // use alpha blending
         
         CGPROGRAM 
 
         #pragma vertex vert 
         #pragma fragment frag
                 #include "UnityCG.cginc"
                                 uniform float4 _LightColor0; // automaticly from "Lighting.cginc

        sampler2D _Height;
        sampler2D _Texture;
        uniform float _MaxHeight;
        
        float _Shine;
        float4 _SpecCol;
        float4 _color;         
        struct appdata{
            float4 vertex : POSITION;
            float3 normals : NORMAL;
            float4 texcoord : TEXCOORD0;
        };
        struct v2f{
            float4 newPositions : SV_POSITION;
            float4 texcoord : TEXCOORD0;
            float3 normals : TEXCOORD2;
            float3 camDir : TEXCOORD3;
            float3 lightPos : TEXCOORD4;
            float3 viewDir : TEXCOORD5;
            float4 posWorld : TEXCOORD6;
            float3 lightDir : TEXCOORD7;
        };
                float _ScrollXSpeed;
        float _ScrollYSpeed;
         v2f vert(appdata v){
            v2f o;
            float4x4 modelMatrix = unity_ObjectToWorld;
            float4 worldpos = normalize(mul(modelMatrix, v.vertex));
            float3 worldposabnormalized = mul(modelMatrix, v.vertex);
            float3x3 modelMatrixInverse = unity_WorldToObject;
            float3 worldNorm = normalize(mul(modelMatrix, v.normals));
            float3 cam = normalize(_WorldSpaceCameraPos);
            float3 lightPos = normalize(_WorldSpaceLightPos0.xyz);
            float3 betterCam = _WorldSpaceCameraPos;
            float3 viewDir = normalize(worldposabnormalized-betterCam);
                float3 lightDir = normalize(_WorldSpaceLightPos0.xyz);

            o.texcoord = v.texcoord;
            float4 scrolledUV = v.texcoord;
 
             float xScrollValue = _ScrollXSpeed * _Time;
            float yScrollValue = _ScrollYSpeed * _Time;
                  scrolledUV += float4(xScrollValue, yScrollValue,0,0);
            float4 bumpColor = tex2Dlod(_Height, scrolledUV);

            //float df = 0.30*bumpColor.x + 0.59*bumpColor.y + 0.11*bumpColor.z;
            float4 newVertexPos = float4(v.normals * bumpColor.x * _MaxHeight, 0.0) + v.vertex;
            o.newPositions = UnityObjectToClipPos(newVertexPos);
            
           // o.colors = tex2Dlod(_Texture, vIn.texcoord);
            
            //float4x4 modelMatrix = unity_ObjectToWorld;

            o.lightDir = lightDir;
            o.normals = worldNorm;
            o.camDir = cam;
            o.lightPos = lightPos;
            o.viewDir = viewDir;
            o.posWorld = worldpos;
            
            return o;

        }
        float _OffSetX;
        float _OffSetY;
         float4 frag(v2f i) : COLOR 
         {
         float4 scrolledUV = i.texcoord*float4(.15,1,1,1);;
         scrolledUV+=float4(_OffSetX,_OffSetY,0.0,0.0);
          
         float xScrollValue = i.posWorld*11;
         float yScrollValue = 0;
                  scrolledUV -= float4(abs(xScrollValue), yScrollValue,0,0);

                 float4 color = tex2Dlod(_Texture, scrolledUV);
            
            float4 diffuse = 0.8*max(dot(i.normals,i.lightDir), 0.0);
            float3 reflection = normalize(reflect(normalize(i.lightDir), i.normals));

            float3 specular;
            if (dot(i.normals, i.lightPos) < 0.0)
            {
                specular = 0.0;
            }else
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
            col*= _LightColor0;
            col.w= 1;
            
            
            
            float3 testcolor;
            testcolor = reflection;
            float testtest = dot(reflection, normalize(i.viewDir));
            
            float4 retCol = float4(testtest,testtest,testtest,1);
            //retCol*=_color;
            //return retCol;

            return col;
         }
 
         ENDCG  
      }
   }
}