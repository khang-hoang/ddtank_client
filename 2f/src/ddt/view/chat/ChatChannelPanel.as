package ddt.view.chat
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.container.VBox;
   import ddt.manager.ShopManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   
   public class ChatChannelPanel extends ChatBasePanel
   {
       
      
      private var _bg:Bitmap;
      
      private var _channelBtns:Vector.<BaseButton>;
      
      private var _vbox:VBox;
      
      private var _currentChannel:Object;
      
      private const chanelMap:Array = [15,0,1,2,3,4,5];
      
      public function ChatChannelPanel(){super();}
      
      private function __itemClickHandler(param1:MouseEvent) : void{}
      
      override protected function init() : void{}
      
      public function get btnLen() : int{return 0;}
   }
}
