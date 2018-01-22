package magicStone.data
{
   import com.pickgliss.loader.DataAnalyzer;
   import com.pickgliss.utils.ObjectUtils;
   
   public class MagicStoneTempAnalyer extends DataAnalyzer
   {
       
      
      private var _mgStoneTempArr:Array;
      
      public function MagicStoneTempAnalyer(param1:Function)
      {
         super(param1);
      }
      
      override public function analyze(param1:*) : void
      {
         var _loc3_:* = null;
         var _loc5_:int = 0;
         var _loc4_:* = null;
         var _loc2_:XML = new XML(param1);
         if(_loc2_.@value == "true")
         {
            _mgStoneTempArr = [];
            _loc3_ = _loc2_..Item;
            _loc5_ = 0;
            while(_loc5_ <= _loc3_.length() - 1)
            {
               _loc4_ = new MgStoneTempVO();
               ObjectUtils.copyPorpertiesByXML(_loc4_,_loc3_[_loc5_]);
               _mgStoneTempArr.push(_loc4_);
               _loc5_++;
            }
            onAnalyzeComplete();
         }
         else
         {
            message = _loc2_.@message;
            onAnalyzeError();
            onAnalyzeError();
         }
      }
      
      public function get mgStoneTempArr() : Array
      {
         return _mgStoneTempArr;
      }
   }
}
