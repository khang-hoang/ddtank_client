package boguAdventure.model
{
   public class BoguAdventureModel
   {
       
      
      private var _mapInfoList:Vector.<BoguAdventureCellInfo>;
      
      public var awardCount:Array;
      
      public var awardGoodsTip:Array;
      
      public var openCount:int;
      
      public var isAcquireAward1:Boolean;
      
      public var isAcquireAward2:Boolean;
      
      public var isAcquireAward3:Boolean;
      
      public var revivePrice:int;
      
      public var findMinePrice:int;
      
      public var resetPrice:int;
      
      public var resetCount:int;
      
      public var isFreeReset:Boolean;
      
      public function BoguAdventureModel(){super();}
      
      public function set mapInfoList(param1:Vector.<BoguAdventureCellInfo>) : void{}
      
      public function get mapInfoList() : Vector.<BoguAdventureCellInfo>{return null;}
      
      public function dispose() : void{}
   }
}
