package team.view.mornui
{
   import morn.core.components.Button;
   import morn.core.components.Label;
   import morn.core.components.TextArea;
   import morn.core.components.View;
   
   public class TeamBattleFrameUI extends View
   {
       
      
      public var battleBtn:Button = null;
      
      public var gotoTeamBtn:Button = null;
      
      public var closeBtn:Button = null;
      
      public var teamBattleTime:Label = null;
      
      public var teamText1:TextArea = null;
      
      public function TeamBattleFrameUI(){super();}
      
      override protected function createChildren() : void{}
   }
}
