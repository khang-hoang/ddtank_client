package happyLittleGame
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import funnyGames.FunnyGamesManager;
   import uiModeManager.bombUI.HappyLittleGameManager;
   
   public class GameCardLogicView extends Sprite implements Disposeable
   {
       
      
      private var cards:Array;
      
      private var gametypes:Array;
      
      public var callBack:Function;
      
      private var _currentCard:GameCard;
      
      private var _rightBtn:SimpleBitmapButton;
      
      private var _leftBtn:SimpleBitmapButton;
      
      public function GameCardLogicView(){super();}
      
      private function initCardView() : void{}
      
      private function __clickHandler(param1:MouseEvent) : void{}
      
      public function dispose() : void{}
   }
}
