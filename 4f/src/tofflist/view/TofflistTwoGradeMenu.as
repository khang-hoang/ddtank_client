package tofflist.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedTextButton;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import flash.events.MouseEvent;
   import tofflist.TofflistEvent;
   import tofflist.TofflistModel;
   
   public class TofflistTwoGradeMenu extends HBox implements Disposeable
   {
      
      public static const ACHIEVEMENTPOINT:String = "achievementpoint";
      
      public static const ASSETS:String = "assets";
      
      public static const BATTLE:String = "battle";
      
      public static const GESTE:String = "geste";
      
      public static const LEVEL:String = "level";
      
      public static const CHARM:String = "charm";
      
      public static const MATCHES:String = "matches";
      
      public static const MOUNTS:String = "mounts";
      
      public static const INTEGRAL:String = "integral";
      
      private static const BTN_CONST:Array = ["battle","level","assets","charm","matches","mounts","integral"];
       
      
      private var _battleBtn:SelectedTextButton;
      
      private var _assetsBtn:SelectedTextButton;
      
      private var _levelBtn:SelectedTextButton;
      
      private var _achiveBtn:SelectedTextButton;
      
      private var _charmBtn:SelectedTextButton;
      
      private var _matcheBtn:SelectedTextButton;
      
      private var _mountsBtn:SelectedTextButton;
      
      private var _integralBtn:SelectedTextButton;
      
      private var _btns:Array;
      
      private var _selectedButtonGroup:SelectedButtonGroup;
      
      public function TofflistTwoGradeMenu(){super();}
      
      private function initView() : void{}
      
      override public function dispose() : void{}
      
      public function setParentType(param1:String) : void{}
      
      public function get type() : String{return null;}
      
      public function set type(param1:String) : void{}
      
      private function __selectToolBarHandler(param1:MouseEvent) : void{}
   }
}
