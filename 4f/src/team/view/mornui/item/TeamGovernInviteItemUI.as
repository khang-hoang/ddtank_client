package team.view.mornui.item
{
   import morn.core.components.Button;
   import morn.core.components.Label;
   import morn.core.components.View;
   import morn.core.ex.NameTextEx;
   
   public class TeamGovernInviteItemUI extends View
   {
       
      
      public var label_date:Label = null;
      
      public var label_name:NameTextEx = null;
      
      public var btn_close:Button = null;
      
      public var btn_right:Button = null;
      
      public function TeamGovernInviteItemUI(){super();}
      
      override protected function createChildren() : void{}
   }
}
