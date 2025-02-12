package catchInsect.view
{
   import catchInsect.CatchInsectControl;
   import catchInsect.CatchInsectManager;
   import catchInsect.CatchInsectRoomModel;
   import catchInsect.PlayerVO;
   import catchInsect.data.InsectInfo;
   import catchInsect.event.CatchInsectEvent;
   import catchInsect.event.CatchInsectRoomEvent;
   import com.pickgliss.loader.LoadResourceManager;
   import com.pickgliss.loader.QueueLoader;
   import com.pickgliss.manager.CacheSysManager;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.player.PlayerInfo;
   import ddt.manager.KeyboardShortcutsManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.StateManager;
   import ddt.states.BaseStateView;
   import ddt.view.MainToolBar;
   import flash.events.Event;
   import flash.geom.Point;
   import hall.GameLoadingManager;
   import invite.InviteManager;
   import road7th.comm.PackageIn;
   import road7th.data.DictionaryData;
   
   public class CatchInsectRoomController extends BaseStateView
   {
      
      private static var _isFirstCome:Boolean = true;
      
      public static var isTimeOver:Boolean;
      
      private static var _instance:CatchInsectRoomController;
       
      
      private var _sceneModel:CatchInsectRoomModel;
      
      private var _waitingView:WaitingCatchInsectView;
      
      protected var _monsters:DictionaryData;
      
      private var _monsterCount:int = 0;
      
      private var _callback:Function;
      
      private var _callbackArg:int;
      
      private var _roomViewFlag:Boolean;
      
      public function CatchInsectRoomController(){super();}
      
      public static function get Instance() : CatchInsectRoomController{return null;}
      
      public function get sceneModel() : CatchInsectRoomModel{return null;}
      
      override public function enter(param1:BaseStateView, param2:Object = null) : void{}
      
      private function init() : void{}
      
      protected function __onTimeOut(param1:Event) : void{}
      
      private function addEvent() : void{}
      
      public function __updatePlayerStauts(param1:CatchInsectEvent) : void{}
      
      private function __monstersEvent(param1:CatchInsectEvent) : void{}
      
      private function __fightMonsterEvent(param1:CatchInsectEvent) : void{}
      
      private function __onLoadComplete(param1:Event) : void{}
      
      public function setSelfStatus(param1:int) : void{}
      
      private function removeEvent() : void{}
      
      override public function getBackType() : String{return null;}
      
      public function __addPlayer(param1:CatchInsectEvent) : void{}
      
      public function __removePlayer(param1:CatchInsectEvent) : void{}
      
      public function __movePlayer(param1:CatchInsectEvent) : void{}
      
      override public function getType() : String{return null;}
      
      override public function leaving(param1:BaseStateView) : void{}
      
      override public function dispose() : void{}
   }
}
