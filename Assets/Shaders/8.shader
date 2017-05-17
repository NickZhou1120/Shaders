Shader "Custom/8" 
{
    Properties
	{
	    _MainTex("Main Texture",2D)="white"{}
		_BlendTex("Blend Texture",2D)="white"{}
	}
	SubShader 
	{
	   Pass
	   {
	      SetTexture[_MainTex] {combine texture}
		  SetTexture[_BlendTex]{combine texture*previous}
	       
	   }
	} 
}
