package lotteryTicket.model
{
   import flash.events.EventDispatcher;
   
   public class LotteryModel extends EventDispatcher
   {
       
      
      public var isopen:Boolean;
      
      public var isCanBuyBall:Boolean;
      
      public var gameIndex:int;
      
      public var dataList:Array;
      
      public var displayResults:String = "";
      
      public var itemInfoList:Array;
      
      public var poolCount:int;
      
      public var firstCount:int;
      
      public var firstMoney:int;
      
      public var secondCount:int;
      
      public var secondMoney:int;
      
      public var thirdCount:int;
      
      public var thirdMoney:int;
      
      public var fourthCount:int;
      
      public var fourthMoney:int;
      
      public var firstPlayerInfo:Array;
      
      public function LotteryModel(){super();}
   }
}
