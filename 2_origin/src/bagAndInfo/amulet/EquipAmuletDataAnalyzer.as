package bagAndInfo.amulet
{
   import bagAndInfo.amulet.vo.EquipAmuletVo;
   import com.pickgliss.loader.DataAnalyzer;
   import com.pickgliss.utils.ObjectUtils;
   import road7th.data.DictionaryData;
   
   public class EquipAmuletDataAnalyzer extends DataAnalyzer
   {
       
      
      private var _data:DictionaryData;
      
      public function EquipAmuletDataAnalyzer(param1:Function)
      {
         super(param1);
      }
      
      override public function analyze(param1:*) : void
      {
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc2_:* = null;
         _data = new DictionaryData();
         var _loc3_:XML = new XML(param1);
         if(_loc3_.@value == "true")
         {
            _loc4_ = _loc3_..Item;
            _loc5_ = 0;
            while(_loc5_ < _loc4_.length())
            {
               _loc2_ = new EquipAmuletVo();
               ObjectUtils.copyPorpertiesByXML(_loc2_,_loc4_[_loc5_]);
               _loc2_.grade = _loc4_[_loc5_].@Level;
               _loc2_.consumeTempletID = _loc4_[_loc5_].@LvlupStep;
               _loc2_.phase = _loc4_[_loc5_].@WashsStep;
               _data.add(_loc2_.grade,_loc2_);
               _loc5_++;
            }
            onAnalyzeComplete();
         }
         else
         {
            message = _loc3_.@message;
            onAnalyzeError();
         }
         _data = null;
      }
      
      public function get data() : DictionaryData
      {
         return _data;
      }
   }
}
