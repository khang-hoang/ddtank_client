package game.actions
{
   import game.objects.GamePlayer;
   import game.objects.SimpleBox;
   import phy.object.PhysicalObj;
   
   public class PickBoxAction
   {
       
      
      public var executed:Boolean = false;
      
      private var _time:int;
      
      private var _boxid:int;
      
      public function PickBoxAction(param1:int, param2:int){super();}
      
      public function get time() : int{return 0;}
      
      public function execute(param1:GamePlayer) : void{}
   }
}
