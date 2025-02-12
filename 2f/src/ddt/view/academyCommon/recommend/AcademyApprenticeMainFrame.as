package ddt.view.academyCommon.recommend
{
   import academy.AcademyManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.player.AcademyPlayerInfo;
   import ddt.manager.AcademyFrameManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SharedManager;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   
   public class AcademyApprenticeMainFrame extends BaseAlerFrame implements Disposeable
   {
      
      public static const MAX_ITEM:int = 3;
      
      public static const BOTTOM_GAP:int = 11;
       
      
      protected var _recommendTitle:Bitmap;
      
      protected var _playerContainer:HBox;
      
      protected var _titleBtn:TextButton;
      
      protected var _alertInfo:AlertInfo;
      
      protected var _items:Array;
      
      protected var _players:Vector.<AcademyPlayerInfo>;
      
      protected var _treeImage:ScaleBitmapImage;
      
      protected var _treeImage2:Scale9CornerImage;
      
      protected var _currentItem:RecommendPlayerCellView;
      
      protected var _checkBoxBtn:SelectedCheckButton;
      
      public function AcademyApprenticeMainFrame(){super();}
      
      public function show() : void{}
      
      protected function initContent() : void{}
      
      protected function initPlayerContainer() : void{}
      
      protected function initEvent() : void{}
      
      private function __checkBoxBtnClick(param1:MouseEvent) : void{}
      
      protected function __itemClick(param1:MouseEvent) : void{}
      
      protected function __frameEvent(param1:FrameEvent) : void{}
      
      protected function __titleBtnClick(param1:MouseEvent) : void{}
      
      protected function updateItem() : void{}
      
      private function cleanItem() : void{}
      
      override public function dispose() : void{}
   }
}
