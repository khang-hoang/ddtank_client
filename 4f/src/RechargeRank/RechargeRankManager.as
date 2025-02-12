package RechargeRank
{
   import RechargeRank.data.RechargeRankVo;
   import ddt.events.PkgEvent;
   import ddt.manager.SocketManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import road7th.comm.PackageIn;
   import wonderfulActivity.WonderfulActivityManager;
   import wonderfulActivity.data.GmActivityInfo;
   import wonderfulActivity.data.LeftViewInfoVo;
   
   public class RechargeRankManager extends EventDispatcher
   {
      
      public static const RECHARGE_UPDATEVIEW:String = "rechargeUpdateView";
      
      private static var _instance:RechargeRankManager;
       
      
      public var actId:String;
      
      public var status:int;
      
      public var xmlData:GmActivityInfo;
      
      public var myConsume:int;
      
      public var rankList:Array;
      
      private var requestCount:int = 0;
      
      public function RechargeRankManager(){super();}
      
      public static function get instance() : RechargeRankManager{return null;}
      
      public function setup() : void{}
      
      protected function __updateInfo(param1:PkgEvent) : void{}
   }
}
