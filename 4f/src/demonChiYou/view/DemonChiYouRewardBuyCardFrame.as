package demonChiYou.view
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.CEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.CheckMoneyUtils;
   import ddt.utils.PositionUtils;
   import demonChiYou.DemonChiYouController;
   import demonChiYou.DemonChiYouManager;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   
   public class DemonChiYouRewardBuyCardFrame extends Frame
   {
       
      
      private var _rewardBuyCardTotalNumTf:FilterFrameText;
      
      private var _rewardBuyCardTotalMoneyTf:FilterFrameText;
      
      private var _commitBtn:BaseButton;
      
      private var _panel:ScrollPanel;
      
      private var _list:VBox;
      
      private var _rewardBuyCartItemArr:Array;
      
      private var _needMoney:int;
      
      public function DemonChiYouRewardBuyCardFrame(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function responseHandler(param1:FrameEvent) : void{}
      
      private function onClick(param1:MouseEvent) : void{}
      
      private function onRemoveItem(param1:CEvent) : void{}
      
      private function updateMoney() : void{}
      
      override public function dispose() : void{}
   }
}
