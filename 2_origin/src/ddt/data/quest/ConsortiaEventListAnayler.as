package ddt.data.quest
{
   import com.pickgliss.loader.DataAnalyzer;
   import ddt.data.ConsortiaEventInfo;
   
   public class ConsortiaEventListAnayler extends DataAnalyzer
   {
       
      
      public var list:Array;
      
      public function ConsortiaEventListAnayler(param1:Function = null)
      {
         super(param1);
      }
      
      override public function analyze(param1:*) : void
      {
         var _loc3_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = null;
         list = [];
         var _loc2_:XML = new XML(param1);
         if(_loc2_.@value == "true")
         {
            _loc3_ = _loc2_..Item;
            _loc5_ = 0;
            while(_loc5_ < _loc3_.length())
            {
               _loc4_ = new ConsortiaEventInfo();
               _loc4_.ID = _loc3_[_loc5_].@ID;
               _loc4_.ConsortiaID = _loc3_[_loc5_].@ConsortiaID;
               _loc4_.Date = _loc3_[_loc5_].@Date;
               _loc4_.Type = _loc3_[_loc5_].@Type;
               _loc4_.NickName = _loc3_[_loc5_].@NickName;
               _loc4_.EventValue = _loc3_[_loc5_].@EventValue;
               _loc4_.ManagerName = _loc3_[_loc5_].@ManagerName;
               list.push(_loc4_);
               _loc5_++;
            }
            onAnalyzeComplete();
         }
         else
         {
            message = _loc2_.@message;
            onAnalyzeError();
            onAnalyzeComplete();
         }
      }
   }
}
