package team.view.mornui.Rank
{
   import morn.core.components.Button;
   import morn.core.components.Label;
   import morn.core.components.List;
   import morn.core.components.View;
   import team.view.rank.TeamRankItem;
   import team.view.rank.TeamRankLeftItem;
   import team.view.rank.TeamRankRightView;
   
   public class TeamRankViewUI extends View
   {
       
      
      public var teamText6:Label = null;
      
      public var teamText7:Label = null;
      
      public var teamText5:Label = null;
      
      public var teamText9:Label = null;
      
      public var label_currentRank:Label = null;
      
      public var label_totolRank:Label = null;
      
      public var btn_theServer:Button = null;
      
      public var btn_crossServer:Button = null;
      
      public var teamText8:Label = null;
      
      public var teamText1:Label = null;
      
      public var teamText2:Label = null;
      
      public var teamText3:Label = null;
      
      public var teamText4:Label = null;
      
      public var list_rank:List = null;
      
      public var list_left:List = null;
      
      public var teamInfoBox:TeamRankRightView = null;
      
      public function TeamRankViewUI(){super();}
      
      override protected function createChildren() : void{}
   }
}
