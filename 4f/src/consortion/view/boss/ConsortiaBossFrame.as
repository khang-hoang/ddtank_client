package consortion.view.boss
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import consortion.guard.ConsortiaGuardControl;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.events.Event;
   
   public class ConsortiaBossFrame extends Frame
   {
      
      public static const PAGE_BOSS:int = 0;
      
      public static const PAGE_GUARD:int = 1;
       
      
      private var _bg:Bitmap;
      
      private var _titleText1:FilterFrameText;
      
      private var _titleText2:FilterFrameText;
      
      private var _titleText3:FilterFrameText;
      
      private var _titleText4:FilterFrameText;
      
      private var _titleText5:FilterFrameText;
      
      private var _levelView:ConsortiaBossLevelView;
      
      private var _bossSelectBtn:SelectedButton;
      
      private var _guardSelectBtn:SelectedButton;
      
      private var _group:SelectedButtonGroup;
      
      private var _bossView:ConsortiaBossView;
      
      private var _guardView:ConsortiaGuardBossView;
      
      private var _cellList:Vector.<BossMemberItem>;
      
      public function ConsortiaBossFrame(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function __onChange(param1:Event) : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      private function removeEvent() : void{}
      
      public function get levelView() : ConsortiaBossLevelView{return null;}
      
      public function get currentPage() : int{return 0;}
      
      public function get cellList() : Vector.<BossMemberItem>{return null;}
      
      override public function dispose() : void{}
   }
}
