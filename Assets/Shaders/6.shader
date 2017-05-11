Shader "Custom/6" 
{
    Properties
	{
	    _Color("Color",Color)=(1,1,1,1)
		_SpecColor("SpecColor",Color)=(1,1,1,1)
		_Emission("Emission",Color)=(0,0,0,0)
		_Shininess("Shininess",Range(0.01,1))=0.7
	    //纹理
	    _MainTexture("Base Texture",2D)="While"{}
	}
	SubShader 
	{
	   //通道
	   Pass
	   {
	   	       //材质
	       Material
		   {
		      //可调节的漫反射
		      Diffuse[_Color]
			  //环境反射
			  Ambient[_Color]
			  //关泽渡
			  Shininess[_Shininess]
			  //高光颜色
			  Specular[_SpecColor]
			  //自发光颜色
			  Emission[_Emission]
		   }

		   //开启光照
		   Lighting On
           //开启独立镜面反射  
           SeparateSpecular On 
	       //设置纹理为属性中选择的纹理
	       SetTexture[_MainTexture]
		   {
		      combine texture*primary DOUBLE,texture*primary
		   }
	   }
	} 
	Fallback "Diffuse"
}
