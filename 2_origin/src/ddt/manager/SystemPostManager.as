package ddt.manager
{
   import ddt.view.chat.ChatEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import road7th.comm.PackageIn;
   
   public class SystemPostManager extends EventDispatcher
   {
      
      public static var SYSTEMPOST_UPDATE:String = "systemPostUpdate";
      
      private static var instance:SystemPostManager;
       
      
      private var _postInfo:Object;
      
      public function SystemPostManager(param1:IEventDispatcher = null)
      {
         super(param1);
      }
      
      public static function get Instance() : SystemPostManager
      {
         if(instance == null)
         {
            instance = new SystemPostManager();
         }
         return instance;
      }
      
      public function setup() : void
      {
         ChatManager.Instance.addEventListener("systemPost",__onReceivePost);
      }
      
      protected function __onReceivePost(param1:ChatEvent) : void
      {
         var _loc3_:String = param1.data.msg;
         var _loc2_:PackageIn = param1.data.pkg;
         var _loc4_:int = _loc2_.readInt();
         addInfo(_loc3_,_loc4_);
         dispatchEvent(new Event(SYSTEMPOST_UPDATE));
      }
      
      private function addInfo(param1:String, param2:int) : void
      {
         if(!_postInfo)
         {
            _postInfo = {};
         }
         _postInfo["msg"] = param1;
         _postInfo["type"] = param2;
      }
      
      public function get postInfo() : Object
      {
         return _postInfo;
      }
   }
}
