package road.game.resource
{
   import flash.events.Event;
   
   public class ActionMovieEvent extends Event
   {
      
      public static const ACTION_START:String = "actionStart";
      
      public static const ACTION_END:String = "actionEnd";
      
      public static const EFFECT:String = "effect";
       
      
      private var _source:ActionMovie;
      
      private var _data:Object;
      
      public function ActionMovieEvent(param1:String, param2:Object = null){super(null);}
      
      public function get data() : Object{return null;}
      
      public function get source() : ActionMovie{return null;}
   }
}
