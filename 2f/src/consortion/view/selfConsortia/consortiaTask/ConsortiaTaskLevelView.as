package consortion.view.selfConsortia.consortiaTask
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import consortion.view.boss.ConsortiaBossLevelCell;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class ConsortiaTaskLevelView extends Sprite implements Disposeable
   {
       
      
      private var _txt:FilterFrameText;
      
      private var _bg:Bitmap;
      
      private var _levelShowBtn:SimpleBitmapButton;
      
      private var _showSprite:Sprite;
      
      private var _selectedBg:Bitmap;
      
      private var _selectedCellList:Vector.<ConsortiaBossLevelCell>;
      
      private var _selectedSprite:Sprite;
      
      private var _selectedLevel:int;
      
      public function ConsortiaTaskLevelView(){super();}
      
      public function get selectedLevel() : int{return 0;}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function selecteLevelHandler(param1:MouseEvent) : void{}
      
      private function showOrHideSelectedSprite(param1:MouseEvent) : void{}
      
      public function dispose() : void{}
   }
}
