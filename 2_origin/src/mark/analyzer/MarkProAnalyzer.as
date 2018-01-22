package mark.analyzer
{
   import com.pickgliss.loader.DataAnalyzer;
   import com.pickgliss.utils.ObjectUtils;
   import mark.data.MarkProNumData;
   
   public class MarkProAnalyzer extends DataAnalyzer
   {
       
      
      public var proNumDic:Array;
      
      public function MarkProAnalyzer(param1:Function)
      {
         super(param1);
      }
      
      override public function analyze(param1:*) : void
      {
         var _loc5_:int = 0;
         var _loc4_:* = null;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         proNumDic = [];
         var _loc3_:XML = new XML(param1);
         if(_loc3_.@value == "true")
         {
            _loc5_ = _loc3_.Item.length();
            _loc4_ = _loc3_..Item;
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               _loc2_ = new MarkProNumData();
               ObjectUtils.copyPorpertiesByXML(_loc2_,_loc4_[_loc6_]);
               proNumDic.push(_loc2_);
               _loc6_++;
            }
         }
         else
         {
            message = _loc3_.@message;
            onAnalyzeError();
         }
         onAnalyzeComplete();
      }
   }
}
