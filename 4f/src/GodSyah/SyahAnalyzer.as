package GodSyah
{
   import com.pickgliss.loader.DataAnalyzer;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.ItemManager;
   
   public class SyahAnalyzer extends DataAnalyzer
   {
       
      
      private var _details:Array;
      
      private var _modes:Vector.<SyahMode>;
      
      private var _infos:Vector.<InventoryItemInfo>;
      
      private var _nowTime:Date;
      
      private var _syahArr:Array;
      
      private var _detailsArr:Array;
      
      private var _modeArr:Array;
      
      public function SyahAnalyzer(param1:Function){super(null);}
      
      override public function analyze(param1:*) : void{}
      
      private function _createModeValue(param1:String) : SyahMode{return null;}
      
      private function _createValid(param1:String, param2:String) : String{return null;}
      
      private function _getEndTime(param1:String, param2:String) : Date{return null;}
      
      public function get modes() : Array{return null;}
      
      public function get details() : Array{return null;}
      
      public function get infos() : Array{return null;}
      
      public function get nowTime() : Date{return null;}
   }
}
