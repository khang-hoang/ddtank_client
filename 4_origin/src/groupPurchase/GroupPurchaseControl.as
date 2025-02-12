package groupPurchase
{
   import com.pickgliss.events.UIModuleEvent;
   import com.pickgliss.loader.UIModuleLoader;
   import ddt.view.UIModuleSmallLoading;
   import flash.events.EventDispatcher;
   import groupPurchase.view.GroupPurchaseQuickBuyFrame;
   import groupPurchase.view.GroupPurchaseRankFrame;
   
   public class GroupPurchaseControl extends EventDispatcher
   {
      
      private static var _instance:GroupPurchaseControl;
       
      
      private var _func:Function;
      
      private var _funcParams:Array;
      
      public function GroupPurchaseControl()
      {
         super();
         GroupPurchaseQuickBuyFrame;
      }
      
      public static function get instance() : GroupPurchaseControl
      {
         if(_instance == null)
         {
            _instance = new GroupPurchaseControl();
         }
         return _instance;
      }
      
      public function loadResModule(param1:Function = null, param2:Array = null) : void
      {
         _func = param1;
         _funcParams = param2;
         UIModuleSmallLoading.Instance.progress = 0;
         UIModuleSmallLoading.Instance.show();
         UIModuleLoader.Instance.addEventListener("uiModuleComplete",loadCompleteHandler);
         UIModuleLoader.Instance.addEventListener("uiMoudleProgress",onUimoduleLoadProgress);
         UIModuleLoader.Instance.addUIModuleImp("grouppurchase");
      }
      
      private function onUimoduleLoadProgress(param1:UIModuleEvent) : void
      {
         if(param1.module == "grouppurchase")
         {
            UIModuleSmallLoading.Instance.progress = param1.loader.progress * 100;
         }
      }
      
      private function loadCompleteHandler(param1:UIModuleEvent) : void
      {
         if(param1.module == "grouppurchase")
         {
            UIModuleSmallLoading.Instance.hide();
            UIModuleLoader.Instance.removeEventListener("uiModuleComplete",loadCompleteHandler);
            UIModuleLoader.Instance.removeEventListener("uiMoudleProgress",onUimoduleLoadProgress);
            if(null != _func)
            {
               _func.apply(null,_funcParams);
            }
            _func = null;
            _funcParams = null;
         }
      }
   }
}
