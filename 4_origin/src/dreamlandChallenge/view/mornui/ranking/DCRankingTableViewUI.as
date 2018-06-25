package dreamlandChallenge.view.mornui.ranking
{
   import dreamlandChallenge.view.logicView.ranking.DCRankingItemView;
   import morn.core.components.Label;
   import morn.core.components.List;
   import morn.core.components.View;
   import morn.core.ex.PageNavigaterEx;
   
   public class DCRankingTableViewUI extends View
   {
       
      
      public var text1:Label = null;
      
      public var text2:Label = null;
      
      public var text3:Label = null;
      
      public var text4:Label = null;
      
      public var text5:Label = null;
      
      public var rank_list:List = null;
      
      public var page_change:PageNavigaterEx = null;
      
      public function DCRankingTableViewUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         viewClassMap["dreamlandChallenge.view.logicView.ranking.DCRankingItemView"] = DCRankingItemView;
         super.createChildren();
         loadUI("ranking/DCRankingTableView.xml");
      }
   }
}