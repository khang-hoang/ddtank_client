package ddt.manager
{
   import com.pickgliss.toplevel.StageReferance;
   import ddt.data.player.PlayerState;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import times.utils.timerManager.TimerJuggler;
   import times.utils.timerManager.TimerManager;
   
   public class PlayerStateManager
   {
      
      private static const AWAY_TIME:int = 300;
      
      private static var _instance:PlayerStateManager;
       
      
      private var _timer:TimerJuggler;
      
      public function PlayerStateManager(param1:SingleTonForce){super();}
      
      public static function get Instance() : PlayerStateManager{return null;}
      
      public function setup() : void{}
      
      private function timerComplete(param1:Event) : void{}
      
      private function onStageClick(param1:MouseEvent) : void{}
   }
}

class SingleTonForce
{
    
   
   function SingleTonForce(){super();}
}
