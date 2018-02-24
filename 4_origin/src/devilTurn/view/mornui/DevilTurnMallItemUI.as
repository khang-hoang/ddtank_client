package devilTurn.view.mornui
{
   import morn.core.components.Button;
   import morn.core.components.Image;
   import morn.core.components.Label;
   import morn.core.components.View;
   
   public class DevilTurnMallItemUI extends View
   {
       
      
      public var countText:Label = null;
      
      public var getImage:Image = null;
      
      public var getBtn:Button = null;
      
      public function DevilTurnMallItemUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         loadUI("DevilTurnMallItem.xml");
      }
   }
}