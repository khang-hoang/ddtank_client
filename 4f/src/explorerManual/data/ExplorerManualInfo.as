package explorerManual.data
{
   import explorerManual.ExplorerManualManager;
   import explorerManual.data.model.ManualItemInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class ExplorerManualInfo extends EventDispatcher
   {
      
      public static const P_manualLev:String = "manualLev";
      
      public static const P_debrisInfo:String = "debrisInfo";
      
      public static const P_activePageID:String = "activePageID";
      
      public static const P_progress:String = "progress";
      
      public static const P_manualPro:String = "manualPro";
      
      public static const P_refreshData:String = "manualrefresh";
       
      
      protected var _changedPropeties:Dictionary;
      
      protected var _changeCount:int = 0;
      
      private var _count:int = 0;
      
      private var _manualLev:int = -1;
      
      private var _progress:int;
      
      private var _maxProgress:int = 0;
      
      private var _proLevMaxProgress:int = 0;
      
      private var _curPro:ManualLevelProInfo;
      
      private var _nextPro:ManualLevelProInfo;
      
      private var _pageAllPro:PageItemAllProInfo;
      
      private var _activePageID:Array;
      
      private var _upgradeCondition:UpgradeConditonBase;
      
      private var _havePage:int;
      
      private var _conditionCount:int;
      
      private var _debrisInfo:ManualPageDebrisInfo;
      
      public function ExplorerManualInfo(){super();}
      
      public function get proLevMaxProgress() : int{return 0;}
      
      public function set proLevMaxProgress(param1:int) : void{}
      
      public function beginChanges() : void{}
      
      public function commitChanges() : void{}
      
      protected function invalidate() : void{}
      
      protected function onProppertiesUpdate() : void{}
      
      protected function onPropertiesChanged(param1:String = null) : void{}
      
      public function get debrisInfo() : ManualPageDebrisInfo{return null;}
      
      public function set debrisInfo(param1:ManualPageDebrisInfo) : void{}
      
      public function get conditionCount() : int{return 0;}
      
      public function set conditionCount(param1:int) : void{}
      
      public function get havePage() : int{return 0;}
      
      public function set havePage(param1:int) : void{}
      
      public function get upgradeCondition() : UpgradeConditonBase{return null;}
      
      public function set upgradeCondition(param1:UpgradeConditonBase) : void{}
      
      public function get maxProgress() : int{return 0;}
      
      public function set maxProgress(param1:int) : void{}
      
      public function get activePageID() : Array{return null;}
      
      public function set activePageID(param1:Array) : void{}
      
      public function chapterProgress(param1:int) : String{return null;}
      
      public function checkPageActiveByPageID(param1:int) : Boolean{return false;}
      
      public function get pageAllPro() : PageItemAllProInfo{return null;}
      
      public function set pageAllPro(param1:PageItemAllProInfo) : void{}
      
      public function get nextPro() : ManualLevelProInfo{return null;}
      
      public function set nextPro(param1:ManualLevelProInfo) : void{}
      
      public function get curPro() : ManualLevelProInfo{return null;}
      
      public function set curPro(param1:ManualLevelProInfo) : void{}
      
      public function get progress() : int{return 0;}
      
      public function set progress(param1:int) : void{}
      
      public function get manualLev() : int{return 0;}
      
      public function set manualLev(param1:int) : void{}
      
      private function updatePro() : void{}
      
      private function initInfo() : void{}
      
      public function clear() : void{}
      
      public function refreshData() : void{}
   }
}
