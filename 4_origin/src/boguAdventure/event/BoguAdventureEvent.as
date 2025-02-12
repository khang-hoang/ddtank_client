package boguAdventure.event
{
   import flash.events.Event;
   
   public class BoguAdventureEvent extends Event
   {
      
      public static const EVENT:String = "boguadventureeventevent";
      
      public static const WALK:String = "boguadventureeventwalk";
      
      public static const STOP:String = "boguadventureeventstop";
      
      public static const ACTION_COMPLETE:String = "boguadventureeventactioncomplete";
      
      public static const UPDATE_MAP:String = "boguadventureeventupdatemap";
      
      public static const CHANGE_HP:String = "boguadventureeventchangehp";
      
      public static const UPDATE_CELL:String = "boguadventureeventupdatecell";
      
      public static const UPDATE_RESET:String = "boguadventureeventupdatereset";
       
      
      public var data:Object;
      
      public var eventType:String;
      
      public function BoguAdventureEvent(param1:String, param2:Object = null)
      {
         super("boguadventureeventevent");
         eventType = param1;
         data = param2;
      }
   }
}
