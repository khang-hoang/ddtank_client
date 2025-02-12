package sevenday.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.quest.QuestInfo;
   import ddt.events.PkgEvent;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.HelpFrameUtils;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.events.Event;
   import quest.TaskManager;
   import road7th.comm.PackageIn;
   import sevenday.SevendayManager;
   
   public class SevendayMainFrame extends Frame
   {
       
      
      private var _bg:Bitmap;
      
      private var _title:Bitmap;
      
      private var _dayHBox:HBox;
      
      private var _dayBtnGroup:SelectedButtonGroup;
      
      private var _smalltitle:ScaleFrameImage;
      
      private var _baseBtn:SelectedButton;
      
      private var _superBtn:SelectedButton;
      
      private var _targetBtnGroup:SelectedButtonGroup;
      
      private var _sevendayTaskLeftView:SevendayTaskLeftView;
      
      private var _endTimeText:FilterFrameText;
      
      private var _completeText:FilterFrameText;
      
      private var _upgradeText:FilterFrameText;
      
      private var _targetCompleteText:FilterFrameText;
      
      private var _progress:SevendayTaskProgress;
      
      private var _helpBtn:SimpleBitmapButton;
      
      private var _contentArr:Array;
      
      public function SevendayMainFrame(){super();}
      
      private function initview() : void{}
      
      private function initEvent() : void{}
      
      private function __onGetProgressCount(param1:PkgEvent) : void{}
      
      private function __onTargetBtnChangeHandler(param1:Event) : void{}
      
      private function updateView() : void{}
      
      private function removeEvent() : void{}
      
      private function ___onDayBtnChangeHandler(param1:Event) : void{}
      
      public function show() : void{}
      
      override protected function onFrameClose() : void{}
      
      override public function dispose() : void{}
   }
}
