package bank.view.mornui.bank
{
   import morn.core.components.Button;
   import morn.core.components.Label;
   import morn.core.components.View;
   
   public class BankSaveOrGetUI extends View
   {
       
      
      public var close_btn:Button = null;
      
      public var totleSaveMoney:Label = null;
      
      public var saveOrGetTitle:Label = null;
      
      public var have:Label = null;
      
      public var totleProfitMoney:Label = null;
      
      public var haveMoney:Label = null;
      
      public var haveBindMoney:Label = null;
      
      public function BankSaveOrGetUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         loadUI("bank/BankSaveOrGet.xml");
      }
   }
}
