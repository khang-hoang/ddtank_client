package ddt.data.analyze
{
   import com.pickgliss.loader.DataAnalyzer;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.box.GradeBoxInfo;
   import ddt.data.box.TimeBoxInfo;
   import flash.utils.Dictionary;
   import road7th.data.DictionaryData;
   
   public class UserBoxInfoAnalyzer extends DataAnalyzer
   {
       
      
      private var _xml:XML;
      
      private var _goodsList:XMLList;
      
      public var timeBoxList:DictionaryData;
      
      public var gradeBoxList:DictionaryData;
      
      public var boxTemplateID:Dictionary;
      
      public var CSMBoxList:DictionaryData;
      
      public function UserBoxInfoAnalyzer(param1:Function){super(null);}
      
      override public function analyze(param1:*) : void{}
      
      private function parseShop() : void{}
      
      private function getXML() : XML{return null;}
   }
}
