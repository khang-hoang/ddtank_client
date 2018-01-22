package im
{
   import ddt.manager.PlayerManager;
   import road7th.utils.DateUtils;
   
   public class PresentRecordInfo
   {
      
      public static const SHOW:int = 0;
      
      public static const HIDE:int = 1;
      
      public static const UNREAD:int = 2;
       
      
      public var id:int;
      
      public var teamId:int;
      
      public var exist:int = 2;
      
      public var messages:Vector.<String>;
      
      public var recordMessage:Vector.<Object>;
      
      public function PresentRecordInfo()
      {
         super();
         messages = new Vector.<String>();
         recordMessage = new Vector.<Object>();
      }
      
      public function addMessage(param1:String, param2:Date, param3:String) : void
      {
         var _loc5_:String = DateUtils.dateFormat(param2);
         var _loc6_:String = "";
         if(param1 == PlayerManager.Instance.Self.NickName)
         {
            _loc6_ = _loc6_ + ("<FONT COLOR=\'#06f710\'>" + param1 + "   " + _loc5_.split(" ")[1] + "</FONT>\n");
         }
         else
         {
            _loc6_ = _loc6_ + ("<FONT COLOR=\'#ffff01\'>" + param1 + "   " + _loc5_.split(" ")[1] + "</FONT>\n");
         }
         _loc6_ = _loc6_ + param3;
         messages.push(_loc6_);
         var _loc4_:String = "";
         if(param1 == PlayerManager.Instance.Self.NickName)
         {
            _loc4_ = _loc4_ + ("<FONT COLOR=\'#06f710\'>" + param1 + "   " + _loc5_ + "</FONT>\n");
         }
         else
         {
            _loc4_ = _loc4_ + ("<FONT COLOR=\'#ffff01\'>" + param1 + "   " + _loc5_ + "</FONT>\n");
         }
         _loc4_ = _loc4_ + param3;
         recordMessage.push(_loc4_);
      }
      
      public function get lastMessage() : String
      {
         return messages[messages.length - 1];
      }
      
      public function get lastRecordMessage() : Object
      {
         return recordMessage[recordMessage.length - 1];
      }
   }
}
