package gameStick.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.text.FilterFrameText;
   import flash.display.Bitmap;
   import gameStick.GameStickManager;
   
   public class GameStickShareFrame extends BaseAlerFrame
   {
       
      
      private var _bg:Bitmap;
      
      private var _inputLabel:FilterFrameText;
      
      private var _inputText:FilterFrameText;
      
      private var _alertLabel:FilterFrameText;
      
      public function GameStickShareFrame(){super();}
      
      private function responseHandler(param1:FrameEvent) : void{}
   }
}
