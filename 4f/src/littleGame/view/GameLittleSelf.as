package littleGame.view
{
   import com.greensock.TweenLite;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.SoundManager;
   import flash.events.Event;
   import littleGame.LittleGameManager;
   import littleGame.character.LittleGameCharacter;
   import littleGame.events.LittleLivingEvent;
   import littleGame.model.LittleSelf;
   
   public class GameLittleSelf extends GameLittlePlayer
   {
       
      
      private var _self:LittleSelf;
      
      public function GameLittleSelf(param1:LittleSelf){super(null);}
      
      override protected function createBody() : void{}
      
      override protected function addEvent() : void{}
      
      private function __soundChanged(param1:Event) : void{}
      
      override protected function removeEvent() : void{}
      
      override public function dispose() : void{}
      
      private function __getScore(param1:LittleLivingEvent) : void{}
   }
}
