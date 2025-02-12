package powerUp
{
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.PkgEvent;
   import ddt.manager.SocketManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class PowerUpMovieManager extends EventDispatcher
   {
      
      public static const POWER_UP:String = "powerUp";
      
      public static const POWER_UP_MOVIE_OVER:String = "powerUpMovieOver";
      
      private static var _instance:PowerUpMovieManager;
      
      public static var powerNum:int;
      
      public static var addedPowerNum:int;
      
      public static var isInPlayerInfoView:Boolean;
      
      public static var isCanPlayMovie:Boolean;
       
      
      private var _powerMovie:PowerSprite;
      
      public function PowerUpMovieManager(){super();}
      
      public static function get Instance() : PowerUpMovieManager{return null;}
      
      public function setup() : void{}
      
      protected function __fightPowerHandler(param1:PkgEvent) : void{}
      
      protected function __powerUpMovieOverHandler(param1:Event) : void{}
      
      protected function __powerUpHandler(param1:Event) : void{}
   }
}
