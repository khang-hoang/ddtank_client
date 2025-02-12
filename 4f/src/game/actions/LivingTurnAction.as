package game.actions
{
   import game.objects.GameLiving;
   import gameCommon.actions.BaseAction;
   
   public class LivingTurnAction extends BaseAction
   {
      
      public static const PLUS:int = 0;
      
      public static const REDUCE:int = 1;
       
      
      private var _movie:GameLiving;
      
      private var _rotation:int;
      
      private var _speed:int;
      
      private var _endPlay:String;
      
      private var _dir:int;
      
      private var _turnRo:int;
      
      public function LivingTurnAction(param1:GameLiving, param2:int, param3:int, param4:String){super();}
      
      override public function connect(param1:BaseAction) : Boolean{return false;}
      
      override public function prepare() : void{}
      
      override public function execute() : void{}
      
      private function finish() : void{}
      
      override public function executeAtOnce() : void{}
   }
}
