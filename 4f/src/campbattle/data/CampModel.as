package campbattle.data
{
   import flash.geom.Point;
   import road7th.data.DictionaryData;
   
   public class CampModel
   {
       
      
      public var isOpen:Boolean;
      
      public var playerModel:DictionaryData;
      
      public var monsterList:DictionaryData;
      
      public var scoreList:Array;
      
      public var perScoreRankList:Array;
      
      public var monsterCount:int;
      
      public var isCapture:Boolean;
      
      public var captureZoneID:int;
      
      public var captureUserID:int;
      
      public var captureName:String;
      
      public var captureTeam:int;
      
      public var liveTime:int;
      
      public var myTeam:int;
      
      public var myOutPos:Point;
      
      public var isShowResurrectView:Boolean;
      
      public var myScore:int;
      
      public var doorIsOpen:Boolean;
      
      public var winCount:int;
      
      public var endTime:Date;
      
      public var isFighting:Boolean;
      
      public var monsterPosList:Array;
      
      public function CampModel(){super();}
   }
}
