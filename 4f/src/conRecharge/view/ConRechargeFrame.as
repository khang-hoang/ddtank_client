package conRecharge.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import conRecharge.ConRechargeManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.LeavePageManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.TimeManager;
   import ddt.utils.PositionUtils;
   import ddt.view.bossbox.TimeCountDown;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import road7th.utils.DateUtils;
   import wonderfulActivity.WonderfulActivityManager;
   import wonderfulActivity.data.PlayerCurInfo;
   
   public class ConRechargeFrame extends Frame
   {
       
      
      private var _topBg:Bitmap;
      
      private var _rightBg:Bitmap;
      
      private var _leftBg:Bitmap;
      
      private var _activityTime:FilterFrameText;
      
      private var _totalRechargeTxt:FilterFrameText;
      
      private var _rechargeBtn:BaseButton;
      
      private var _leftView:ConRechargeLeftItem;
      
      private var _rightView:ConRechargeRightItem;
      
      private var _time:TimeCountDown;
      
      public function ConRechargeFrame(){super();}
      
      private function initView() : void{}
      
      private function addEvent() : void{}
      
      private function __onSupplyClick(param1:MouseEvent) : void{}
      
      private function _timeOver(param1:Event) : void{}
      
      private function _timeOne(param1:Event) : void{}
      
      private function removeEvent() : void{}
      
      protected function _responseHandle(param1:FrameEvent) : void{}
      
      override public function dispose() : void{}
   }
}
