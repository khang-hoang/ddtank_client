package ddt.manager
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.image.MovieImage;
   import ddt.events.PkgEvent;
   import flash.events.MouseEvent;
   import microenddownload.MicroendDownloadAwardsManager;
   import road7th.comm.PackageIn;
   
   public class LandersAwardManager
   {
      
      private static var _instance:LandersAwardManager;
       
      
      private var _landersBtn:MovieImage;
      
      private var _getFlag:Boolean = true;
      
      private var _hBox:HBox;
      
      private var _landersAwardOfficial:Boolean;
      
      public function LandersAwardManager(){super();}
      
      public static function get instance() : LandersAwardManager{return null;}
      
      public function get landersAwardOfficial() : Boolean{return false;}
      
      public function set landersAwardOfficial(param1:Boolean) : void{}
      
      public function setup() : void{}
      
      protected function __onIsReceiveAward(param1:PkgEvent) : void{}
      
      private function checkShowIcon() : void{}
      
      private function showIcon() : void{}
      
      public function createEntryBtn(param1:HBox) : void{}
      
      protected function __onGetAward(param1:MouseEvent) : void{}
      
      public function disposeEntryBtn() : void{}
   }
}
