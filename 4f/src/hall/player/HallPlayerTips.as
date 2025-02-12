package hall.player
{
   import bagAndInfo.info.PlayerInfoViewControl;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.IconButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ChatManager;
   import ddt.manager.IMManager;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class HallPlayerTips extends Sprite implements Disposeable
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _addFriend:IconButton;
      
      private var _privateChat:IconButton;
      
      private var _viewInfo:IconButton;
      
      private var _nickName:String;
      
      private var _id:int;
      
      public function HallPlayerTips(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      public function setInfo(param1:String, param2:int) : void{}
      
      protected function __onViewInfo(param1:MouseEvent) : void{}
      
      protected function __onPrivateChat(param1:MouseEvent) : void{}
      
      protected function __onAddFriend(param1:MouseEvent) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
