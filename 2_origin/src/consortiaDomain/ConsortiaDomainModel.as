package consortiaDomain
{
   public class ConsortiaDomainModel
   {
       
      
      public var allBuildInfo:Object;
      
      public var monsterInfo:Object;
      
      public var isActive:Boolean;
      
      public var BeginTime:Date;
      
      public var EndTime:Date;
      
      public var killRankArr:Array;
      
      public var myRank:int;
      
      public var myKillNum:int;
      
      public var monsterBornArr:Array;
      
      public var monsterWaveIndex:int = -1;
      
      public var autoRepairCompleteTime:Date;
      
      public function ConsortiaDomainModel()
      {
         super();
      }
   }
}
