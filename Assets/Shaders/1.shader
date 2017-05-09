Shader "Custom/1" 
{
	Properties {
		_WaveScale("Wave Scale",Range(0.02,0.15))=0.07
		_ReflDistort("Reflection distort",Range(0,1.5))=0.5
		_RefrColor("RefrColor",Color)=(0.34,0.85,0.92,1)

		
	}
	SubShader {
		Tags { "RenderType"="Opaque" }

		LOD 200
		
		CGPROGRAM
		#pragma surface surf Lambert

		sampler2D _MainTex;

		struct Input {
			float2 uv_MainTex;
		};

		void surf (Input IN, inout SurfaceOutput o) {
			half4 c = tex2D (_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	} 
	FallBack "Diffuse"

}
