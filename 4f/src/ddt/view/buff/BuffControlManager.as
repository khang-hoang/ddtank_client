package ddt.view.buff
{
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class BuffControlManager extends EventDispatcher
   {
      
      private static var _instance:BuffControlManager;
       
      
      private var _buff:BuffControl;
      
      public function BuffControlManager(param1:IEventDispatcher = null){super(null);}
      
      public static function get instance() : BuffControlManager{return null;}
      
      public function get buff() : BuffControl{return null;}
      
      public function set buff(param1:BuffControl) : void{}
   }
}
