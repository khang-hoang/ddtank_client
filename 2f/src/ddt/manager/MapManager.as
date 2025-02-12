package ddt.manager
{
   import ddt.data.analyze.DungeonAnalyzer;
   import ddt.data.analyze.MapAnalyzer;
   import ddt.data.analyze.WeekOpenMapAnalyze;
   import ddt.data.map.DungeonInfo;
   import ddt.data.map.MapInfo;
   import ddt.data.map.OpenMapInfo;
   import ddt.events.CEvent;
   import ddt.events.PkgEvent;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import road7th.comm.PackageIn;
   import road7th.data.DictionaryData;
   
   public class MapManager extends EventDispatcher
   {
      
      public static const UPDATE_ACTIVE_PVE_INFO:String = "updateActivePveInfo";
      
      private static var _list:Vector.<MapInfo>;
      
      private static var _list2:DictionaryData;
      
      private static var _openList:Vector.<OpenMapInfo>;
      
      private static var _defaultDungeon:DungeonInfo;
      
      private static var _randomMapInfo1:MapInfo;
      
      private static var _randomMapInfo2:MapInfo;
      
      private static var _randomMapInfo3:MapInfo;
      
      private static var _pveList:Vector.<DungeonInfo>;
      
      private static var _pvpList:Vector.<MapInfo>;
      
      private static var _pveLinkList:Array;
      
      private static var _pveAdvancedList:Array;
      
      private static var _pveBossList:Vector.<DungeonInfo>;
      
      private static var _pveExplrolList:Vector.<DungeonInfo>;
      
      private static var _pvpComplectiList:Vector.<MapInfo>;
      
      private static var _fightLibList:Vector.<DungeonInfo>;
      
      private static var _pveAcademyList:Vector.<DungeonInfo>;
      
      private static var _pveActivityList:Vector.<DungeonInfo>;
      
      private static var _pveSingleLinkList:Vector.<DungeonInfo>;
      
      private static var _pveBraveDoorList:Vector.<DungeonInfo>;
      
      public static const PVP_TRAIN_MAP:int = 1;
      
      public static const PVP_TRAIN_MAP2:int = 25;
      
      public static const PVP_COMPECTI_MAP:int = 0;
      
      public static const PVE_EXPROL_MAP:int = 2;
      
      public static const PVE_BOSS_MAP:int = 3;
      
      public static const PVE_LINK_MAP:int = 4;
      
      public static const FIGHT_LIB:int = 5;
      
      public static const PVE_ACADEMY_MAP:int = 6;
      
      public static const PVE_ACTIVITY_MAP:int = 21;
      
      public static const PVE_SINGLELINK_MAP:int = 14;
      
      public static const PVE_BRAVEDOOR_MAP:int = 22;
      
      public static const PVE_BATTLE_MAP:int = 24;
      
      public static const PVE_ADVANCED_MAP:Array = [13];
      
      private static const PROVING_ROUNDID:int = -2;
      
      public static const PVE_SPECIAL_MAP:int = 23;
      
      public static const DOUBLE_SPECIAL1:int = 47;
      
      public static const DOUBLE_SPECIAL2:int = 48;
      
      public static const PVE_MAP:int = 5;
      
      public static const PVP_MAP:int = 6;
      
      private static var _instance:MapManager;
       
      
      public var curMapCardLabelType:int = 0;
      
      private var _activeDoubleIds:Array;
      
      private var _activeDoubleDic:Dictionary;
      
      private var _singleDoubleIds:Array;
      
      private var _singleDoubleDic:Dictionary;
      
      public function MapManager(){super();}
      
      public static function getListByType(param1:int = 0) : *{return null;}
      
      public static function getAdvancedList() : Array{return null;}
      
      public static function setupMapInfo(param1:MapAnalyzer) : void{}
      
      private static function createRandomMapInfo() : void{}
      
      public static function setupDungeonInfo(param1:DungeonAnalyzer) : void{}
      
      public static function setupOpenMapInfo(param1:WeekOpenMapAnalyze) : void{}
      
      public static function buildMap() : void{}
      
      public static function isMapOpen(param1:int) : Boolean{return false;}
      
      public static function getMapInfo(param1:Number) : MapInfo{return null;}
      
      public static function getDungeonInfo(param1:int) : DungeonInfo{return null;}
      
      public static function getByOrderingDungeonInfo(param1:int) : DungeonInfo{return null;}
      
      public static function getByOrderingAdvancedDungeonInfo(param1:int) : DungeonInfo{return null;}
      
      public static function getByOrderingAcademyDungeonInfo(param1:int) : DungeonInfo{return null;}
      
      public static function getByOrderingActivityDungeonInfo(param1:int) : DungeonInfo{return null;}
      
      public static function getByOrderingNightmareDungeonInfo(param1:int) : DungeonInfo{return null;}
      
      public static function getByOrderingSingleDungeonInfo(param1:int) : DungeonInfo{return null;}
      
      public static function getBraveDoorDuplicateInfo(param1:int) : DungeonInfo{return null;}
      
      public static function getFightLibList() : Vector.<DungeonInfo>{return null;}
      
      public static function getMapName(param1:int) : String{return null;}
      
      public static function get Instance() : MapManager{return null;}
      
      public function setup() : void{}
      
      private function onActivePveInfo(param1:PkgEvent) : void{}
      
      public function checkActiveAndSigleDic(param1:Dictionary, param2:Number) : Boolean{return false;}
      
      public function get activeDoubleDic() : Dictionary{return null;}
      
      public function get singleDoubleDic() : Dictionary{return null;}
      
      public function get activeDoubleIds() : Array{return null;}
      
      public function get singleDoubleIds() : Array{return null;}
   }
}
