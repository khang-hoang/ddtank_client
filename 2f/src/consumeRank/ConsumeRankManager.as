package consumeRank
{
   import consumeRank.data.ConsumeRankVo;
   import ddt.events.PkgEvent;
   import ddt.manager.SocketManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import road7th.comm.PackageIn;
   import wonderfulActivity.WonderfulActivityManager;
   import wonderfulActivity.data.GmActivityInfo;
   import wonderfulActivity.data.LeftViewInfoVo;
   
   public class ConsumeRankManager extends EventDispatcher
   {
      
      public static const CONSUME_UPDATEVIEW:String = "consumeUpdateView";
      
      private static var _instance:ConsumeRankManager;
       
      
      public var actId:String;
      
      public var status:int;
      
      public var xmlData:GmActivityInfo;
      
      public var myConsume:int;
      
      public var rankList:Array;
      
      private var requestCount:int = 0;
      
      public function ConsumeRankManager(){super();}
      
      public static function get instance() : ConsumeRankManager{return null;}
      
      public function setup() : void{}
      
      protected function __updateInfo(param1:PkgEvent) : void{}
   }
}
