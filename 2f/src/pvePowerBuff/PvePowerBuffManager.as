package pvePowerBuff
{
   import ddt.CoreManager;
   import ddt.data.player.PlayerInfo;
   import ddt.events.CrazyTankSocketEvent;
   import ddt.manager.SocketManager;
   import road7th.comm.PackageIn;
   
   public class PvePowerBuffManager extends CoreManager
   {
      
      public static const PVEPOWERBUFF_REFRESH:String = "pvepowerbuff_refresh";
      
      public static const PVEPOWERBUFF_GETBUFF:String = "pvepowerbuff_getbuff";
      
      private static var _instance:PvePowerBuffManager;
       
      
      public var playerInfoVc:Vector.<PlayerInfo>;
      
      public var refreshCount:int;
      
      public var refreshDate:Date;
      
      public var getBuffCount:int;
      
      public var getBuffDate:Date;
      
      public var getBuffIndex:int;
      
      public var getBuffAtk:int;
      
      public var getBuffDef:int;
      
      public var getBuffAgl:int;
      
      public var getBuffLuck:int;
      
      public var getBuffHp:int;
      
      public var getBuffMAtk:int;
      
      public var getBuffMDef:int;
      
      public var getBuffDmg:int;
      
      public var getBuffAr:int;
      
      public var isInRefresh:Boolean = false;
      
      public var isInGetBuff:Boolean = false;
      
      public function PvePowerBuffManager(param1:PvePowerBuffInstance){super();}
      
      public static function get instance() : PvePowerBuffManager{return null;}
      
      public function setup() : void{}
      
      private function initEvent() : void{}
      
      private function __pvePowerBuffHandler(param1:CrazyTankSocketEvent) : void{}
      
      override protected function start() : void{}
      
      public function disposeView() : void{}
   }
}

class PvePowerBuffInstance
{
    
   
   function PvePowerBuffInstance(){super();}
}
