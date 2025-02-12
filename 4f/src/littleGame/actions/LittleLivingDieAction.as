package littleGame.actions
{
   import littleGame.model.LittleLiving;
   import littleGame.model.Scenario;
   import road7th.comm.PackageIn;
   
   public class LittleLivingDieAction extends LittleAction
   {
       
      
      private var _lifeTime:int;
      
      private var _life:int;
      
      private var _scene:Scenario;
      
      public function LittleLivingDieAction(param1:Scenario = null, param2:LittleLiving = null, param3:int = 6){super();}
      
      override public function connect(param1:LittleAction) : Boolean{return false;}
      
      override public function parsePackege(param1:Scenario, param2:PackageIn = null) : void{}
      
      override public function prepare() : void{}
      
      override public function execute() : void{}
   }
}
