package welfareCenter
{
   import com.pickgliss.ui.ComponentFactory;
   import ddt.events.CEvent;
   import welfareCenter.view.WelfareCenterFrame;
   
   public class WelfareCenterController
   {
      
      private static var _instance:WelfareCenterController;
       
      
      public function WelfareCenterController()
      {
         super();
      }
      
      public static function get instance() : WelfareCenterController
      {
         if(_instance == null)
         {
            _instance = new WelfareCenterController();
         }
         return _instance;
      }
      
      public function setup() : void
      {
         WelfareCenterManager.instance.addEventListener("welfareCenterShow",__onShowFrame);
      }
      
      private function __onShowFrame(param1:CEvent) : void
      {
         var _loc2_:WelfareCenterFrame = ComponentFactory.Instance.creatComponentByStylename("welfareCenter.frame");
         _loc2_.show();
      }
   }
}
