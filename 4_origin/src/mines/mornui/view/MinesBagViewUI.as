package mines.mornui.view
{
   import morn.core.components.Button;
   import morn.core.components.Label;
   import morn.core.components.View;
   
   public class MinesBagViewUI extends View
   {
       
      
      public var arrangeBtn:Button = null;
      
      public var upBtn:Button = null;
      
      public var downBtn:Button = null;
      
      public var pageLabel:Label = null;
      
      public function MinesBagViewUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         loadUI("view/MinesBagView.xml");
      }
   }
}
