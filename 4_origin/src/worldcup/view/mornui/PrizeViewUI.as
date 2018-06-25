package worldcup.view.mornui
{
   import morn.core.components.Label;
   import morn.core.components.List;
   import morn.core.components.View;
   import worldcup.view.item.PrizeItem;
   
   public class PrizeViewUI extends View
   {
       
      
      public var listPrize:List = null;
      
      public var txt1:Label = null;
      
      public var txt2:Label = null;
      
      public var txt3:Label = null;
      
      public var totalNumTxt:Label = null;
      
      public var txt4:Label = null;
      
      public function PrizeViewUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         viewClassMap["worldcup.view.item.PrizeItem"] = PrizeItem;
         super.createChildren();
         loadUI("PrizeView.xml");
      }
   }
}