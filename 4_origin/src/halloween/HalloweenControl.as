package halloween
{
   import com.pickgliss.events.UIModuleEvent;
   import com.pickgliss.loader.UIModuleLoader;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.view.UIModuleSmallLoading;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import halloween.view.HalloweenView;
   
   public class HalloweenControl extends EventDispatcher
   {
      
      public static var loadComplete:Boolean = false;
      
      public static var useFirst:Boolean = true;
      
      private static var _instance:HalloweenControl;
       
      
      private var _halloweenView:HalloweenView;
      
      public function HalloweenControl(param1:IEventDispatcher = null)
      {
         super(param1);
      }
      
      public static function get instance() : HalloweenControl
      {
         if(_instance == null)
         {
            _instance = new HalloweenControl();
         }
         return _instance;
      }
      
      public function setup() : void
      {
         HalloweenManager.instance.addEventListener("openView",__onOpenView);
      }
      
      protected function __onOpenView(param1:Event) : void
      {
         show();
      }
      
      private function show() : void
      {
         if(loadComplete)
         {
            showhalloweenFrame();
         }
         else if(useFirst)
         {
            UIModuleSmallLoading.Instance.progress = 0;
            UIModuleSmallLoading.Instance.show();
            UIModuleSmallLoading.Instance.addEventListener("close",__onClose);
            UIModuleLoader.Instance.addEventListener("uiMoudleProgress",__progressShow);
            UIModuleLoader.Instance.addEventListener("uiModuleComplete",__complainShow);
            UIModuleLoader.Instance.addUIModuleImp("halloween");
         }
      }
      
      private function __complainShow(param1:UIModuleEvent) : void
      {
         if(param1.module == "halloween")
         {
            UIModuleSmallLoading.Instance.removeEventListener("close",__onClose);
            UIModuleLoader.Instance.removeEventListener("uiMoudleProgress",__progressShow);
            UIModuleLoader.Instance.removeEventListener("uiModuleComplete",__complainShow);
            UIModuleSmallLoading.Instance.hide();
            loadComplete = true;
            useFirst = false;
            show();
         }
      }
      
      private function __progressShow(param1:UIModuleEvent) : void
      {
         if(param1.module == "halloween")
         {
            UIModuleSmallLoading.Instance.progress = param1.loader.progress * 100;
         }
      }
      
      protected function __onClose(param1:Event) : void
      {
         UIModuleSmallLoading.Instance.hide();
         UIModuleSmallLoading.Instance.removeEventListener("close",__onClose);
         UIModuleLoader.Instance.removeEventListener("uiMoudleProgress",__progressShow);
         UIModuleLoader.Instance.removeEventListener("uiModuleComplete",__complainShow);
      }
      
      private function showhalloweenFrame() : void
      {
         _halloweenView = new HalloweenView();
         _halloweenView.show();
      }
      
      public function hide() : void
      {
         ObjectUtils.disposeObject(_halloweenView);
         _halloweenView = null;
      }
   }
}
