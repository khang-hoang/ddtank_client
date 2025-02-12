package store.view.strength
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.events.ShortcutBuyEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.LeavePageManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.view.common.BuyItemButton;
   import ddt.view.tips.GoodTipInfo;
   import flash.events.MouseEvent;
   
   public class BuyGiftBagButton extends BuyItemButton
   {
      
      public static const GIFTBAG_PRICE:int = 4599;
       
      
      public function BuyGiftBagButton()
      {
         super();
      }
      
      override protected function initliziItemTemplate() : void
      {
         _itemInfo = new ItemTemplateInfo();
         _itemInfo.Name = LanguageMgr.GetTranslation("tank.view.common.BuyGiftBagButton.initliziItemTemplate.excellent");
         _itemInfo.Quality = 4;
         _itemInfo.TemplateID = 2;
         _itemInfo.CategoryID = 11;
         _itemInfo.Description = LanguageMgr.GetTranslation("tank.view.common.BuyGiftBagButton.initliziItemTemplate.info");
         var _loc1_:GoodTipInfo = new GoodTipInfo();
         _loc1_.itemInfo = _itemInfo;
         _loc1_.isBalanceTip = false;
         _loc1_.typeIsSecond = false;
         tipData = _loc1_;
      }
      
      override protected function __onMouseClick(param1:MouseEvent) : void
      {
         var _loc2_:* = null;
         if(_enable)
         {
            param1.stopImmediatePropagation();
            SoundManager.instance.play("008");
            if(PlayerManager.Instance.Self.bagLocked)
            {
               BaglockedManager.Instance.show();
               return;
            }
            if(PlayerManager.Instance.Self.Money < 4599)
            {
               LeavePageManager.showFillFrame();
               return;
            }
            _loc2_ = AlertManager.Instance.simpleAlert(LanguageMgr.GetTranslation("AlertDialog.Info"),LanguageMgr.GetTranslation("store.view.strength.buyGift"),LanguageMgr.GetTranslation("ok"),LanguageMgr.GetTranslation("cancel"),false,true,false,2);
            _loc2_.moveEnable = false;
            _loc2_.addEventListener("response",_responseI);
         }
      }
      
      private function _responseI(param1:FrameEvent) : void
      {
         SoundManager.instance.play("008");
         (param1.currentTarget as BaseAlerFrame).removeEventListener("response",_responseI);
         if(param1.responseCode == 3 || param1.responseCode == 2)
         {
            doBuy();
         }
         ObjectUtils.disposeObject(param1.target);
      }
      
      private function doBuy() : void
      {
         SocketManager.Instance.out.sendBuyGiftBag(112051100);
         dispatchEvent(new ShortcutBuyEvent(2,5));
      }
   }
}
