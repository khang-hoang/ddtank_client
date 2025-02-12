package littleGame.actions
{
   import ddt.ddt_internal;
   import littleGame.model.LittleLiving;
   import littleGame.model.Scenario;
   import road7th.comm.PackageIn;
   
   public class LittleAction
   {
       
      
      protected var _isFinished:Boolean = false;
      
      protected var _isPrepare:Boolean = false;
      
      protected var _type:String;
      
      protected var _living:LittleLiving;
      
      public function LittleAction()
      {
         super();
      }
      
      ddt_internal function initializeLiving(param1:LittleLiving) : void
      {
         _living = param1;
      }
      
      public function parsePackege(param1:Scenario, param2:PackageIn = null) : void
      {
      }
      
      public function connect(param1:LittleAction) : Boolean
      {
         return false;
      }
      
      public function canReplace(param1:LittleAction) : Boolean
      {
         return false;
      }
      
      public function get isFinished() : Boolean
      {
         return _isFinished;
      }
      
      public function prepare() : void
      {
         if(_isPrepare)
         {
            return;
         }
         _isPrepare = true;
      }
      
      public function execute() : void
      {
         finish();
      }
      
      protected function finish() : void
      {
         _isFinished = true;
         _living = null;
      }
      
      public function cancel() : void
      {
         _living = null;
      }
   }
}
