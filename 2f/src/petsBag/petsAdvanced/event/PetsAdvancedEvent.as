package petsBag.petsAdvanced.event
{
   import flash.events.Event;
   
   public class PetsAdvancedEvent extends Event
   {
      
      public static const PETSADVANCE_OPENVIEW:String = "petsAdvanceOpenView";
      
      public static const EVOLUTION_COMPLETE:String = "advanced_complete";
      
      public static const PROGRESS_MOVIE_COMPLETE:String = "progress_movie_complete";
      
      public static const STARORGRADE_MOVIE_COMPLETE:String = "starOrGrade_movie_complete";
      
      public static const ALL_MOVIE_COMPLETE:String = "all_movie_complete";
       
      
      public function PetsAdvancedEvent(param1:String, param2:Boolean = false, param3:Boolean = false){super(null,null,null);}
   }
}
