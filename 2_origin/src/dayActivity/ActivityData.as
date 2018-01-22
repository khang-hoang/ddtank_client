package dayActivity
{
   public class ActivityData
   {
       
      
      public var ID:int;
      
      public var MinLevel:int;
      
      public var MaxLevel:int;
      
      public var ActivityType:int;
      
      public var JumpType:int;
      
      public var Description:String;
      
      public var Count:int;
      
      public var ActivePoint:int;
      
      public var MoneyPoint:int;
      
      public var OverCount:int;
      
      public function ActivityData()
      {
         super();
      }
      
      public function resetOverCount() : void
      {
         OverCount = 0;
      }
   }
}