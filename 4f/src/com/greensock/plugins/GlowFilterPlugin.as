package com.greensock.plugins
{
   import com.greensock.TweenLite;
   import flash.filters.GlowFilter;
   
   public class GlowFilterPlugin extends FilterPlugin
   {
      
      public static const API:Number = 1.0;
      
      private static var _propNames:Array = ["color","alpha","blurX","blurY","strength","quality","inner","knockout"];
       
      
      public function GlowFilterPlugin(){super();}
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean{return false;}
   }
}
