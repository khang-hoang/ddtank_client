package dragonBones.events
{
   import flash.errors.IllegalOperationError;
   import flash.events.EventDispatcher;
   
   [Event(name="sound",type="dragonBones.events.SoundEvent")]
   public final class SoundEventManager extends EventDispatcher
   {
      
      private static var _instance:SoundEventManager;
       
      
      public function SoundEventManager(){super();}
      
      public static function getInstance() : SoundEventManager{return null;}
   }
}
