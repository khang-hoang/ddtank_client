package game.actions
{
   import ddt.manager.SocketManager;
   import flash.utils.getQualifiedClassName;
   import gameCommon.actions.BaseAction;
   
   public class ActionManager
   {
       
      
      private var _queue:Array;
      
      public function ActionManager(){super();}
      
      public function act(param1:BaseAction) : void{}
      
      public function execute() : void{}
      
      public function traceAllRemainAction(param1:String = "") : void{}
      
      public function get actionCount() : int{return 0;}
      
      public function executeAtOnce() : void{}
      
      public function clear() : void{}
   }
}
