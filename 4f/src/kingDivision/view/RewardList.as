package kingDivision.view
{
   import com.pickgliss.ui.controls.container.VBox;
   import kingDivision.KingDivisionManager;
   
   public class RewardList extends VBox
   {
       
      
      private var _currentItem:RewardListItem;
      
      private var items:Vector.<RewardListItem>;
      
      public function RewardList(){super();}
      
      override protected function init() : void{}
   }
}
