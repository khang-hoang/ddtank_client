package cityBattle
{
   import cityBattle.analyze.CityBattleAnalyze;
   import cityBattle.data.CastellanInfo;
   import cityBattle.data.ContentionInfo;
   import cityBattle.data.WelfareInfo;
   import cityBattle.event.CityBattleEvent;
   import cityBattle.view.CityBattleMainFrame;
   import cityBattle.view.JoinCityBattleView;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import ddt.data.player.PlayerInfo;
   import ddt.events.PkgEvent;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.utils.AssetModuleLoader;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import hallIcon.HallIconManager;
   import road7th.comm.PackageIn;
   
   public class CityBattleManager extends EventDispatcher
   {
      
      private static var _instance:CityBattleManager;
       
      
      public var redTotalScore:int;
      
      public var blueTotalScore:int;
      
      public var winnerExchangeInfo:Array;
      
      public var myExchangeInfo:Vector.<WelfareInfo>;
      
      public var contentionFirstData:Boolean;
      
      public var now:int;
      
      public var myScore:int;
      
      public var myRankScore:int;
      
      public var mySide:int;
      
      public var myRank:int;
      
      public var isOpen:Boolean;
      
      public var blueList:Vector.<ContentionInfo>;
      
      public var redList:Vector.<ContentionInfo>;
      
      public var welfareList:Vector.<WelfareInfo>;
      
      public var castellanList:Vector.<CastellanInfo>;
      
      public var _mainFrame:CityBattleMainFrame;
      
      private var _joinView:JoinCityBattleView;
      
      public function CityBattleManager(param1:IEventDispatcher = null){super(null);}
      
      public static function get instance() : CityBattleManager{return null;}
      
      public function setup() : void{}
      
      public function CityBattleSystemsHandler(param1:CityBattleAnalyze) : void{}
      
      private function _scoreAndRankHandler(param1:PkgEvent) : void{}
      
      private function _joinBattleHandler(param1:PkgEvent) : void{}
      
      private function _playerEnterHandler(param1:PkgEvent) : void{}
      
      private function _activityOpenHandler(param1:PkgEvent) : void{}
      
      public function updateIcon() : void{}
      
      private function _contentionHandler(param1:PkgEvent) : void{}
      
      private function _exchangeHandler(param1:PkgEvent) : void{}
      
      public function show() : void{}
      
      private function onLoaded() : void{}
   }
}
