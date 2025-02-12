package team.model
{
   import ddt.data.player.BasePlayer;
   import ddt.manager.PlayerManager;
   import ddt.manager.TimeManager;
   
   public class TeamMemberInfo extends BasePlayer
   {
       
      
      public var activeScore:int;
      
      public var weekActiveScore:int;
      
      public var totalActiveScore:int;
      
      public var seasonActiveScore:int;
      
      public var teamSocre:int;
      
      public var totalTiems:int;
      
      public var isSignToday:Boolean;
      
      public var isSelected:Boolean;
      
      public var type:int = 1;
      
      public var RatifierName:String;
      
      public var minute:int;
      
      public var day:int;
      
      public function TeamMemberInfo(){super();}
      
      public function get isSelf() : Boolean{return false;}
      
      public function get OffLineHour() : int{return 0;}
   }
}
