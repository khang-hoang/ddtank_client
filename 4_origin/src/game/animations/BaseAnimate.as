package game.animations
{
   import game.view.map.MapView;
   
   public class BaseAnimate implements IAnimate
   {
       
      
      protected var _level:int = 0;
      
      protected var _finished:Boolean;
      
      public function BaseAnimate()
      {
         super();
      }
      
      public function get level() : int
      {
         return _level;
      }
      
      public function prepare(param1:AnimationSet) : void
      {
      }
      
      public function canAct() : Boolean
      {
         return !_finished;
      }
      
      public function update(param1:MapView) : Boolean
      {
         _finished = true;
         return false;
      }
      
      public function canReplace(param1:IAnimate) : Boolean
      {
         return true;
      }
      
      public function cancel() : void
      {
      }
      
      public function get finish() : Boolean
      {
         return _finished;
      }
   }
}
