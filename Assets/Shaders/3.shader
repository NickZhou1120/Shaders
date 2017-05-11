Shader "Custom/3" 
{

    Properties
	{
	    _MainColor("Main Color",Color)=(1,1,1,1)
	}
	SubShader 
	{
	   //通道
	   Pass
	   {
	       //材质
	       Material
		   {
		      Diffuse[_MainColor]
			  //Ambient[_MainColor]
		   }
		   //开启光照
		   Lighting On
	   }
	} 

}
