package defendisland.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ChatManager;
   import ddt.manager.CheckWeaponManager;
   import ddt.manager.GameInSocketOut;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import ddt.utils.HelpFrameUtils;
   import ddt.utils.PositionUtils;
   import defendisland.DefendislandControl;
   import defendisland.DefendislandManager;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import gameCommon.GameControl;
   
   public class DefendislandFrame extends Frame
   {
       
      
      private var _bg:Bitmap;
      
      private var _startGameBtn:BaseButton;
      
      private var _cancelGameBtn:BaseButton;
      
      private var _helpBtn:BaseButton;
      
      private var boss1:Bitmap;
      
      private var boss2:Bitmap;
      
      private var boss3:Bitmap;
      
      private var boss4:Bitmap;
      
      private var boss5:Bitmap;
      
      private var icon1:Component;
      
      private var icon2:Component;
      
      private var icon3:Component;
      
      private var icon4:Component;
      
      private var icon5:Component;
      
      private var bossShine:Bitmap;
      
      private var _bossList:Array;
      
      private var waiting:Bitmap;
      
      private var timeTxt:FilterFrameText;
      
      public function DefendislandFrame(){super();}
      
      private function initView() : void{}
      
      public function setData() : void{}
      
      private function addEvent() : void{}
      
      protected function __startLoading(param1:Event) : void{}
      
      private function createRoomBtnHandler(param1:MouseEvent) : void{}
      
      private function quickJoinBtnHandler(param1:MouseEvent) : void{}
      
      private function removeEvent() : void{}
      
      protected function _responseHandle(param1:FrameEvent) : void{}
      
      override public function dispose() : void{}
   }
}
