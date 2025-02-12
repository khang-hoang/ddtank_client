package ddt.view.chat
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.vo.AlertInfo;
   import ddt.data.player.FriendListPlayer;
   import ddt.manager.ChatManager;
   import ddt.manager.IMManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import ddt.utils.HelperUIModuleLoad;
   import ddt.utils.Helpers;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class ChatInputView extends Sprite
   {
      
      public static const BIG_BUGLE:uint = 0;
      
      public static const SMALL_BUGLE:uint = 1;
      
      public static const PRIVATE:uint = 2;
      
      public static const CONSORTIA:uint = 3;
      
      public static const TEAM:uint = 4;
      
      public static const CURRENT:uint = 5;
      
      public static const SYS_NOTICE:uint = 6;
      
      public static const SYS_TIP:uint = 7;
      
      public static const ADMIN_NOTICE:int = 8;
      
      public static const CHURCH_CHAT:int = 9;
      
      public static const DEFENSE_TIP:int = 10;
      
      public static const DEFY_AFFICHE:uint = 11;
      
      public static const CROSS_NOTICE:uint = 12;
      
      public static const HOTSPRING_ROOM:uint = 13;
      
      public static const GM_NOTICE:uint = 14;
      
      public static const CROSS_BUGLE:uint = 15;
      
      public static const WORLDBOSS_ROOM:uint = 20;
      
      public static const COMPLEX_NOTICE:uint = 21;
      
      public static const CHRISTMAS_CHAT:uint = 25;
      
      public static const CATCH_INSECT_CHAT:uint = 99;
      
      public static const HOME_CHAT:uint = 27;
      
      public static const ONE_NOTICE:uint = 28;
      
      public static const SUPERWINNER_CHAT:uint = 26;
      
      public static const DEMON_CHI_YOU:uint = 35;
      
      public static const PUTFIREWORKS:uint = 29;
      
      public static const TASK:uint = 31;
       
      
      private var _preChannel:int = -1;
      
      private var _bg:Bitmap;
      
      private var _btnEnter:BaseButton;
      
      private var _channel:int = 0;
      
      private var _channelBtn:Sprite;
      
      private var _channelPanel:ChatChannelPanel;
      
      private var _channelState:ScaleFrameImage;
      
      private var _faceBtn:BaseButton;
      
      private var _facePanel:ChatFacePanel;
      
      private var _fastReplyBtn:BaseButton;
      
      private var _fastReplyPanel:ChatFastReplyPanel;
      
      private var _friendListBtn:BaseButton;
      
      private var _friendListPanel:ChatFriendListPanel;
      
      private var _inputField:ChatInputField;
      
      private var _lastRecentSendTime:int = -30000;
      
      private var _lastSendChatTime:int = -30000;
      
      private var _chatPrivateFrame:ChatPrivateFrame;
      
      private var _friendListPanelPos:Point;
      
      private var _fastReplyPanelPos:Point;
      
      private var _facePanelPos:Point;
      
      private var _channelPanelPos:Point;
      
      private var _imBtnInGame:SimpleBitmapButton;
      
      private var _faceBtnInGame:SimpleBitmapButton;
      
      private var _fastReplyBtnInGame:SimpleBitmapButton;
      
      private var channelII:uint;
      
      public function ChatInputView(){super();}
      
      public function set enableGameState(param1:Boolean) : void{}
      
      public function savePreChannel() : void{}
      
      public function revertChannel() : void{}
      
      public function get fastReplyPanel() : ChatFastReplyPanel{return null;}
      
      public function set channel(param1:int) : void{}
      
      private function __onCustomSetPrivateChatTo(param1:ChatEvent) : void{}
      
      private function __frameEventHandler(param1:FrameEvent) : void{}
      
      public function set faceEnabled(param1:Boolean) : void{}
      
      public function getCurrentInputChannel() : int{return 0;}
      
      public function get inputField() : ChatInputField{return null;}
      
      public function sendCurrentText() : void{}
      
      public function setInputText(param1:String) : void{}
      
      public function setPrivateChatTo(param1:String, param2:int = 0, param3:Object = null) : void{}
      
      public function hidePanel() : void{}
      
      public function showFastReplypanel() : void{}
      
      private function __panelBtnClick(param1:MouseEvent) : void{}
      
      private function showPanel(param1:ChatBasePanel, param2:Point) : void{}
      
      private function __onChannelSelected(param1:ChatEvent) : void{}
      
      private function __onEnterClick(param1:MouseEvent) : void{}
      
      private function __onFaceSelect(param1:Event) : void{}
      
      private function __onFastSelect(param1:Event) : void{}
      
      private function __onInputTextChanged(param1:ChatEvent) : void{}
      
      private function checkCanSendChannel(param1:ChatData) : Boolean{return false;}
      
      private function checkCanSendTime() : Boolean{return false;}
      
      private function init() : void{}
      
      private function initEvent() : void{}
   }
}
