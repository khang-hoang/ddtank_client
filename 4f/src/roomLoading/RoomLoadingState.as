package roomLoading
{
   import ddt.loader.StartupResourceLoader;
   import ddt.manager.ChatManager;
   import ddt.manager.GameInSocketOut;
   import ddt.manager.PathManager;
   import ddt.manager.StateManager;
   import ddt.states.BaseStateView;
   import ddt.view.MainToolBar;
   import gameCommon.GameControl;
   import gameCommon.model.GameInfo;
   import par.ParticleManager;
   import par.ShapeManager;
   import room.RoomManager;
   import roomLoading.view.RoomLoadingView;
   import roomLoading.view.RoomLoadingView3D;
   import worldboss.WorldBossManager;
   
   public class RoomLoadingState extends BaseStateView
   {
       
      
      protected var _current:GameInfo;
      
      protected var _loadingView:RoomLoadingView;
      
      public function RoomLoadingState(){super();}
      
      override public function enter(param1:BaseStateView, param2:Object = null) : void{}
      
      override public function leaving(param1:BaseStateView) : void{}
      
      override public function getType() : String{return null;}
      
      override public function dispose() : void{}
   }
}
