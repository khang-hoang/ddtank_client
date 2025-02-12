package hotSpring.view
{
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import hotSpring.controller.HotSpringRoomManager;
   import hotSpring.model.HotSpringRoomModel;
   
   public class RoomMenuView extends Sprite implements Disposeable
   {
       
      
      private var _controller:HotSpringRoomManager;
      
      private var _model:HotSpringRoomModel;
      
      private var _menuIsOpen:Boolean = true;
      
      private var _BG:Bitmap;
      
      private var _closeBtn:SimpleBitmapButton;
      
      private var _switchIMG:ScaleFrameImage;
      
      private var _returnBtn:SimpleBitmapButton;
      
      public function RoomMenuView(param1:HotSpringRoomManager, param2:HotSpringRoomModel){super();}
      
      private function initialize() : void{}
      
      private function setEvent() : void{}
      
      private function backRoomList(param1:MouseEvent) : void{}
      
      private function switchMenu(param1:MouseEvent) : void{}
      
      private function menuShowOrHide(param1:Event) : void{}
      
      public function dispose() : void{}
   }
}
