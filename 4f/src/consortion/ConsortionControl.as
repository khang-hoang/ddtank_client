package consortion
{
   import consortion.view.club.ClubView;
   import consortion.view.selfConsortia.SelfConsortiaView;
   import ddt.manager.ChatManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.states.BaseStateView;
   import ddt.view.MainToolBar;
   import flash.events.Event;
   
   public class ConsortionControl extends BaseStateView
   {
       
      
      private var _club:ClubView;
      
      private var _selfConsortia:SelfConsortiaView;
      
      private var _state:String;
      
      public function ConsortionControl(){super();}
      
      override public function enter(param1:BaseStateView, param2:Object = null) : void{}
      
      private function enterCurrentView() : void{}
      
      private function set consortiaState(param1:String) : void{}
      
      override public function leaving(param1:BaseStateView) : void{}
      
      override public function getBackType() : String{return null;}
      
      override public function getType() : String{return null;}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function ____consortiaStateChannge(param1:Event) : void{}
   }
}
