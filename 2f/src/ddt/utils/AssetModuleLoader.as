package ddt.utils
{
   import com.pickgliss.loader.BaseLoader;
   import com.pickgliss.loader.CodeLoader;
   import com.pickgliss.loader.CodeModuleLoader;
   import com.pickgliss.loader.LoadResourceManager;
   import com.pickgliss.loader.TextLoader;
   import com.pickgliss.loader.XMLNativeAnalyzer;
   import ddt.manager.PathManager;
   import flash.events.Event;
   import road7th.data.DictionaryData;
   
   public class AssetModuleLoader
   {
      
      public static const UI_TYPE:int = 1;
      
      public static const XML_TYPE:int = 2;
      
      public static const SWF_TYPE:int = 4;
      
      public static const XML_SWF_TYPE:int = 6;
      
      public static const UI_SWF_TYPE:int = 5;
      
      public static const UI_XML_TYPE:int = 3;
      
      public static const UI_XML_SWF_TYPE:int = 7;
      
      private static var _loaderQueue:QueueLoaderUtil = new QueueLoaderUtil();
      
      private static var _loaderData:DictionaryData = new DictionaryData();
      
      private static var _loaderList:Vector.<BaseLoader> = new Vector.<BaseLoader>();
      
      private static var _call:Function;
      
      private static var _params:Array;
       
      
      public function AssetModuleLoader(){super();}
      
      public static function addModelLoader(param1:String, param2:int) : void{}
      
      public static function addRequestLoader(param1:BaseLoader, param2:Boolean = false) : void{}
      
      public static function addCodeLoader(param1:String, param2:String) : void{}
      
      public static function startLoader(param1:Function = null, param2:Array = null, param3:Boolean = true) : void{}
      
      public static function startCodeLoader(param1:Function = null, param2:Array = null, param3:Boolean = true, param4:String = "4.png", param5:String = "DDT_Core") : void{}
      
      private static function getLoaderResList(param1:String, param2:int) : Vector.<BaseLoader>{return null;}
      
      private static function __onLoadComplete(param1:Event) : void{}
      
      private static function __onLoadClose(param1:Event) : void{}
   }
}
