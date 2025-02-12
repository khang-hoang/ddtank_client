package gameCommon.model
{
   import ddt.events.LivingEvent;
   
   [Event(name="modelChanged",type="tank.events.LivingEvent")]
   public class SmallEnemy extends Living
   {
       
      
      public var stateType:int;
      
      private var _modelID:int;
      
      public function SmallEnemy(param1:int, param2:int, param3:int)
      {
         super(param1,param2,param3);
      }
      
      public function set modelID(param1:int) : void
      {
         var _loc2_:int = _modelID;
         _modelID = param1;
         dispatchEvent(new LivingEvent("modelChanged",_modelID,_loc2_));
      }
      
      public function get modelID() : int
      {
         return _modelID;
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
   }
}
