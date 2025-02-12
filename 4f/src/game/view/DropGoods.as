package game.view
{
   import bagAndInfo.cell.BaseCell;
   import com.greensock.TimelineLite;
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.greensock.easing.Bounce;
   import com.greensock.easing.Quint;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.SoundManager;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import road7th.utils.MovieClipWrapper;
   
   public class DropGoods implements Disposeable
   {
      
      public static var count:int;
      
      public static var isOver:Boolean = true;
       
      
      private var goodBox:MovieClip;
      
      private var bagMc:MovieClipWrapper;
      
      private var goldNumText:FilterFrameText;
      
      private var goods:DisplayObject;
      
      private var container:DisplayObjectContainer;
      
      private var goldNum:int;
      
      private var beginPoint:Point;
      
      private var midPoint:Point;
      
      private var endPoint:Point;
      
      private var headGlow:MovieClip;
      
      private var _type:int;
      
      private var timeId:uint;
      
      private var timeOutId:uint;
      
      public const MONSTER_DROP:int = 1;
      
      public const CHESTS_DROP:int = 2;
      
      private var _goodsId:int;
      
      private var currentCount:int;
      
      private var tweenUp:TweenMax;
      
      private var tweenDown:TweenMax;
      
      private var timeline:TimelineLite;
      
      public function DropGoods(param1:DisplayObjectContainer, param2:DisplayObject, param3:Point, param4:Point, param5:int){super();}
      
      public function start(param1:int = 1) : void{}
      
      private function getLinePoint(param1:Point) : Point{return null;}
      
      private function goDown(param1:Point, param2:Point) : void{}
      
      private function __onCompleteGodown() : void{}
      
      private function goPackUp(param1:Point, param2:Point) : void{}
      
      private function onCompletePackUp() : void{}
      
      private function completeHead() : void{}
      
      private function getBagAniam() : MovieClipWrapper{return null;}
      
      public function dispose() : void{}
   }
}
