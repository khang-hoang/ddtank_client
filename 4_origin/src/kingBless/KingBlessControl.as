package kingBless
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import kingBless.view.KingBlessMainFrame;
   
   public class KingBlessControl extends EventDispatcher
   {
      
      private static var _instance:KingBlessControl;
       
      
      private var _func:Function;
      
      private var _funcParams:Array;
      
      public function KingBlessControl()
      {
         super();
      }
      
      public static function get instance() : KingBlessControl
      {
         if(_instance == null)
         {
            _instance = new KingBlessControl();
         }
         return _instance;
      }
      
      public function setup() : void
      {
         KingBlessManager.instance.addEventListener("kingBlessOpenView",__onShowView);
      }
      
      public function __onShowView(param1:Event) : void
      {
         var _loc2_:KingBlessMainFrame = ComponentFactory.Instance.creatComponentByStylename("KingBlessMainFrame");
         LayerManager.Instance.addToLayer(_loc2_,3,true,1);
      }
   }
}