package ddtBuried.views
{
   import bagAndInfo.cell.BaseCell;
   import com.greensock.TweenLite;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ItemManager;
   import ddt.utils.Helpers;
   import ddt.utils.PositionUtils;
   import ddtBuried.BuriedControl;
   import ddtBuried.BuriedManager;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class BuriedRewardsProgressBar extends Sprite
   {
       
      
      private var _bg:Bitmap;
      
      private var _progressBarList:Vector.<Bitmap>;
      
      private var _boxList:Vector.<SimpleBitmapButton>;
      
      private var _progressTextField:FilterFrameText;
      
      private var _gainedSignList:Vector.<Bitmap>;
      
      private var _boxOpenedList:Vector.<Bitmap>;
      
      private var _boxPlayOpenList:Vector.<MovieClip>;
      
      private var _boxCanGainList:Vector.<MovieClip>;
      
      private var _tipList:Vector.<BaseCell>;
      
      public function BuriedRewardsProgressBar(){super();}
      
      protected function init() : void{}
      
      protected function onGainBtnClick(param1:MouseEvent) : void{}
      
      public function dispose() : void{}
      
      public function updateProgressState() : void{}
      
      public function playGainBox(param1:int) : void{}
      
      public function playGetRewardBoxAnimation(param1:int) : void{}
   }
}
