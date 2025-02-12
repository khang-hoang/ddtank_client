package stock.mornUI.views
{
   import morn.core.components.Button;
   import morn.core.components.Image;
   import morn.core.components.Label;
   import morn.core.components.List;
   import morn.core.components.TextArea;
   import morn.core.components.View;
   import morn.core.ex.TabListEx;
   import stock.items.StockInfoItem;
   
   public class StockMarketViewUI extends View
   {
       
      
      public var stockText1:Label = null;
      
      public var stockText2:Label = null;
      
      public var stockText3:Label = null;
      
      public var stockText4:Label = null;
      
      public var stockText5:Label = null;
      
      public var stockText6:Label = null;
      
      public var btnBuy:Button = null;
      
      public var listAllStocks:List = null;
      
      public var btnSell:Button = null;
      
      public var dayBg:Image = null;
      
      public var txtNotices:TextArea = null;
      
      public var lablUp7:Label = null;
      
      public var lablUp6:Label = null;
      
      public var lablUp5:Label = null;
      
      public var lablUp4:Label = null;
      
      public var lablUp3:Label = null;
      
      public var lablUp2:Label = null;
      
      public var lablUp1:Label = null;
      
      public var lablUp0:Label = null;
      
      public var lablDown1:Label = null;
      
      public var lablDown2:Label = null;
      
      public var lablDown3:Label = null;
      
      public var lablDown4:Label = null;
      
      public var lablDown5:Label = null;
      
      public var lablDown6:Label = null;
      
      public var lablDown7:Label = null;
      
      public var lablTime1:Label = null;
      
      public var lablTime2:Label = null;
      
      public var lablTime3:Label = null;
      
      public var lablTime4:Label = null;
      
      public var lablTime5:Label = null;
      
      public var lablTime6:Label = null;
      
      public var lablTime7:Label = null;
      
      public var lablStockName:Label = null;
      
      public var lablStockPrice:Label = null;
      
      public var lablStockBenefit:Label = null;
      
      public var lablFloatBenefit:Label = null;
      
      public var btnID:Button = null;
      
      public var btnPrice:Button = null;
      
      public var btnChange:Button = null;
      
      public var btnHold:Button = null;
      
      public var tabMin:TabListEx = null;
      
      public function StockMarketViewUI(){super();}
      
      override protected function createChildren() : void{}
   }
}
