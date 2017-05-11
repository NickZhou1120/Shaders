Shader "Custom/2" 
{

	SubShader 
	{
	   //通道
	   Pass
	   {
	       //材质
	       Material
		   {
		      //漫反射
		      Diffuse(1,1,1,1)
			  //环境反射
			  Ambient(0,0,0,0)
		   }
		   //开启光照
		   Lighting On
	   }
	} 
}
