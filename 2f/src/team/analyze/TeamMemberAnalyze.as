package team.analyze
{
   import com.pickgliss.loader.DataAnalyzer;
   import com.pickgliss.utils.StringUtils;
   import ddt.data.player.PlayerState;
   import road7th.utils.DateUtils;
   import team.model.TeamMemberInfo;
   
   public class TeamMemberAnalyze extends DataAnalyzer
   {
       
      
      private var _list:Array;
      
      public var id:int;
      
      public function TeamMemberAnalyze(param1:Function){super(null);}
      
      override public function analyze(param1:*) : void{}
      
      public function get list() : Array{return null;}
   }
}
