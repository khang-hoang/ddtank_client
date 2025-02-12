package church
{
   import baglocked.BaglockedManager;
   import campbattle.CampBattleManager;
   import church.events.WeddingRoomEvent;
   import church.view.ChurchAlertFrame;
   import com.pickgliss.action.AlertAction;
   import com.pickgliss.action.FunctionAction;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.loader.BaseLoader;
   import com.pickgliss.loader.LoadResourceManager;
   import com.pickgliss.loader.LoaderEvent;
   import com.pickgliss.manager.CacheSysManager;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.action.FrameShowAction;
   import ddt.data.ChurchRoomInfo;
   import ddt.data.ServerInfo;
   import ddt.data.player.BasePlayer;
   import ddt.data.player.PlayerInfo;
   import ddt.events.PkgEvent;
   import ddt.manager.ChatManager;
   import ddt.manager.ExternalInterfaceManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PathManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import ddt.view.UIModuleSmallLoading;
   import ddt.view.chat.ChatData;
   import ddt.view.common.church.ChurchDialogueAgreePropose;
   import ddt.view.common.church.ChurchDialogueRejectPropose;
   import ddt.view.common.church.ChurchDialogueUnmarried;
   import ddt.view.common.church.ChurchInviteFrame;
   import ddt.view.common.church.ChurchMarryApplySuccess;
   import ddt.view.common.church.ChurchProposeFrame;
   import ddt.view.common.church.ChurchProposeResponseFrame;
   import ddtBuried.BuriedManager;
   import email.MailManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import invite.InviteManager;
   import quest.TaskManager;
   import road7th.comm.PackageIn;
   import road7th.utils.StringHelper;
   
   public class ChurchManager extends EventDispatcher
   {
      
      public static const GENERALSCENEINDEX:int = 1;
      
      public static const ADVANCEDSCENEINDEX:int = 2;
      
      public static const COSTLYSCENEINDEX:int = 3;
      
      private static const MOON_SCENE:Boolean = true;
      
      public static const CIVIL_PLAYER_INFO_MODIFY:String = "civilplayerinfomodify";
      
      public static const CIVIL_SELFINFO_CHANGE:String = "civilselfinfochange";
      
      public static const SUBMIT_REFUND:String = "submitRefund";
      
      private static var _instance:ChurchManager;
       
      
      private var _currentScene:int = 1;
      
      private var _churchDialogueUnmarried:ChurchDialogueUnmarried;
      
      private var _churchProposeFrame:ChurchProposeFrame;
      
      private var _proposeResposeFrame:ChurchProposeResponseFrame;
      
      private var _churchMarryApplySuccess:ChurchMarryApplySuccess;
      
      private var _alertMarried:BaseAlerFrame;
      
      public var _weddingSuccessfulComplete:Boolean;
      
      public var seniorType:int;
      
      public var lastScene:int = 1;
      
      private var _selfRoom:ChurchRoomInfo;
      
      private var _currentRoom:ChurchRoomInfo;
      
      private var _mapLoader01:BaseLoader;
      
      private var _mapLoader02:BaseLoader;
      
      private var _mapLoader00:BaseLoader;
      
      private var _isRemoveLoading:Boolean = true;
      
      private var _userID:int;
      
      public var isUnwedding:Boolean;
      
      private var money:int;
      
      private var marryApplyList:Array;
      
      private var _churchDialogueAgreePropose:ChurchDialogueAgreePropose;
      
      private var _churchDialogueRejectPropose:ChurchDialogueRejectPropose;
      
      private var unwedingmsg:String;
      
      private var _linkServerInfo:ServerInfo;
      
      public function ChurchManager(){super();}
      
      public static function get instance() : ChurchManager{return null;}
      
      public function get currentScene() : int{return 0;}
      
      public function set currentScene(param1:int) : void{}
      
      public function get selfRoom() : ChurchRoomInfo{return null;}
      
      public function set selfRoom(param1:ChurchRoomInfo) : void{}
      
      public function set currentRoom(param1:ChurchRoomInfo) : void{}
      
      public function get currentRoom() : ChurchRoomInfo{return null;}
      
      private function onChurchRoomInfoChange() : void{}
      
      public function loadMap() : void{}
      
      protected function onMapSrcLoadedComplete(param1:LoaderEvent = null) : void{}
      
      public function tryLoginScene() : void{}
      
      private function __loadingIsClose(param1:Event) : void{}
      
      public function removeLoadingEvent() : void{}
      
      public function setup() : void{}
      
      private function reqeustPayHander(param1:PkgEvent) : void{}
      
      public function openAlert() : void{}
      
      private function reponseHander(param1:FrameEvent) : void{}
      
      private function __onSubmitRefund(param1:Event) : void{}
      
      private function __upCivilPlayerView(param1:PkgEvent) : void{}
      
      private function __getMarryInfo(param1:PkgEvent) : void{}
      
      public function __showPropose(param1:PkgEvent) : void{}
      
      private function churchProposeFrameClose(param1:Event) : void{}
      
      private function __marryApply(param1:PkgEvent) : void{}
      
      private function checkMarryApplyList(param1:int) : Boolean{return false;}
      
      private function churchMarryApplySuccessClose(param1:Event) : void{}
      
      private function ProposeResposeFrameClose(param1:Event) : void{}
      
      private function __marryApplyReply(param1:PkgEvent) : void{}
      
      private function marriedResponse(param1:FrameEvent) : void{}
      
      private function churchDialogueRejectProposeClose(param1:Event) : void{}
      
      private function churchDialogueAgreeProposeClose(param1:Event) : void{}
      
      private function __divorceApply(param1:PkgEvent) : void{}
      
      private function churchDialogueUnmarriedClose(param1:Event) : void{}
      
      private function __churchInvite(param1:PkgEvent) : void{}
      
      private function __marryPropGet(param1:PkgEvent) : void{}
      
      private function __roomLogin(param1:PkgEvent) : void{}
      
      private function __tipsMarryRoomframeResponse(param1:FrameEvent) : void{}
      
      private function __updateSelfRoom(param1:PkgEvent) : void{}
      
      public function __removePlayer(param1:PkgEvent) : void{}
      
      public function isAdmin(param1:PlayerInfo) : Boolean{return false;}
      
      public function sendValidateMarry(param1:BasePlayer) : void{}
   }
}
