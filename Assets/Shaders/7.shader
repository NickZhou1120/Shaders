Shader "Custom/7" 
{
	SubShader 
	{
	   //标签
	   Tags
	   {
	      //Queue:队列标签，决定渲染次序
		  //
	   }

	   //捕获对象后的屏幕到_GrabTexture中
	   GrabPass{}

	   //通道
	   Pass
	   {
	       //光照模式标签
		   //条件选项标签
	       
	   }
	} 
	Fallback "Diffuse"
}
