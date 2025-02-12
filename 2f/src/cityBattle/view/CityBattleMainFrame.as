package cityBattle.view
{
   import cityBattle.CityBattleManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.HelpFrameUtils;
   import flash.events.MouseEvent;
   
   public class CityBattleMainFrame extends Frame
   {
       
      
      private var _castellanTerritorialBtn:SelectedButton;
      
      private var _territorialContentionBtn:SelectedButton;
      
      private var _territorialWelfareBtn:SelectedButton;
      
      private var _hBox:HBox;
      
      private var _btnGroup:SelectedButtonGroup;
      
      private var _view;
      
      private var _btnHelp:BaseButton;
      
      private var _redTxt:FilterFrameText;
      
      private var _blueTxt:FilterFrameText;
      
      private var _timeTxt:FilterFrameText;
      
      private var _currentIndex:int;
      
      public var changeBtn:Boolean;
      
      public function CityBattleMainFrame(){super();}
      
      private function initView() : void{}
      
      private function removeEvent() : void{}
      
      private function addEvent() : void{}
      
      protected function __changeHandler(param1:MouseEvent) : void{}
      
      public function changeView(param1:int) : void{}
      
      protected function _responseHandle(param1:FrameEvent) : void{}
      
      override public function dispose() : void{}
   }
}
