package condiscount.data
{
   import wonderfulActivity.data.GiftRewardInfo;
   
   public class CondiscountInfo
   {
       
      
      public var col:int;
      
      public var row:int;
      
      public var id:int;
      
      public var highPrice:int;
      
      public var lowPrice:int;
      
      public var buyType:int;
      
      public var goodsList:Vector.<GiftRewardInfo>;
      
      public function CondiscountInfo()
      {
         super();
      }
   }
}
