package pyramid.view
{
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.PyramidEvent;
   import ddt.manager.GameInSocketOut;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.PyramidManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import pyramid.PyramidControl;
   
   public class PyramidLeftView extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _startBtn:BaseButton;
      
      private var _endBtn:BaseButton;
      
      private var _myLevelTxt:FilterFrameText;
      
      private var _myScoreTxt:FilterFrameText;
      
      private var _scoreAdd:FilterFrameText;
      
      private var _currentGetScore:FilterFrameText;
      
      private var _countMsgTxt:FilterFrameText;
      
      private var _countTxt:FilterFrameText;
      
      private var _pyramidCards:PyramidCards;
      
      private var _selectedAutoOpenCard:SelectedCheckButton;
      
      public function PyramidLeftView(){super();}
      
      private function initView() : void{}
      
      private function __movieLockHandler(param1:PyramidEvent) : void{}
      
      private function initEvent() : void{}
      
      private function updateData() : void{}
      
      private function __startOrStopHandler(param1:PyramidEvent) : void{}
      
      private function __cardResultHandler(param1:PyramidEvent) : void{}
      
      private function __DieEventHandler(param1:PyramidEvent) : void{}
      
      private function __scoreConvertEventHandler(param1:PyramidEvent) : void{}
      
      private function isStart(param1:Boolean) : void{}
      
      public function __startBtnHanlder(param1:MouseEvent) : void{}
      
      private function _selectedAutoOpenCardClickHandler(param1:MouseEvent) : void{}
      
      private function __autoOpenCardChangeHandler(param1:PyramidEvent) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
