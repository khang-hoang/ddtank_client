package horseRace.data
{
   import ddt.data.player.PlayerInfo;
   
   public class HorseRacePlayerInfo extends PlayerInfo
   {
       
      
      public var horseRaceIndex:int = 0;
      
      public var horseRaceSpeed:Number = 0;
      
      public var horseRaceRank:int;
      
      public function HorseRacePlayerInfo()
      {
         super();
      }
   }
}
