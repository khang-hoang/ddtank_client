package rescue
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import ddt.events.PkgEvent;
   import ddt.loader.LoaderCreate;
   import ddt.manager.SocketManager;
   import ddt.utils.AssetModuleLoader;
   import flash.events.Event;
   import rescue.data.RescueResultInfo;
   import rescue.views.RescueMainFrame;
   import rescue.views.RescueResultFrame;
   import road7th.comm.PackageIn;
   
   public class RescueControl
   {
      
      private static var _instance:RescueControl;
       
      
      private var _frame:RescueMainFrame;
      
      private var _resultFrame:RescueResultFrame;
      
      public var isNoPrompt:Boolean;
      
      public var isBand:Boolean;
      
      public var curSceneId:int;
      
      public function RescueControl()
      {
         super();
      }
      
      public static function get instance() : RescueControl
      {
         if(!_instance)
         {
            _instance = new RescueControl();
         }
         return _instance;
      }
      
      public function setup() : void
      {
         SocketManager.Instance.addEventListener(PkgEvent.format(277,6),__fightResultHandler);
         RescueManager.instance.addEventListener("rescueOpenView",__onOpenView);
      }
      
      protected function __fightResultHandler(param1:PkgEvent) : void
      {
         var _loc2_:PackageIn = param1.pkg;
         var _loc3_:RescueResultInfo = new RescueResultInfo();
         _loc3_.score = _loc2_.readInt();
         _loc3_.star = _loc2_.readInt();
         _loc3_.sceneId = _loc2_.readInt();
         _loc3_.isWin = _loc2_.readBoolean();
         _resultFrame = ComponentFactory.Instance.creatComponentByStylename("rescue.resultFrame");
         _resultFrame.setData(_loc3_);
         LayerManager.Instance.addToLayer(_resultFrame,2,true,1);
      }
      
      protected function __onOpenView(param1:Event) : void
      {
         if(!_frame)
         {
            AssetModuleLoader.addRequestLoader(LoaderCreate.Instance.createRescueRewardLoader());
            AssetModuleLoader.addModelLoader("rescue",6);
            AssetModuleLoader.startCodeLoader(createRescueMainFrame);
         }
         else
         {
            createRescueMainFrame();
         }
      }
      
      protected function createRescueMainFrame() : void
      {
         _frame = ComponentFactory.Instance.creatComponentByStylename("rescue.rescueMainView");
         LayerManager.Instance.addToLayer(_frame,3,true,1);
      }
   }
}
