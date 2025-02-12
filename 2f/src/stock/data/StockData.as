package stock.data
{
   import stock.StockMgr;
   
   public final class StockData extends StockTemplateData
   {
       
      
      public var price:int = 0;
      
      public var sellTotalValue:int = 0;
      
      public var buyTotalValue:int = 0;
      
      public var holdNum:int = 0;
      
      public var validNum:int = 0;
      
      public var dealNum:int = 0;
      
      public var changeValue:int = 0;
      
      public var originPrice:int = 0;
      
      public var centerPrice:int = 0;
      
      public var dayCenterPrice:int = 0;
      
      public var maxBuyNum:int = 0;
      
      public var diffValue:int = 0;
      
      public var notices:Vector.<StockNewsData>;
      
      public var dailyPoints:Vector.<StockPointData>;
      
      public var hourPoints:Vector.<StockPointData>;
      
      public function StockData(param1:int){super();}
      
      private function parseStock() : void{}
      
      public function get cost() : int{return 0;}
      
      public function get totalCost() : int{return 0;}
      
      public function get floatBenefit() : int{return 0;}
      
      public function get benefitRate() : Number{return 0;}
   }
}
