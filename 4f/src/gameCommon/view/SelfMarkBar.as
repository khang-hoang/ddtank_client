package gameCommon.view
{
   import com.greensock.TweenLite;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.LivingEvent;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.BlurFilter;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import gameCommon.GameControl;
   import gameCommon.model.LocalPlayer;
   import org.aswing.KeyStroke;
   import org.aswing.KeyboardManager;
   import trainer.controller.NewHandGuideManager;
   
   public class SelfMarkBar extends Sprite implements Disposeable
   {
       
      
      private var _self:LocalPlayer;
      
      private var _timer:Timer;
      
      private var _nums:Vector.<DisplayObject>;
      
      private var _numContainer:Sprite;
      
      private var _alreadyTime:int;
      
      private var _animateFilter:BlurFilter;
      
      private var _scale:Number = 2;
      
      private var _skipButton:SkipButton;
      
      private var _container:DisplayObjectContainer;
      
      private var _noActionTurn:int;
      
      private var _numDic:Dictionary;
      
      private var _enabled:Boolean = true;
      
      public function SelfMarkBar(param1:LocalPlayer, param2:DisplayObjectContainer){super();}
      
      private function creatNums() : void{}
      
      private function addEvent() : void{}
      
      protected function onMouseMove(param1:MouseEvent) : void{}
      
      private function __skip(param1:MouseEvent) : void{}
      
      private function removeEvent() : void{}
      
      private function __beginShoot(param1:LivingEvent) : void{}
      
      private function __attackChanged(param1:LivingEvent) : void{}
      
      public function dispose() : void{}
      
      public function startup(param1:int) : void{}
      
      private function __keyDown(param1:KeyboardEvent) : void{}
      
      public function pause() : void{}
      
      public function shutdown() : void{}
      
      private function clear() : void{}
      
      private function skip() : void{}
      
      private function tweenRender() : void{}
      
      private function tweenComplete() : void{}
      
      private function __markComplete(param1:TimerEvent) : void{}
      
      public function get runnning() : Boolean{return false;}
      
      public function set enabled(param1:Boolean) : void{}
      
      private function __mark(param1:TimerEvent) : void{}
   }
}
