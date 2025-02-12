package mines.mornui.view
{
   import morn.core.components.Box;
   import morn.core.components.Image;
   import morn.core.components.Label;
   import morn.core.components.View;
   
   public class EquipmentItemUI extends View
   {
       
      
      public var box:Box = null;
      
      public var weapon:Image = null;
      
      public var selectedPic:Image = null;
      
      public var lvLabel:Label = null;
      
      public function EquipmentItemUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         loadUI("view/EquipmentItem.xml");
      }
   }
}
