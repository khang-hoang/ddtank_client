package gameStarling.chat
{
   import ddt.view.chat.chatBall.ChatBallPlayer;
   import flash.geom.Point;
   import gameCommon.GameControl;
   import gameStarling.objects.GameLiving3D;
   import gameStarling.view.GameView3D;
   
   public class ChatBallPlayer3D extends ChatBallPlayer
   {
       
      
      public var player:GameLiving3D;
      
      public function ChatBallPlayer3D()
      {
         super();
      }
      
      override public function show() : void
      {
         (GameControl.Instance.gameView as GameView3D).mapSprite.addChild(this);
         super.show();
      }
      
      override public function set direction(param1:Point) : void
      {
      }
      
      override public function set directionX(param1:Number) : void
      {
      }
      
      override public function set directionY(param1:Number) : void
      {
      }
      
      public function setPos(param1:Number, param2:Number) : void
      {
         if(player)
         {
            this.x = param1 + player.pos.x;
            this.y = param2 + player.pos.y;
         }
      }
   }
}
