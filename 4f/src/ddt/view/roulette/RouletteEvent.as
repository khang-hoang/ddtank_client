package ddt.view.roulette
{
   import flash.events.Event;
   
   public class RouletteEvent extends Event
   {
      
      public static const ROULETTE_KEYCOUNT_UPDATE:String = "roulette_key_count_update";
       
      
      private var _keyCount:int = 0;
      
      public function RouletteEvent(param1:String, param2:Boolean = false, param3:Boolean = false){super(null,null,null);}
      
      public function set keyCount(param1:int) : void{}
      
      public function get keyCount() : int{return 0;}
   }
}
