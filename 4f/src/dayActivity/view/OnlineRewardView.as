package dayActivity.view
{
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import dayActivity.DayActivityManager;
   import dayActivity.OnlineRewardModel;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.TimeManager;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import gradeAwardsBoxBtn.view.GradeAwardsFlyIntoBagViewWithPos;
   
   public class OnlineRewardView extends Sprite implements Disposeable
   {
       
      
      private var _onlineTimeHTf:FilterFrameText;
      
      private var _onlineTimeMTf:FilterFrameText;
      
      private var _onlineTimeSTf:FilterFrameText;
      
      private var _getBtn:SimpleBitmapButton;
      
      private var _canGetBtnMC:MovieClip;
      
      private var _timer:Timer;
      
      private var _itemArr:Array;
      
      private var _model:OnlineRewardModel;
      
      public function OnlineRewardView(){super();}
      
      private function initView() : void{}
      
      private function initListener() : void{}
      
      private function removeListener() : void{}
      
      private function onClick(param1:MouseEvent) : void{}
      
      private function onTimer(param1:TimerEvent) : void{}
      
      private function update(param1:Event = null) : void{}
      
      private function onOpBackGet(param1:Event) : void{}
      
      public function dispose() : void{}
   }
}
