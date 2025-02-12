package gameStarling.objects
{
   import ddt.manager.SocketManager;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import gameCommon.model.GameInfo;
   import gameCommon.model.Living;
   import gameCommon.model.Player;
   import gameCommon.objects.ActionType;
   import room.RoomManager;
   import starlingPhy.object.PhysicalObj3D;
   
   public class BombAction3D
   {
       
      
      private var _time:int;
      
      private var _type:int;
      
      public var _param1:int;
      
      public var _param2:int;
      
      public var _param3:int;
      
      public var _param4:int;
      
      public function BombAction3D(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int){super();}
      
      public function get param1() : int{return 0;}
      
      public function get param2() : int{return 0;}
      
      public function get param3() : int{return 0;}
      
      public function get param4() : int{return 0;}
      
      public function get time() : int{return 0;}
      
      public function get type() : int{return 0;}
      
      public function execute(param1:SimpleBomb3D, param2:GameInfo) : void{}
   }
}
