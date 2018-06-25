package worldcup.view.mornui.item
{
   import morn.core.components.Button;
   import morn.core.components.Image;
   import morn.core.components.Label;
   import morn.core.components.View;
   
   public class PrizeItemUI extends View
   {
       
      
      public var prizeItemBg:Image = null;
      
      public var getAlreadyIcon:Image = null;
      
      public var getPrizeBtn:Button = null;
      
      public var totalRechargeTxt:Label = null;
      
      public var prizeInfoTxt:Label = null;
      
      public function PrizeItemUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         loadUI("item/PrizeItem.xml");
      }
   }
}