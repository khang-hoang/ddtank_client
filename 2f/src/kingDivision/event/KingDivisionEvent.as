package kingDivision.event
{
   import flash.events.Event;
   import road7th.comm.PackageIn;
   
   public class KingDivisionEvent extends Event
   {
      
      public static const ACTIVITY_OPEN:String = "activity_open";
      
      public static const CONSORTIA_MATCH_INFO:String = "consortia_match_info";
      
      public static const UPDATE_MESSAGE:String = "update_message";
      
      public static const CONSORTIA_MATCH_SCORE:String = "consortiaMatchScore";
      
      public static const CONSORTIA_MATCH_RANK:String = "consortiaMatchRank";
      
      public static const CONSORTIA_MATCH_AREA_RANK:String = "consortiaMatchAreaRank";
      
      public static const CONSORTIA_MATCH_AREA_RANK_INFO:String = "consortiaMatchAreaRankInfo";
      
      public static const CONSORTIA_MESSAGE_THIS_ZONE:String = "consortiamessagethiszone";
       
      
      private var _pkg:PackageIn;
      
      public function KingDivisionEvent(param1:String, param2:PackageIn = null){super(null,null,null);}
      
      public function get pkg() : PackageIn{return null;}
   }
}
