package littleGame.actions
{
   import littleGame.model.Scenario;
   import road7th.comm.PackageIn;
   
   public class UnInhaleAction extends LittleAction
   {
       
      
      private var _scene:Scenario;
      
      private var _endAction:String;
      
      private var _direction:String;
      
      public function UnInhaleAction()
      {
         super();
      }
      
      override public function prepare() : void
      {
         super.prepare();
      }
      
      override public function parsePackege(param1:Scenario, param2:PackageIn = null) : void
      {
         _scene = param1;
         var _loc3_:int = param2.readInt();
         _endAction = param2.readUTF();
         _direction = param2.readUTF();
         _living = _scene.findLiving(_loc3_);
         if(_living)
         {
            _living.act(this);
         }
      }
      
      override public function execute() : void
      {
         if(_living)
         {
            _living.doAction(_endAction);
            _living.direction = _direction;
            _living.MotionState = 2;
         }
         finish();
      }
      
      public function toString() : String
      {
         return "UnInhale_[" + _living + "]";
      }
   }
}
