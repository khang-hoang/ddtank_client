package BombTurnTable
{
   import BombTurnTable.view.quality.BaseTurnTable;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import road7th.data.DictionaryData;
   
   public class TurnTableHandlerControl
   {
      
      private static const FREQUENCY:int = 80;
       
      
      private var _timer:Timer;
      
      private var _turnTable:BaseTurnTable;
      
      private var _winName:String;
      
      private var _winIndex:int;
      
      private var _meedAngle:Number;
      
      private var _totalAngle:Number;
      
      private var _rounds:int = 4;
      
      private var _curTurnTableAngle:Number;
      
      private var _curSpeed:Number;
      
      private var _addSpeed:Number = 2;
      
      private var _maxSpeed:Number = 40;
      
      private var _obstruct:Number = 0.1;
      
      private var _accelerate:Boolean = true;
      
      private var _meedList:DictionaryData;
      
      public var _backFun:Function;
      
      public function TurnTableHandlerControl(param1:Function){super();}
      
      public function setData(param1:BaseTurnTable, param2:int, param3:String = null, param4:DictionaryData = null) : void{}
      
      public function startLottery() : void{}
      
      private function init() : void{}
      
      private function _frameRotation_Handler(param1:TimerEvent) : void{}
      
      private function lotteryComplate() : void{}
      
      public function stop() : void{}
   }
}
