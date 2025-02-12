package tofflist.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedTextButton;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.core.Disposeable;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import flash.events.MouseEvent;
   import tofflist.TofflistEvent;
   import tofflist.TofflistModel;
   
   public class TofflistThirdClassMenu extends HBox implements Disposeable
   {
      
      public static const PERSON_LOCAL_BATTLE:String = "personLocalBattle";
      
      public static const PERSON_LOCAL_LEVEL:String = "personLocalLevel";
      
      public static const PERSON_LOCAL_ACHIVE:String = "personLocalAchive";
      
      public static const PERSON_LOCAL_CHARM:String = "personLocalCharm";
      
      public static const PERSON_LOCAL_MATCH:String = "personLocalMatch";
      
      public static const PERSON_LOCAL_MOUNTS:String = "personLocalMounts";
      
      public static const PERSON_CROSS_BATTLE:String = "personCrossBattle";
      
      public static const PERSON_CROSS_LEVEL:String = "personCrossLevel";
      
      public static const PERSON_CROSS_ACHIVE:String = "personCrossAchive";
      
      public static const PERSON_CROSS_CHARM:String = "personCrossCharm";
      
      public static const PERSON_CROSS_MOUNTS:String = "personCrossMounts";
      
      public static const CONSORTIA_LOCAL_BATTLE:String = "consortiaLocalBattle";
      
      public static const CONSORTIA_LOCAL_LEVEL:String = "consortiaLocalLevel";
      
      public static const CONSORTIA_LOCAL_ASSET:String = "consortiaLocalAsset";
      
      public static const CONSORTIA_LOCAL_CHARM:String = "consortiaLocalCharm";
      
      public static const CONSORTIA_CROSS_BATTLE:String = "consortiaCrossBattle";
      
      public static const CONSORTIA_CROSS_LEVEL:String = "consortiaCrossLevel";
      
      public static const CONSORTIA_CROSS_ASSET:String = "consortiaCrossAsset";
      
      public static const CONSORTIA_CROSS_CHARM:String = "consortiaCrossCharm";
      
      public static const TEAM_CROSS:String = "teamCross";
      
      public static const TEAM_THE:String = "teamThe";
      
      public static const DAY:String = "day";
      
      public static const TOTAL:String = "total";
      
      public static const WEEK:String = "week";
      
      private static const BTN_CONST:Array = ["day","week","total"];
       
      
      private var _dayBtn:SelectedTextButton;
      
      private var _weekBtn:SelectedTextButton;
      
      private var _totalBtn:SelectedTextButton;
      
      private var _btns:Array;
      
      private var _selectedButtonGroup:SelectedButtonGroup;
      
      public function TofflistThirdClassMenu(){super();}
      
      private function initView() : void{}
      
      override public function dispose() : void{}
      
      public function selectType(param1:String, param2:String) : void{}
      
      public function get type() : String{return null;}
      
      public function set type(param1:String) : void{}
      
      private function __selectToolBarHandler(param1:MouseEvent) : void{}
   }
}
