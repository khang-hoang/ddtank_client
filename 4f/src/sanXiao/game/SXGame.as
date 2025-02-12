package sanXiao.game
{
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.utils.Dictionary;
   import homeTemple.view.N_BitmapDataNumber;
   import sanXiao.model.Pos;
   import sanXiao.model.SXCellData;
   import sanXiao.model.SXModel;
   import times.utils.timerManager.TimerJuggler;
   import times.utils.timerManager.TimerManager;
   
   public class SXGame extends Sprite implements Disposeable
   {
       
      
      private var _model:SXModel;
      
      private var _itemList:Vector.<Vector.<SXCellItem>>;
      
      private var _hits:int;
      
      private var _wordsHitsEffect:MovieClip;
      
      private var _conWordsHitsEffect:MovieClip;
      
      private var _listOfWords:Vector.<Bitmap>;
      
      private var _bmpNum:N_BitmapDataNumber;
      
      private var _hitsTip:Bitmap;
      
      private var _timerCheckDie:TimerJuggler;
      
      private var resetedCount:int = 0;
      
      private var _curProp:int;
      
      private var _selectedA:SXCellItem;
      
      private var _selectedB:SXCellItem;
      
      public var step:int = 0;
      
      private var _movedNum:int;
      
      private var _tipsList:Array;
      
      private var _boomLength:int;
      
      private var tween:TweenLite;
      
      private var tweenMax:TweenMax;
      
      public function SXGame(){super();}
      
      private function init() : void{}
      
      protected function onTimerCheckDieFunc(param1:Event) : void{}
      
      function resetGame() : void{}
      
      private function onResetComplete() : void{}
      
      protected function onClick(param1:MouseEvent) : void{}
      
      function checkProp(param1:Pos) : void{}
      
      private function afterExchange() : void{}
      
      private function checkBoom() : void{}
      
      private function playNextTips() : void{}
      
      protected function onTipsEnd(param1:Event) : void{}
      
      private function boomHitsTips() : void{}
      
      private function boomPraiseWordsTip() : void{}
      
      private function resetStep() : void{}
      
      private function boom(param1:Vector.<SXCellData>) : void{}
      
      private function usePropCrossBomb(param1:Pos) : void{}
      
      private function usePropSquareBomb(param1:Pos) : void{}
      
      private function usePropClearColor(param1:Pos) : void{}
      
      private function usePropChangeColor(param1:Pos) : void{}
      
      private function changeColor(param1:Vector.<SXCellData>) : void{}
      
      private function checkBoomChangeColor(param1:Vector.<SXCellData>) : void{}
      
      public function dispose() : void{}
   }
}
