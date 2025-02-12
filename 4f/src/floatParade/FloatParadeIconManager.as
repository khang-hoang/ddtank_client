package floatParade
{
   import com.pickgliss.events.UIModuleEvent;
   import com.pickgliss.loader.UIModuleLoader;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.CoreManager;
   import ddt.events.CrazyTankSocketEvent;
   import ddt.manager.ChatManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.TimeManager;
   import dragonBoat.DragonBoatManager;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import road7th.comm.PackageIn;
   import road7th.data.DictionaryData;
   import road7th.utils.DateUtils;
   
   public class FloatParadeIconManager extends CoreManager
   {
      
      public static const END:String = "floatParadeEnd";
      
      private static var _instance:FloatParadeIconManager;
       
      
      private var _isStart:Boolean;
      
      private var _isPromptDoubleTime:Boolean = false;
      
      private var _isLoadIconComplete:Boolean;
      
      private var _pkg:PackageIn;
      
      private var _timer:Timer;
      
      private var _hasPrompted:DictionaryData;
      
      private var _endTime:Date;
      
      private var _activityBtn:MovieClip;
      
      private var _hall:Sprite;
      
      public function FloatParadeIconManager(){super();}
      
      public static function get instance() : FloatParadeIconManager{return null;}
      
      public function setup() : void{}
      
      private function pkgHandler(param1:CrazyTankSocketEvent) : void{}
      
      private function loaderIcon() : void{}
      
      private function loadIconCompleteHandler(param1:UIModuleEvent) : void{}
      
      public function dispatchEventPkg(param1:String = null, param2:PackageIn = null) : void{}
      
      override protected function start() : void{}
      
      public function get savePkg() : PackageIn{return null;}
      
      public function get isStart() : Boolean{return false;}
      
      private function timerHandler(param1:TimerEvent) : void{}
      
      public function updateIcon(param1:Sprite) : void{}
      
      public function floatParadeActivityStart() : Boolean{return false;}
      
      private function __onClickActivityBtn(param1:MouseEvent) : void{}
      
      public function disposeIcion() : void{}
   }
}
