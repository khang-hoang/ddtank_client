package com.greensock.plugins
{
   import com.greensock.core.PropTween;
   import flash.filters.BitmapFilter;
   
   public class FilterPlugin extends TweenPlugin
   {
      
      public static const VERSION:Number = 2.03;
      
      public static const API:Number = 1.0;
       
      
      protected var _target:Object;
      
      protected var _type:Class;
      
      protected var _filter:BitmapFilter;
      
      protected var _index:int;
      
      protected var _remove:Boolean;
      
      public function FilterPlugin(){super();}
      
      protected function initFilter(param1:Object, param2:BitmapFilter, param3:Array) : void{}
      
      public function onCompleteTween() : void{}
      
      override public function set changeFactor(param1:Number) : void{}
   }
}
