package farm.viewx.poultry
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.PkgEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import farm.FarmEvent;
   import farm.FarmModelController;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class TreeUpgradeWater extends Sprite implements Disposeable
   {
       
      
      private var _levelNum:int;
      
      private var _title:Bitmap;
      
      private var _level:FilterFrameText;
      
      private var _loadingBg:Bitmap;
      
      private var _loading:MovieClip;
      
      private var _exp:FilterFrameText;
      
      private var _checkBox:SelectedCheckButton;
      
      private var _waterBtn:BaseButton;
      
      private var _currentExp:Number;
      
      private var _totalExp:Number;
      
      private var _loveNum:int;
      
      private var _frameIndex:int;
      
      private var _isUpgrade:Boolean;
      
      public function TreeUpgradeWater(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      protected function __onWater(param1:PkgEvent) : void{}
      
      protected function __onWaterBtnClick(param1:MouseEvent) : void{}
      
      public function setLevelNum(param1:int) : void{}
      
      public function setExp(param1:Number, param2:Number) : void{}
      
      public function setLoveNum(param1:int) : void{}
      
      private function setLoadingFrame() : void{}
      
      protected function __onEnterFrame(param1:Event) : void{}
      
      private function set frameIndex(param1:int) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
