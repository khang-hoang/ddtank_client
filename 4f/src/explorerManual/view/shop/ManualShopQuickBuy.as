package explorerManual.view.shop
{
   import ddt.command.QuickBuyAlertBase;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import flash.events.MouseEvent;
   
   public class ManualShopQuickBuy extends QuickBuyAlertBase
   {
       
      
      private var _buyNum:int;
      
      public function ManualShopQuickBuy(){super();}
      
      override protected function initView() : void{}
      
      override protected function refreshNumText() : void{}
      
      override protected function __buy(param1:MouseEvent) : void{}
      
      private function checkJampsCurreny(param1:int) : Boolean{return false;}
   }
}