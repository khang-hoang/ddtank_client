package totem.view
{
   import com.greensock.TweenLite;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import totem.TotemManager;
   import totem.data.TotemDataVo;
   
   public class TotemLeftWindowOpenCartoonView extends Sprite implements Disposeable
   {
       
      
      private var _pointBomb:MovieClip;
      
      private var _lightBomb:MovieClip;
      
      private var _failPointBomb:MovieClip;
      
      private var _failTipTxtBitmap:Bitmap;
      
      private var _moveLightList:Vector.<MovieClip>;
      
      private var _openUsedNextPointInfo:TotemDataVo;
      
      private var _openUsedCallback:Function;
      
      private var _failOpenNextPointInfo:TotemDataVo;
      
      private var _failOpenCallback:Function;
      
      private var _totemPointLocationList:Array;
      
      private var __refreshGlowFilter:Function;
      
      private var __refreshTotemPoint:Function;
      
      private var _addTxt:FilterFrameText;
      
      private var _propertyTxtList:Array;
      
      private var _failBombCount:int;
      
      private var _bombCount:int;
      
      private var _moveTxtCount:int;
      
      private var _moveTxtEndCallbackTag:int;
      
      private var _moveLightCount:int;
      
      public function TotemLeftWindowOpenCartoonView(param1:Array, param2:Function, param3:Function){super();}
      
      public function failRefreshView(param1:TotemDataVo, param2:Function = null) : void{}
      
      private function showFailOpenCartoon() : void{}
      
      private function lightBombFrameHandler(param1:Event) : void{}
      
      private function pointBombFrameHandler(param1:Event) : void{}
      
      private function moveFailTxtCompleteHandler() : void{}
      
      public function refreshView(param1:TotemDataVo, param2:Function = null) : void{}
      
      private function showOpenCartoon() : void{}
      
      private function addTotemPointCartoon(param1:Object) : void{}
      
      private function bombFrameHandler(param1:Event) : void{}
      
      private function showMoveTxt() : void{}
      
      private function moveTxtHandler(param1:Event) : void{}
      
      private function showMoveLigthCartoon() : void{}
      
      private function createMoveLight(param1:Number, param2:Number, param3:Number) : void{}
      
      private function moveLightFrameHandler(param1:Event) : void{}
      
      public function dispose() : void{}
   }
}
