package team.view.mornui
{
   import morn.core.components.Button;
   import morn.core.components.Label;
   import morn.core.components.List;
   import morn.core.components.View;
   
   public class TeamActiveAlertViewUI extends View
   {
       
      
      public var btn_close:Button = null;
      
      public var label_title:Label = null;
      
      public var list_active:List = null;
      
      public function TeamActiveAlertViewUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         loadUI("TeamActiveAlertView.xml");
      }
   }
}
