package ddt.manager
{
   import ddt.data.player.BasePlayer;
   import ddt.view.tips.PlayerTip;
   
   public class PlayerTipManager
   {
      
      private static var _view:PlayerTip;
      
      private static var _yOffset:int;
       
      
      public function PlayerTipManager(){super();}
      
      public static function show(param1:BasePlayer, param2:int = -1) : void{}
      
      public static function get instance() : PlayerTip{return null;}
      
      public static function hide() : void{}
   }
}
