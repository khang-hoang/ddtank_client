package campbattle.view.awardsView
{
   import campbattle.CampBattleManager;
   import com.pickgliss.ui.controls.container.VBox;
   
   public class AwardsList extends VBox
   {
       
      
      private var _currentItem:AwardsListItem;
      
      private var items:Vector.<AwardsListItem>;
      
      public function AwardsList(){super();}
      
      override protected function init() : void{}
   }
}
