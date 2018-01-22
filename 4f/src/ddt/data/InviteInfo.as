package ddt.data
{
   public class InviteInfo
   {
       
      
      public var level:int;
      
      public var power:int;
      
      public var playerid:int;
      
      public var roomid:int;
      
      public var mapid:int;
      
      public var secondType:int;
      
      public var gameMode:int;
      
      public var hardLevel:int;
      
      public var levelLimits:int;
      
      public var nickname:String;
      
      public var isAttest:Boolean;
      
      public var VIPLevel:int = 1;
      
      public var typeVIP:int;
      
      public var password:String;
      
      public var barrierNum:int;
      
      public var RN:String;
      
      public var isOpenBoss:Boolean;
      
      private var _isOld:Boolean;
      
      public function InviteInfo(){super();}
      
      public function get IsVip() : Boolean{return false;}
      
      public function set isOld(param1:Boolean) : void{}
      
      public function get playerType() : String{return null;}
   }
}
