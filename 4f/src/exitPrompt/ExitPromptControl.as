package exitPrompt
{
   import com.pickgliss.ui.ComponentFactory;
   import ddt.manager.DesktopManager;
   import ddt.manager.ExitPromptManager;
   import ddt.manager.PathManager;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import quest.TaskManager;
   
   public class ExitPromptControl
   {
      
      private static var _instance:ExitPromptControl;
       
      
      private var _exitPromptView:ExitPromptFrame;
      
      private var _isExitToLogin:String;
      
      public function ExitPromptControl(){super();}
      
      public static function get Instance() : ExitPromptControl{return null;}
      
      public function setup() : void{}
      
      private function __onOpenView1(param1:Event) : void{}
      
      private function __onOpenView0(param1:Event) : void{}
      
      private function showView(param1:String = "0") : void{}
      
      private function _submitExit(param1:Event) : void{}
      
      private function _closeExit(param1:Event) : void{}
      
      public function changeJSQuestVar() : void{}
   }
}
