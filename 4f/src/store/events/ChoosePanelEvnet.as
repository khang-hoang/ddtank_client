package store.events
{
   import flash.events.Event;
   
   public class ChoosePanelEvnet extends Event
   {
      
      public static const CHOOSEPANELEVENT:String = "ChoosePanelEvent";
       
      
      private var _currentPanel:int;
      
      public function ChoosePanelEvnet(param1:int){super(null,null);}
      
      public function get currentPanle() : int{return 0;}
   }
}
