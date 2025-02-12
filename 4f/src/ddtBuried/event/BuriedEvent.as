package ddtBuried.event
{
   import flash.events.Event;
   
   public class BuriedEvent extends Event
   {
      
      public static const BURIED_OPENVIEW:String = "buriedOpenView";
      
      public static const DICEOVER:String = "diceover";
      
      public static const MAPOVER:String = "mapover";
      
      public static const WALKOVER:String = "walkOver";
      
      public static const UPDATABTNSTATS:String = "updatabtnstats";
      
      public static const OPEN_BURIEDVIEW:String = "openburiedview";
      
      public static const CARD_SHOW_OVER:String = "card_show_over";
      
      public static const CARD_WASH_START:String = "card_wash_start";
      
      public static const CARD_WASH_OVER:String = "card_wash_over";
      
      public static const CARD_TAKE_OVER:String = "card_take_over";
      
      public static const TAKE_CARD:String = "take_card";
      
      public static const LABYRINTH_OVER:String = "labyrith_over";
      
      public static const BOXMOVIE_OVER:String = "boxmovie_over";
      
      public static const RemoveEvent:String = "buried_removeEvent";
      
      public static const OneStep:String = "buried_oneStep";
      
      public static const UpDate_Stone_Count:String = "buried_UpDate_Stone_Count";
       
      
      public var data;
      
      public function BuriedEvent(param1:String, param2:* = null){super(null);}
   }
}
