Shader "Custom/5" 
{
    Properties
	{
	    //纹理
	    _MainTexture("Base Texture",2D)="While"{}
	}
	SubShader 
	{
	   //通道
	   Pass
	   {
	       //设置纹理为属性中选择的纹理
	       SetTexture[_MainTexture]{combine texture}
	   }
	} 
	Fallback "Diffuse"
}
