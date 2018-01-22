package roomList.pvpRoomList
{
   import academy.AcademyManager;
   import com.pickgliss.manager.CacheSysManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import ddt.data.player.FriendListPlayer;
   import ddt.data.player.PlayerInfo;
   import ddt.events.CEvent;
   import ddt.events.CrazyTankSocketEvent;
   import ddt.events.PkgEvent;
   import ddt.loader.StartupResourceLoader;
   import ddt.manager.GameInSocketOut;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PathManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.PlayerTipManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import ddt.manager.StatisticManager;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import par.ParticleManager;
   import road7th.comm.PackageIn;
   import road7th.data.DictionaryData;
   import room.RoomManager;
   import room.model.RoomInfo;
   import roomList.LookupRoomFrame;
   import roomList.RoomListEnumerate;
   import trainer.view.NewHandContainer;
   
   public class RoomListController
   {
      
      private static var isShowTutorial:Boolean = false;
      
      private static var _instance:RoomListController;
       
      
      private var _model:RoomListModel;
      
      private var _view:RoomListView;
      
      private var _createRoomView:RoomListCreateRoomView;
      
      private var _findRoom:LookupRoomFrame;
      
      private var _buffList:DictionaryData;
      
      private var _timer:Timer;
      
      public function RoomListController()
      {
         super();
      }
      
      public static function disorder(param1:Array) : Array
      {
         var _loc6_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:* = null;
         var _loc5_:int = 0;
         _loc6_ = 0;
         while(_loc6_ < param1.length)
         {
            _loc4_ = Math.random() * 10000 % param1.length;
            _loc2_ = param1[_loc6_];
            param1[_loc6_] = param1[_loc4_];
            param1[_loc4_] = _loc2_;
            _loc6_++;
         }
         var _loc3_:Array = [];
         _loc5_ = 0;
         while(_loc5_ < param1.length)
         {
            if(!(param1[_loc5_] as RoomInfo).isPlaying)
            {
               _loc3_.push(param1[_loc5_]);
            }
            else
            {
               _loc3_.unshift(param1[_loc5_]);
            }
            _loc5_++;
         }
         return _loc3_;
      }
      
      public static function get instance() : RoomListController
      {
         if(!_instance)
         {
            _instance = new RoomListController();
         }
         return _instance;
      }
      
      public function setup() : void
      {
         RoomListManager.instance.addEventListener("openview",__openViewHandler);
      }
      
      private function __openViewHandler(param1:CEvent) : void
      {
         enter();
      }
      
      private function init() : void
      {
         _model = new RoomListModel();
         StateManager.createStateAsync("roomlist",initRoomListView);
      }
      
      private function initRoomListView(param1:String = null) : void
      {
         StatisticManager.loginRoomListNum++;
         SocketManager.Instance.out.sendCurrentState(1);
         initEvent();
         _view = ComponentFactory.Instance.creatComponentByStylename("roomList.RoomListView");
         _view.initView(this,_model);
         LayerManager.Instance.addToLayer(_view,3,true,2);
         if(RoomListManager.instance.openMatch)
         {
            RoomListManager.instance.openMatch = false;
            _view.roomListBg.openMatch();
         }
         if(!PlayerManager.Instance.Self.IsWeakGuildFinish(46))
         {
            NewHandContainer.Instance.showArrow(7,0,"trainer.creatRoomArrowPos","asset.trainer.creatRoomTipAsset","trainer.creatRoomTipPos",LayerManager.Instance.getLayerByType(3));
         }
         _timer = new Timer(1000);
         _timer.addEventListener("timer",timerHandler);
         _timer.start();
         SocketManager.Instance.out.sendSceneLogin(1);
         ParticleManager.initPartical(PathManager.FLASHSITE);
         CacheSysManager.unlock("alertInFight");
         CacheSysManager.getInstance().release("alertInFight",1200);
         NewHandContainer.Instance.clearArrowByID(1);
         AcademyManager.Instance.showAlert();
         PlayerManager.Instance.Self.isUpGradeInGame = false;
         PlayerManager.Instance.Self.sendOverTimeListByBody();
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         var _loc3_:int = 0;
         if(_buffList == null)
         {
            _buffList = new DictionaryData();
         }
         var _loc2_:int = _buffList.length;
         _loc2_ = _loc2_ > 50?50:_loc2_;
         var _loc4_:Array = _buffList.list.concat();
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _model.addWaitingPlayer(_loc4_[_loc3_]);
            _buffList.remove(_loc4_[_loc3_].ID);
            _loc3_++;
         }
      }
      
      private function initEvent() : void
      {
         SocketManager.Instance.addEventListener("gameRoomListUpdate",__addRoom);
         SocketManager.Instance.addEventListener(PkgEvent.format(18),__addWaitingPlayer);
         SocketManager.Instance.addEventListener(PkgEvent.format(21),__removeWaitingPlayer);
         PlayerTipManager.instance.addEventListener("challenge",__onChanllengeClick);
      }
      
      private function __addRoom(param1:CrazyTankSocketEvent) : void
      {
         var _loc7_:int = 0;
         var _loc2_:int = 0;
         var _loc6_:* = null;
         var _loc3_:Array = [];
         var _loc4_:PackageIn = param1.pkg;
         _model.roomTotal = _loc4_.readInt();
         var _loc5_:int = _loc4_.readInt();
         _loc7_ = 0;
         while(_loc7_ < _loc5_)
         {
            _loc2_ = _loc4_.readInt();
            _loc6_ = _model.getRoomById(_loc2_);
            if(_loc6_ == null)
            {
               _loc6_ = new RoomInfo();
            }
            _loc6_.ID = _loc2_;
            _loc6_.type = _loc4_.readByte();
            _loc6_.timeType = _loc4_.readByte();
            _loc6_.totalPlayer = _loc4_.readByte();
            _loc6_.viewerCnt = _loc4_.readByte();
            _loc6_.maxViewerCnt = _loc4_.readByte();
            _loc6_.placeCount = _loc4_.readByte();
            _loc6_.IsLocked = _loc4_.readBoolean();
            _loc6_.mapId = _loc4_.readInt();
            _loc6_.isPlaying = _loc4_.readBoolean();
            _loc6_.Name = _loc4_.readUTF();
            var _loc8_:* = _loc4_.readByte();
            _loc6_.gameMode = _loc8_;
            _loc6_.dungeonMode = _loc8_;
            _loc6_.hardLevel = _loc4_.readByte();
            _loc6_.levelLimits = _loc4_.readInt();
            _loc6_.isOpenBoss = _loc4_.readBoolean();
            _loc3_.push(_loc6_);
            _loc7_++;
         }
         updataRoom(_loc3_);
      }
      
      private function updataRoom(param1:Array) : void
      {
         if(param1.length == 0)
         {
            _model.updateRoom(param1);
            return;
         }
         if((param1[0] as RoomInfo).type <= 2)
         {
            _model.updateRoom(param1);
         }
      }
      
      private function __addWaitingPlayer(param1:PkgEvent) : void
      {
         var _loc3_:PackageIn = param1.pkg;
         var _loc2_:PlayerInfo = PlayerManager.Instance.findPlayer(_loc3_.clientId);
         _loc2_.beginChanges();
         _loc2_.Grade = _loc3_.readInt();
         _loc2_.ddtKingGrade = _loc3_.readInt();
         _loc2_.Sex = _loc3_.readBoolean();
         _loc2_.NickName = _loc3_.readUTF();
         _loc2_.typeVIP = _loc3_.readByte();
         _loc2_.VIPLevel = _loc3_.readInt();
         _loc2_.ConsortiaName = _loc3_.readUTF();
         _loc2_.Offer = _loc3_.readInt();
         _loc2_.WinCount = _loc3_.readInt();
         _loc2_.TotalCount = _loc3_.readInt();
         _loc2_.EscapeCount = _loc3_.readInt();
         _loc2_.ConsortiaID = _loc3_.readInt();
         _loc2_.Repute = _loc3_.readInt();
         _loc2_.IsMarried = _loc3_.readBoolean();
         if(_loc2_.IsMarried)
         {
            _loc2_.SpouseID = _loc3_.readInt();
            _loc2_.SpouseName = _loc3_.readUTF();
         }
         _loc2_.LoginName = _loc3_.readUTF();
         _loc2_.FightPower = _loc3_.readInt();
         _loc2_.apprenticeshipState = _loc3_.readInt();
         _loc2_.isOld = _loc3_.readBoolean();
         _loc2_.commitChanges();
         _buffList.add(_loc2_.ID,_loc2_);
      }
      
      private function __removeWaitingPlayer(param1:PkgEvent) : void
      {
         var _loc2_:int = param1.pkg.clientId;
         if(_buffList.hasKey(_loc2_))
         {
            _buffList.remove(_loc2_);
         }
         else
         {
            _model.removeWaitingPlayer(_loc2_);
         }
      }
      
      public function setRoomShowMode(param1:int) : void
      {
         _model.roomShowMode = param1;
      }
      
      public function enter() : void
      {
         if(!StartupResourceLoader.firstEnterHall)
         {
            SoundManager.instance.playMusic("062");
         }
         _buffList = new DictionaryData();
         init();
      }
      
      private function __modelCompleted(param1:Event) : void
      {
      }
      
      public function hide() : void
      {
         StateManager.currentStateType = "main";
         PlayerManager.Instance.Self.sendOverTimeListByBody();
         if(_view)
         {
            _view.dispose();
            _view = null;
         }
         dispose();
      }
      
      public function getType() : String
      {
         return "roomlist";
      }
      
      public function sendGoIntoRoom(param1:RoomInfo) : void
      {
      }
      
      public function showFindRoom() : void
      {
         if(_findRoom)
         {
            _findRoom.dispose();
         }
         _findRoom = null;
         _findRoom = ComponentFactory.Instance.creat("asset.ddtroomList.lookupFrame");
         LayerManager.Instance.addToLayer(_findRoom,3);
      }
      
      protected function __containerClick(param1:MouseEvent) : void
      {
      }
      
      protected function __onChanllengeClick(param1:Event) : void
      {
         if(PlayerTipManager.instance.info.Grade < 12)
         {
            MessageTipManager.getInstance().show(LanguageMgr.GetTranslation("tank.roomlist.cantBeChallenged",12));
            return;
         }
         if(PlayerTipManager.instance.info.playerState.StateID == 0 && param1.target.info is FriendListPlayer)
         {
            MessageTipManager.getInstance().show(LanguageMgr.GetTranslation("tank.roomlist.friendOffline"));
            return;
         }
         var _loc2_:int = Math.random() * RoomListEnumerate.PREWORD.length;
         GameInSocketOut.sendCreateRoom(RoomListEnumerate.PREWORD[_loc2_],1,2,"");
         RoomManager.Instance.tempInventPlayerID = PlayerTipManager.instance.info.ID;
         PlayerTipManager.instance.removeEventListener("challenge",__onChanllengeClick);
      }
      
      public function dispose() : void
      {
         NewHandContainer.Instance.clearArrowByID(7);
         PlayerTipManager.instance.removeEventListener("challenge",__onChanllengeClick);
         if(_timer)
         {
            _timer.stop();
            _timer.reset();
            _timer.removeEventListener("timer",timerHandler);
            _timer = null;
         }
         _buffList = null;
         if(_createRoomView)
         {
            _createRoomView.dispose();
            _createRoomView = null;
         }
         if(_findRoom)
         {
            _findRoom.dispose();
            _findRoom = null;
         }
         if(_model)
         {
            _model.dispose();
            _model = null;
         }
         SocketManager.Instance.removeEventListener("gameRoomListUpdate",__addRoom);
         SocketManager.Instance.removeEventListener(PkgEvent.format(18),__addWaitingPlayer);
         SocketManager.Instance.removeEventListener(PkgEvent.format(21),__removeWaitingPlayer);
      }
      
      public function getBackType() : String
      {
         return "main";
      }
      
      public function showCreateView() : void
      {
         if(_createRoomView != null)
         {
            _createRoomView.dispose();
         }
         _createRoomView = null;
         _createRoomView = ComponentFactory.Instance.creat("roomList.pvpRoomList.RoomListCreateRoomView");
         LayerManager.Instance.addToLayer(_createRoomView,3,false,1);
      }
   }
}
