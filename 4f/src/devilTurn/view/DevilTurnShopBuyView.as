package devilTurn.view
{
   import ddt.command.QuickBuyAlertBase;
   import ddt.data.goods.ShopItemInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.events.MouseEvent;
   
   public class DevilTurnShopBuyView extends QuickBuyAlertBase
   {
       
      
      private var _buyNum:int;
      
      private var _priceValue:String;
      
      private var _priceTemplateID:int;
      
      public function DevilTurnShopBuyView(){super();}
      
      override protected function initView() : void{}
      
      override protected function refreshNumText() : void{}
      
      public function setShopItemInfo(param1:ShopItemInfo, param2:int) : void{}
      
      public function setBuyNum(param1:int) : void{}
      
      override protected function __buy(param1:MouseEvent) : void{}
   }
}