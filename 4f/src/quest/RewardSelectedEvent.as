package quest
{
   import flash.events.Event;
   
   public class RewardSelectedEvent extends Event
   {
      
      public static var ITEM_SELECTED:String = "ItemSelected";
       
      
      private var _itemCell:QuestRewardCell;
      
      public function RewardSelectedEvent(param1:QuestRewardCell, param2:String = "ItemSelected", param3:Boolean = false, param4:Boolean = false){super(null,null,null);}
      
      public function get itemCell() : QuestRewardCell{return null;}
   }
}
