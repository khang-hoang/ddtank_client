package stock.mornUI.views
{
   import morn.core.components.Button;
   import morn.core.components.Label;
   import morn.core.components.View;
   import morn.core.ex.NumericStepper;
   
   public class StockBuySubmitFrameUI extends View
   {
       
      
      public var btnClose:Button = null;
      
      public var numStep:NumericStepper = null;
      
      public var stockText1:Label = null;
      
      public var stockText2:Label = null;
      
      public var lablFund:Label = null;
      
      public var lablBuyNum:Label = null;
      
      public var btnBuy:Button = null;
      
      public function StockBuySubmitFrameUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         loadUI("views/StockBuySubmitFrame.xml");
      }
   }
}
