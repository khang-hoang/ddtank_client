package bank.view.mornui.bank
{
   import morn.core.components.Button;
   import morn.core.components.Label;
   import morn.core.components.View;
   
   public class BankMainFrameUI extends View
   {
       
      
      public var close_btn:Button = null;
      
      public var mainTitle:Label = null;
      
      public var getBtn:Button = null;
      
      public var saveBtn:Button = null;
      
      public function BankMainFrameUI(){super();}
      
      override protected function createChildren() : void{}
   }
}
