package superWinner.event
{
   import flash.events.Event;
   
   public class SuperWinnerEvent extends Event
   {
      
      public static const ENTER_ROOM:String = "enter_room";
      
      public static const RETURN_HALL:String = "return_hall";
      
      public static const FLUSH_AWARDS:String = "flush_awards";
      
      public static const FLUSH_MY_AWARDS:String = "flush_my_awards";
      
      public static const INIT_PLAYERS:String = "init_players";
      
      public static const START_ROLL_DICES:String = "start_roll_dices";
      
      public static const PROGRESS_TIMES_UP:String = "progress_time_up";
      
      public static const ROLL_DICE:String = "roll_dice";
      
      public static const RETURN_DICES:String = "return_dices";
      
      public static const CHAMPIOM_CHANGE:String = "champion_change";
      
      public static const JOIN_ROOM:String = "join_room";
      
      public static const NOTICE:String = "notice";
      
      public static const SHOW_TIP:String = "showtip";
      
      public static const HIDE_TIP:String = "hidetip";
       
      
      public var resultData:Object;
      
      public function SuperWinnerEvent(param1:String, param2:Boolean = false, param3:Boolean = false){super(null,null,null);}
   }
}
