package newOldPlayer.newOldPlayerUI.view
{
   import morn.core.components.Label;
   import morn.core.components.View;
   import morn.core.ex.NumberImageEx;
   
   public class NewOldPlayerDesUI extends View
   {
       
      
      public var AllMoneyImg:NumberImageEx = null;
      
      public var rechargeMoney:Label = null;
      
      public var AllMoney:Label = null;
      
      public function NewOldPlayerDesUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         loadUI("view/NewOldPlayerDes.xml");
      }
   }
}