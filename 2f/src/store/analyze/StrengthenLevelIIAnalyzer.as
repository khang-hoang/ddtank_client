package store.analyze
{
   import com.pickgliss.loader.DataAnalyzer;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.store.StrengthenLevelII;
   import flash.utils.Dictionary;
   
   public class StrengthenLevelIIAnalyzer extends DataAnalyzer
   {
       
      
      public var LevelItems1:Dictionary;
      
      public var LevelItems2:Dictionary;
      
      public var LevelItems3:Dictionary;
      
      public var LevelItems4:Dictionary;
      
      public var SucceedRate:int;
      
      private var _xml:XML;
      
      public function StrengthenLevelIIAnalyzer(param1:Function){super(null);}
      
      override public function analyze(param1:*) : void{}
   }
}
