package consortion.view.selfConsortia
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedTextButton;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import consortion.ConsortionModelManager;
   import consortion.event.ConsortionEvent;
   import ddt.events.PlayerPropertyEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ConsortionSkillFrame extends Frame
   {
      
      public static const CONSORTION_SKILL:int = 0;
      
      public static const PERSONAL_SKILL_CON:int = 1;
      
      public static const PERSONAL_SKILL_METAL:int = 2;
       
      
      private var _bg:MutipleImage;
      
      private var _richesTxt:FilterFrameText;
      
      private var _richbg:ScaleFrameImage;
      
      private var _riches:FilterFrameText;
      
      private var _manager:TextButton;
      
      private var _consortionSkill:SelectedTextButton;
      
      private var _personalSkill:SelectedTextButton;
      
      private var _btnGroup:SelectedButtonGroup;
      
      private var _contribute:SelectedTextButton;
      
      private var _metal:SelectedTextButton;
      
      private var _cmGroup:SelectedButtonGroup;
      
      private var _scrollbg:ScaleBitmapImage;
      
      private var _vbox:VBox;
      
      private var _panel:ScrollPanel;
      
      private var _items:Vector.<ConsortionSkillItem>;
      
      private var _oldType:int = 0;
      
      public function ConsortionSkillFrame(){super();}
      
      private function initView() : void{}
      
      private function cmGroupVisible(param1:Boolean) : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      protected function __cmChangeHandler(param1:Event) : void{}
      
      private function __richChangeHandler(param1:PlayerPropertyEvent) : void{}
      
      private function __selfRichChangeHandler(param1:PlayerPropertyEvent) : void{}
      
      private function __stateChange(param1:ConsortionEvent) : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      private function __manageHandler(param1:MouseEvent) : void{}
      
      private function __changeHandler(param1:Event) : void{}
      
      private function showContent(param1:int) : void{}
      
      private function clearItem() : void{}
      
      override public function dispose() : void{}
   }
}
