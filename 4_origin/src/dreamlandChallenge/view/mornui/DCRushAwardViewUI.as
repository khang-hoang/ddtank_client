package dreamlandChallenge.view.mornui
{
   import dreamlandChallenge.view.logicView.DCAwardCell;
   import morn.core.components.List;
   import morn.core.components.View;
   
   public class DCRushAwardViewUI extends View
   {
       
      
      public var list_award:List = null;
      
      public function DCRushAwardViewUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         viewClassMap["dreamlandChallenge.view.logicView.DCAwardCell"] = DCAwardCell;
         super.createChildren();
         loadUI("DCRushAwardView.xml");
      }
   }
}