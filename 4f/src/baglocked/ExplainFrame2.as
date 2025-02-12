package baglocked
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ExplainFrame2 extends Frame
   {
       
      
      private var _bagLockedController:BagLockedController;
      
      private var _explainMap:Bitmap;
      
      private var _btnBG:ScaleBitmapImage;
      
      private var _delPassBtn:TextButton;
      
      private var _setPassBtn:TextButton;
      
      private var _updatePassBtn:TextButton;
      
      private var _phoneServiceBtn:TextButton;
      
      private var _appealBtn:TextButton;
      
      private var _unLockBtn:SimpleBitmapButton;
      
      public function ExplainFrame2(){super();}
      
      public function set bagLockedController(param1:BagLockedController) : void{}
      
      public function show() : void{}
      
      override protected function init() : void{}
      
      private function __frameEventHandler(param1:FrameEvent) : void{}
      
      private function __setPassBtnClick(param1:Event) : void{}
      
      private function __delPassBtnClick(param1:Event) : void{}
      
      private function __removeLockBtnClick(param1:Event) : void{}
      
      private function __updatePassBtnClick(param1:Event) : void{}
      
      protected function __appealBtnClick(param1:MouseEvent) : void{}
      
      protected function __phoneServiceBtnClick(param1:MouseEvent) : void{}
      
      private function addEvent() : void{}
      
      private function remvoeEvent() : void{}
      
      override public function dispose() : void{}
      
      public function get phoneServiceBtn() : TextButton{return null;}
   }
}
