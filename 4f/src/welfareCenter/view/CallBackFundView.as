package welfareCenter.view
{
   import bagAndInfo.cell.BagCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.CheckMoneyUtils;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import welfareCenter.callBackFund.CallBackFundManager;
   
   public class CallBackFundView extends Sprite implements Disposeable
   {
       
      
      private var _btnSp:Sprite;
      
      private var _quickBuyBtn:SimpleBitmapButton;
      
      private var _quickReceiveBtn:SimpleBitmapButton;
      
      private var _tomorrowComeBtn:SimpleBitmapButton;
      
      private var _receiveOverBtn:SimpleBitmapButton;
      
      private var _callBackFunMgr:CallBackFundManager;
      
      private var _rewardsHBox:HBox;
      
      private var _rewardsHBox1:HBox;
      
      public function CallBackFundView(){super();}
      
      private function initView() : void{}
      
      private function setGoods() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function update(param1:Event) : void{}
      
      private function onBtnClick(param1:MouseEvent) : void{}
      
      private function responseHandler(param1:FrameEvent) : void{}
      
      public function dispose() : void{}
   }
}
