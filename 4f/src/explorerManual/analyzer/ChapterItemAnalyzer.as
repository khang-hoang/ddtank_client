package explorerManual.analyzer
{
   import com.pickgliss.loader.DataAnalyzer;
   import com.pickgliss.utils.ObjectUtils;
   import explorerManual.data.model.ManualChapterInfo;
   import road7th.data.DictionaryData;
   
   public class ChapterItemAnalyzer extends DataAnalyzer
   {
       
      
      private var _data:DictionaryData;
      
      public function ChapterItemAnalyzer(param1:Function){super(null);}
      
      override public function analyze(param1:*) : void{}
      
      public function get data() : DictionaryData{return null;}
   }
}
