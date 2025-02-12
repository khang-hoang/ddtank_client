package gameStarling.actions
{
   import gameCommon.actions.BaseAction;
   import gameStarling.objects.GameLiving3D;
   
   public class LivingTurnAction extends BaseAction
   {
      
      public static const PLUS:int = 0;
      
      public static const REDUCE:int = 1;
       
      
      private var _movie:GameLiving3D;
      
      private var _rotation:int;
      
      private var _speed:int;
      
      private var _endPlay:String;
      
      private var _dir:int;
      
      private var _turnRo:int;
      
      public function LivingTurnAction(param1:GameLiving3D, param2:int, param3:int, param4:String){super();}
      
      override public function connect(param1:BaseAction) : Boolean{return false;}
      
      override public function prepare() : void{}
      
      override public function execute() : void{}
      
      private function finish() : void{}
      
      override public function executeAtOnce() : void{}
   }
}
