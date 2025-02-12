package stock.mornUI.items
{
   import morn.core.components.Label;
   import morn.core.components.View;
   
   public class StockDataItemUI extends View
   {
       
      
      public var lablID:Label = null;
      
      public var lablName:Label = null;
      
      public var lblCostLN:Label = null;
      
      public var lablPriceLN:Label = null;
      
      public var lblHoldNum:Label = null;
      
      public var lblValidNum:Label = null;
      
      public var lablIDSelected:Label = null;
      
      public var lablNameSelected:Label = null;
      
      public var lblPriceLO:Label = null;
      
      public var lblCostLO:Label = null;
      
      public var lblHoldNumSelected:Label = null;
      
      public var lblValidNumSelected:Label = null;
      
      public var lblFloatBenefitLO:Label = null;
      
      public var lblFloatBenefitLN:Label = null;
      
      public var lblBenefitRateGO:Label = null;
      
      public var lblBenefitRateGN:Label = null;
      
      public var lblFloatBenefitGN:Label = null;
      
      public var lblFloatBenefitGO:Label = null;
      
      public var lblBenefitRateLN:Label = null;
      
      public var lblBenefitRateLO:Label = null;
      
      public var lablPriceGO:Label = null;
      
      public var lablPriceGN:Label = null;
      
      public var lblCostGO:Label = null;
      
      public var lblCostGN:Label = null;
      
      public function StockDataItemUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         loadUI("items/StockDataItem.xml");
      }
   }
}
