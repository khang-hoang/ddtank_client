package trainer.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ChatManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.geom.Point;
   import trainer.controller.NewHandGuideManager;
   
   public class WelcomeView extends BaseAlerFrame
   {
       
      
      private var _bmpTxt:FilterFrameText;
      
      private var _bmpTxt1:FilterFrameText;
      
      private var _bmpNpc:Bitmap;
      
      private var _txtName:FilterFrameText;
      
      public function WelcomeView(){super();}
      
      override public function dispose() : void{}
      
      private function initView() : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      public function show() : void{}
   }
}
