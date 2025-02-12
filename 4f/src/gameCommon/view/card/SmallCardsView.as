package gameCommon.view.card
{
   import com.greensock.TweenLite;
   import com.greensock.easing.Quint;
   import com.pickgliss.manager.NoviceDataManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.CrazyTankSocketEvent;
   import ddt.manager.GameInSocketOut;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MapManager;
   import ddt.manager.PathManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Timer;
   import gameCommon.GameControl;
   import gameCommon.model.GameInfo;
   import gameCommon.model.Player;
   import road7th.comm.PackageIn;
   import room.RoomManager;
   import room.model.RoomInfo;
   import trainer.view.NewHandContainer;
   
   public class SmallCardsView extends Sprite implements Disposeable
   {
      
      public static const SMALL_CARD_TIME:uint = 5;
      
      public static const SMALL_CARD_CNT:uint = 9;
      
      public static const SMALL_CARD_COLUMNS:uint = 3;
      
      public static const SMALL_CARD_MAX_SELECTED_CNT:uint = 1;
      
      public static const SMALL_CARD_REQUEST_CARD:uint = 100;
      
      public static const SMALL_CARD_VIEW_TIME:uint = 1;
      
      public static const ON_ALL_COMPLETE_CNT:uint = 2;
       
      
      protected var _cards:Vector.<LuckyCard>;
      
      protected var _posArr:Vector.<Point>;
      
      protected var _gameInfo:GameInfo;
      
      protected var _roomInfo:RoomInfo;
      
      protected var _resultCards:Array;
      
      protected var _selectedCnt:int;
      
      protected var _selectCompleted:Boolean;
      
      protected var _countDownView:CardCountDown;
      
      protected var _countDownTime:int = 5;
      
      protected var _cardCnt:int = 9;
      
      protected var _cardColumns:int = 3;
      
      protected var _viewTime:int = 1;
      
      protected var _timerForView:Timer;
      
      protected var _title:Bitmap;
      
      protected var _onAllComplete:int;
      
      protected var _canTakeOut:Boolean;
      
      public function SmallCardsView(){super();}
      
      protected function init() : void{}
      
      protected function initEvent() : void{}
      
      protected function removeEvents() : void{}
      
      protected function __countDownComplete(param1:Event) : void{}
      
      protected function __timerForViewComplete(param1:* = null) : void{}
      
      protected function createCards() : void{}
      
      protected function __takeOut(param1:CrazyTankSocketEvent) : void{}
      
      protected function __disabledAllCards(param1:Event = null) : void{}
      
      protected function startTween(param1:Event = null) : void{}
      
      protected function cardTweenComplete(param1:LuckyCard) : void{}
      
      public function dispose() : void{}
   }
}
