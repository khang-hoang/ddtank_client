package ddt.data
{
   public class RecordInfo
   {
       
      
      public var giftCount:int = 0;
      
      public var recordList:Vector.<RecordItemInfo>;
      
      public function RecordInfo()
      {
         recordList = new Vector.<RecordItemInfo>();
         super();
      }
   }
}
