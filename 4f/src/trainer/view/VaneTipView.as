package trainer.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.manager.NoviceDataManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PathManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   
   public class VaneTipView extends BaseAlerFrame
   {
       
      
      private var _vane:Bitmap;
      
      private var _conent:FilterFrameText;
      
      public function VaneTipView(){super();}
      
      private function initView() : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      public function show() : void{}
      
      override public function dispose() : void{}
   }
}
