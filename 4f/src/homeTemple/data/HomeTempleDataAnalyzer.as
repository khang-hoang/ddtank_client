package homeTemple.data
{
   import com.pickgliss.loader.DataAnalyzer;
   import com.pickgliss.utils.ObjectUtils;
   import flash.utils.Dictionary;
   import homeTemple.HomeTempleController;
   
   public class HomeTempleDataAnalyzer extends DataAnalyzer
   {
       
      
      public var list:Dictionary;
      
      private var _xml:XML;
      
      public function HomeTempleDataAnalyzer(param1:Function){super(null);}
      
      override public function analyze(param1:*) : void{}
   }
}
