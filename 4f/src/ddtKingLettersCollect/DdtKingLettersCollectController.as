package ddtKingLettersCollect
{
   import com.pickgliss.ui.LayerManager;
   import ddt.CoreController;
   import ddt.events.CEvent;
   import ddt.events.PkgEvent;
   import ddt.manager.SocketManager;
   import ddt.utils.HelperUIModuleLoad;
   import ddtKingLettersCollect.view.DdtKingLettersView;
   import flash.utils.Dictionary;
   import nationDay.NationDayManager;
   import road7th.comm.PackageIn;
   
   public class DdtKingLettersCollectController extends CoreController
   {
      
      private static var instance:DdtKingLettersCollectController;
       
      
      private var _manager:DdtKingLettersCollectManager;
      
      private var _isShow:Boolean = false;
      
      private var ddtKingLettersView:DdtKingLettersView;
      
      public function DdtKingLettersCollectController(param1:inner){super();}
      
      public static function getInstance() : DdtKingLettersCollectController{return null;}
      
      public function setup() : void{}
      
      protected function __onGetNationInfo(param1:PkgEvent) : void{}
      
      private function onEvtShow(param1:CEvent) : void{}
      
      public function get isShow() : Boolean{return false;}
      
      public function set isShow(param1:Boolean) : void{}
      
      private function onLoadRes() : void{}
   }
}

class inner
{
    
   
   function inner(){super();}
}
