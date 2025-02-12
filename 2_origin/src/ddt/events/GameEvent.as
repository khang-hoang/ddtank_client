package ddt.events
{
   import flash.events.Event;
   
   public class GameEvent extends Event
   {
      
      public static const WIND_CHANGED:String = "windChanged";
      
      public static const TURN_CHANGED:String = "turnChanged";
      
      public static const READY_CHANGED:String = "readyChanged";
      
      public static const DungeonHelpVisibleChanged:String = "DungeonHelpVisibleChanged";
      
      public static const UPDATE_SMALLMAPVIEW:String = "updateSmallMapView";
      
      public static const EXPSHOWED:String = "expshowed";
      
      public static const TRYAGAIN:String = "tryagain";
      
      public static const GIVEUP:String = "giveup";
      
      public static const TIMEOUT:String = "timeOut";
      
      public static const MISSIONAGAIN:String = "missionAgain";
      
      public static const WISH_SELECT:String = "wishSelect";
      
      public static const SELECT_COMPLETE:String = "selectComplete";
      
      public static const ADDTERRACE:String = "addTerrace";
      
      public static const DELTERRACE:String = "delTerrace";
      
      public static const TRUSTEESHIP_CHANGE:String = "trusteeshipChange";
      
      public static const FIGHT_STATUS_CHANGE:String = "gameFightStatusChange";
      
      public static const UPDATE_NAMEPOS:String = "updatenamepos";
      
      public static const ADD_ADDRING:String = "addringanamition";
      
      public static const ADD_GURADCORE_EFFECT:String = "addguardcoreeffect";
       
      
      public var data;
      
      public function GameEvent(param1:String, param2:*)
      {
         data = param2;
         super(param1);
      }
   }
}
