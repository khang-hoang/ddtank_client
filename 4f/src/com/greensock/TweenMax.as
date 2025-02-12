package com.greensock
{
   import com.greensock.core.PropTween;
   import com.greensock.core.SimpleTimeline;
   import com.greensock.core.TweenCore;
   import com.greensock.events.TweenEvent;
   import com.greensock.plugins.AutoAlphaPlugin;
   import com.greensock.plugins.BevelFilterPlugin;
   import com.greensock.plugins.BezierPlugin;
   import com.greensock.plugins.BezierThroughPlugin;
   import com.greensock.plugins.BlurFilterPlugin;
   import com.greensock.plugins.ColorMatrixFilterPlugin;
   import com.greensock.plugins.ColorTransformPlugin;
   import com.greensock.plugins.DropShadowFilterPlugin;
   import com.greensock.plugins.EndArrayPlugin;
   import com.greensock.plugins.FrameLabelPlugin;
   import com.greensock.plugins.FramePlugin;
   import com.greensock.plugins.GlowFilterPlugin;
   import com.greensock.plugins.HexColorsPlugin;
   import com.greensock.plugins.RemoveTintPlugin;
   import com.greensock.plugins.RoundPropsPlugin;
   import com.greensock.plugins.ShortRotationPlugin;
   import com.greensock.plugins.TintPlugin;
   import com.greensock.plugins.TweenPlugin;
   import com.greensock.plugins.VisiblePlugin;
   import com.greensock.plugins.VolumePlugin;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class TweenMax extends TweenLite implements IEventDispatcher
   {
      
      public static const version:Number = 11.64;
      
      private static var _overwriteMode:int = !!OverwriteManager.enabled?OverwriteManager.mode:int(OverwriteManager.init(2));
      
      public static var killTweensOf:Function = TweenLite.killTweensOf;
      
      public static var killDelayedCallsTo:Function = TweenLite.killTweensOf;
      
      {
         TweenPlugin.activate([AutoAlphaPlugin,EndArrayPlugin,FramePlugin,RemoveTintPlugin,TintPlugin,VisiblePlugin,VolumePlugin,BevelFilterPlugin,BezierPlugin,BezierThroughPlugin,BlurFilterPlugin,ColorMatrixFilterPlugin,ColorTransformPlugin,DropShadowFilterPlugin,FrameLabelPlugin,GlowFilterPlugin,HexColorsPlugin,RoundPropsPlugin,ShortRotationPlugin,{}]);
      }
      
      protected var _dispatcher:EventDispatcher;
      
      protected var _hasUpdateListener:Boolean;
      
      protected var _repeat:int = 0;
      
      protected var _repeatDelay:Number = 0;
      
      protected var _cyclesComplete:int = 0;
      
      protected var _easePower:int;
      
      protected var _easeType:int;
      
      public var yoyo:Boolean;
      
      public function TweenMax(param1:Object, param2:Number, param3:Object){super(null,null,null);}
      
      public static function to(param1:Object, param2:Number, param3:Object) : TweenMax{return null;}
      
      public static function from(param1:Object, param2:Number, param3:Object) : TweenMax{return null;}
      
      public static function fromTo(param1:Object, param2:Number, param3:Object, param4:Object) : TweenMax{return null;}
      
      public static function allTo(param1:Array, param2:Number, param3:Object, param4:Number = 0, param5:Function = null, param6:Array = null) : Array{return null;}
      
      public static function allFrom(param1:Array, param2:Number, param3:Object, param4:Number = 0, param5:Function = null, param6:Array = null) : Array{return null;}
      
      public static function allFromTo(param1:Array, param2:Number, param3:Object, param4:Object, param5:Number = 0, param6:Function = null, param7:Array = null) : Array{return null;}
      
      public static function delayedCall(param1:Number, param2:Function, param3:Array = null, param4:Boolean = false) : TweenMax{return null;}
      
      public static function getTweensOf(param1:Object) : Array{return null;}
      
      public static function isTweening(param1:Object) : Boolean{return false;}
      
      public static function getAllTweens() : Array{return null;}
      
      public static function killAll(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void{}
      
      public static function killChildTweensOf(param1:DisplayObjectContainer, param2:Boolean = false) : void{}
      
      public static function pauseAll(param1:Boolean = true, param2:Boolean = true) : void{}
      
      public static function resumeAll(param1:Boolean = true, param2:Boolean = true) : void{}
      
      private static function changePause(param1:Boolean, param2:Boolean = true, param3:Boolean = false) : void{}
      
      public static function get globalTimeScale() : Number{return 0;}
      
      public static function set globalTimeScale(param1:Number) : void{}
      
      override protected function init() : void{}
      
      override public function invalidate() : void{}
      
      public function updateTo(param1:Object, param2:Boolean = false) : void{}
      
      public function setDestination(param1:String, param2:*, param3:Boolean = true) : void{}
      
      public function killProperties(param1:Array) : void{}
      
      override public function renderTime(param1:Number, param2:Boolean = false, param3:Boolean = false) : void{}
      
      override public function complete(param1:Boolean = false, param2:Boolean = false) : void{}
      
      protected function initDispatcher() : void{}
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void{}
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void{}
      
      public function hasEventListener(param1:String) : Boolean{return false;}
      
      public function willTrigger(param1:String) : Boolean{return false;}
      
      public function dispatchEvent(param1:Event) : Boolean{return false;}
      
      public function get currentProgress() : Number{return 0;}
      
      public function set currentProgress(param1:Number) : void{}
      
      public function get totalProgress() : Number{return 0;}
      
      public function set totalProgress(param1:Number) : void{}
      
      override public function set currentTime(param1:Number) : void{}
      
      override public function get totalDuration() : Number{return 0;}
      
      override public function set totalDuration(param1:Number) : void{}
      
      public function get timeScale() : Number{return 0;}
      
      public function set timeScale(param1:Number) : void{}
      
      public function get repeat() : int{return 0;}
      
      public function set repeat(param1:int) : void{}
      
      public function get repeatDelay() : Number{return 0;}
      
      public function set repeatDelay(param1:Number) : void{}
   }
}
