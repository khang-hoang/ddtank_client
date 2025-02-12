package escort.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.manager.CacheSysManager;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ChatManager;
   import ddt.manager.KeyboardShortcutsManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import ddt.states.BaseStateView;
   import ddt.utils.PositionUtils;
   import ddt.view.MainToolBar;
   import escort.EscortControl;
   import escort.EscortManager;
   import escort.event.EscortEvent;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import gameCommon.GameControl;
   import invite.InviteManager;
   
   public class EscortMainView extends BaseStateView
   {
       
      
      private var _mapView:EscortMapView;
      
      private var _exitBtn:EscortExitBtn;
      
      private var _threeBtnView:EscortThreeBtnView;
      
      private var _countDownView:EscortCountDownView;
      
      private var _rankView:EscortRankView;
      
      private var _chatView:Sprite;
      
      private var _waitMc:MovieClip;
      
      private var _gameStartCountDownView:EscortStartCountDownView;
      
      private var _helpBtn:EscortHelpBtn;
      
      private var _runPercent:EscortRunPercentView;
      
      private var _sprintCountDownView:EscortSprintCountDownView;
      
      public function EscortMainView(){super();}
      
      override public function enter(param1:BaseStateView, param2:Object = null) : void{}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function destroyHandler(param1:Event) : void{}
      
      private function arriveHandler(param1:EscortEvent) : void{}
      
      private function returnMainState(param1:FrameEvent) : void{}
      
      private function __startLoading(param1:Event) : void{}
      
      private function allReadyHandler(param1:EscortEvent) : void{}
      
      private function doStartGame(param1:Date, param2:Date) : void{}
      
      private function removeEvent() : void{}
      
      override public function leaving(param1:BaseStateView) : void{}
      
      override public function getType() : String{return null;}
   }
}
