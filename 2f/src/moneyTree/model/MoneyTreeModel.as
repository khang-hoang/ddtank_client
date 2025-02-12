package moneyTree.model
{
   import ddt.manager.LanguageMgr;
   import ddt.manager.TimeManager;
   import ddt.utils.Helpers;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import moneyTree.MoneyTreeManager;
   import times.utils.timerManager.TimerJuggler;
   import times.utils.timerManager.TimerManager;
   
   public class MoneyTreeModel extends EventDispatcher
   {
      
      public static const COST_PER_SPEEDUP:int = 200;
      
      public static const TIMER:String = "mt_timer";
       
      
      private var _numRedPkgRemain:int;
      
      private var _numPersonsWillSendRedPkg:Dictionary;
      
      private var _infoList:Vector.<MT_FruitData>;
      
      private var _timer:TimerJuggler;
      
      private var _curTime:Date;
      
      public function MoneyTreeModel(){super();}
      
      protected function onTimer(param1:Event) : void{}
      
      private function hasMatureFruit() : void{}
      
      public function getCountDownString(param1:int) : String{return null;}
      
      public function getCurSlctTimesSpeedUpToMature(param1:int) : int{return 0;}
      
      public function isNoMoreRedPkg() : Boolean{return false;}
      
      public function addFriendsToSend(param1:int) : void{}
      
      public function reduceFriendsToSend(param1:int) : void{}
      
      public function resetWillSendNum() : void{}
      
      public function getFriendsToSendList() : Array{return null;}
      
      public function getTimesToGrown(param1:int) : int{return 0;}
      
      public function getPriceSpeedUp(param1:int) : int{return 0;}
      
      public function setNumRedPkgRemain(param1:int) : void{}
      
      public function getNumRedPkgRemain() : int{return 0;}
      
      public function setInfoAt(param1:int, param2:Date, param3:int) : void{}
      
      public function getInfoAt(param1:int) : MT_FruitData{return null;}
      
      public function hasFruitMature() : Boolean{return false;}
      
      public function dispose() : void{}
   }
}
