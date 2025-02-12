package team.view.mornui
{
   import morn.core.components.Button;
   import morn.core.components.List;
   import morn.core.components.View;
   
   public class TeamMemberViewUI extends View
   {
       
      
      public var list_member:List = null;
      
      public var socreBtn:Button = null;
      
      public var sessionBtn:Button = null;
      
      public var memberBtn:Button = null;
      
      public var totalActiveBtn:Button = null;
      
      public var weekActiveBtn:Button = null;
      
      public var dateBtn:Button = null;
      
      public function TeamMemberViewUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         loadUI("TeamMemberView.xml");
      }
   }
}
