package ddt.data.analyze
{
   import com.pickgliss.loader.DataAnalyzer;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.box.BoxGoodsTempInfo;
   import ddt.manager.BossBoxManager;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import microenddownload.MicroendDownloadAwardsManager;
   import road7th.data.DictionaryData;
   
   public class BoxTempInfoAnalyzer extends DataAnalyzer
   {
       
      
      public var inventoryItemList:DictionaryData;
      
      private var _boxTemplateID:Dictionary;
      
      public var caddyBoxGoodsInfo:Vector.<BoxGoodsTempInfo>;
      
      public var caddyTempIDList:DictionaryData;
      
      public var beadTempInfoList:DictionaryData;
      
      public var cityBattleTempInfoList:DictionaryData;
      
      public var exploitTemplateIDs:Dictionary;
      
      private var microendAwardsIDList:Array;
      
      public function BoxTempInfoAnalyzer(param1:Function){super(null);}
      
      override public function analyze(param1:*) : void{}
      
      private function initDictionaryData() : void{}
   }
}
