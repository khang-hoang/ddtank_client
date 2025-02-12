package worldBossHelper.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import ddt.data.ServerConfigInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import worldBossHelper.WorldBossHelperController;
   import worldBossHelper.WorldBossHelperManager;
   import worldBossHelper.data.WorldBossHelperTypeData;
   
   public class WorldBossHelperRightView extends Sprite implements Disposeable
   {
       
      
      private var _disposeArr:Array;
      
      private var _rightBg:ScaleBitmapImage;
      
      private var _buffTxt:FilterFrameText;
      
      private var _maxBtn:SimpleBitmapButton;
      
      private var _inputTxt:FilterFrameText;
      
      private var _buffNumTxt:FilterFrameText;
      
      private var _selectBtn1:SelectedCheckButton;
      
      private var _buybornTxt:FilterFrameText;
      
      private var _selectBtn2:SelectedCheckButton;
      
      private var _fightnowTxt:FilterFrameText;
      
      private var _selectBtn3:SelectedCheckButton;
      
      private var _startTxt:FilterFrameText;
      
      private var _selectBtn4:SelectedCheckButton;
      
      private var _startOnceTxt:FilterFrameText;
      
      private var _typeItemGroup1:SelectedButtonGroup;
      
      private var _typeItemGroup2:SelectedButtonGroup;
      
      private var _bitmapArr:Array;
      
      private var _numBg:Bitmap;
      
      private var _buffInputIcon:Bitmap;
      
      private var _selectBg1:Bitmap;
      
      private var _selectBg2:Bitmap;
      
      private var _minNum:int;
      
      private var _maxNum:int;
      
      private var _inputNum:int;
      
      private var _typeData:WorldBossHelperTypeData;
      
      public function WorldBossHelperRightView(){super();}
      
      public function get typeData() : WorldBossHelperTypeData{return null;}
      
      private function initView() : void{}
      
      public function setState() : void{}
      
      private function initEvent() : void{}
      
      protected function __typeItemHandler(param1:Event) : void{}
      
      protected function __chooseItemHandler(param1:Event) : void{}
      
      private function removeEvent() : void{}
      
      protected function __inputHandler(param1:Event) : void{}
      
      protected function __maxBtnHandler(param1:MouseEvent) : void{}
      
      private function updateInputView() : void{}
      
      public function dispose() : void{}
   }
}
