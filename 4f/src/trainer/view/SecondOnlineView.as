package trainer.view
{
   import bagAndInfo.cell.BaseCell;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.manager.NoviceDataManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.controls.container.SimpleTileList;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ChatManager;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PathManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.geom.Point;
   
   public class SecondOnlineView extends BaseAlerFrame
   {
       
      
      private var _bmpBg:ScaleBitmapImage;
      
      private var _bmpNpc:Bitmap;
      
      private var _tile:SimpleTileList;
      
      private var _conent1:FilterFrameText;
      
      private var _conent2:FilterFrameText;
      
      private var _conent3:FilterFrameText;
      
      public function SecondOnlineView(){super();}
      
      override public function dispose() : void{}
      
      private function initView() : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      public function show() : void{}
   }
}
