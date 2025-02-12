package tofflist.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.controls.SelectedTextButton;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.core.Disposeable;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import tofflist.TofflistEvent;
   import tofflist.TofflistModel;
   
   public class TofflistStairMenu extends Sprite implements Disposeable
   {
      
      public static const CONSORTIA:String = "consortia";
      
      public static const CROSS_SERVER_CONSORTIA:String = "crossServerConsortia";
      
      public static const CROSS_SERVER_PERSONAL:String = "crossServerPersonal";
      
      public static const PERSONAL:String = "personal";
      
      public static const TEAM:String = "teams";
      
      public static const CROSS_SERVER_TEAM:String = "crossServerTeams";
       
      
      private var _selectedBtnGroupI:SelectedButtonGroup;
      
      private var _crossServerBtn:SelectedCheckButton;
      
      private var _theServerBtn:SelectedCheckButton;
      
      private var _selectedBtnGroupII:SelectedButtonGroup;
      
      private var _consortiaBtn:SelectedTextButton;
      
      private var _personalBtn:SelectedTextButton;
      
      private var _titleInfo:TextButton;
      
      private var _teamsBtn:SelectedTextButton;
      
      private var _resourceArr:Array;
      
      private var _selectedButtonGroup:SelectedButtonGroup;
      
      private var _styleLinkArr:Array;
      
      public function TofflistStairMenu(){super();}
      
      private function initView() : void{}
      
      private function addEvent() : void{}
      
      private function __typeChange(param1:Event) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
      
      public function get type() : String{return null;}
      
      public function set type(param1:String) : void{}
   }
}
