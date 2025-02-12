package com.pickgliss.effect
{
   import com.greensock.TweenMax;
   import com.greensock.easing.Sine;
   import com.pickgliss.utils.EffectUtils;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class AlphaShinerAnimation extends BaseEffect
   {
      
      public static const SPEED:String = "speed";
      
      public static const INTENSITY:String = "intensity";
      
      public static const WIDTH:String = "width";
      
      public static const EFFECT:String = "effect";
      
      public static const COLOR:String = "color";
      
      public static const BLUR_WIDTH:String = "blurWidth";
      
      public static const IS_LOOP:String = "isLoop";
      
      public static const STRENGTH:String = "strength";
       
      
      private var _addGlowEffect:Boolean = true;
      
      private var _alphas:Array;
      
      private var _colors:Array;
      
      private var _glowBlurWidth:Number = 3;
      
      private var _glowColorName:String = "blue";
      
      private var _glowStrength:Number = 1;
      
      protected var _isLoop:Boolean = true;
      
      protected var _maskHeight:Number;
      
      protected var _maskShape:Shape;
      
      protected var _maskWidth:Number;
      
      private var _percent:Array;
      
      protected var _shineAnimationContainer:Sprite;
      
      private var _sourceBitmap:Bitmap;
      
      private var _shineBitmapContainer:Sprite;
      
      private var _shineIntensity:Number = 30;
      
      protected var _shineMoveSpeed:Number = 0.75;
      
      private var _shineWidth:Number = 100;
      
      public function AlphaShinerAnimation(param1:int){super(null);}
      
      override public function dispose() : void{}
      
      override public function initEffect(param1:DisplayObject, param2:Array) : void{}
      
      override public function play() : void{}
      
      override public function stop() : void{}
      
      private function image_shiner(param1:Number, param2:Number, param3:Number, param4:Boolean, param5:String, param6:Number, param7:Number, param8:Boolean) : void{}
      
      private function linear_fade(param1:Number, param2:Number, param3:Number) : void{}
   }
}
