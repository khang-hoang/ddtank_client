package treasureRoom.mornui
{
   import morn.core.components.Button;
   import morn.core.components.Image;
   import morn.core.components.View;
   
   public class TreasureRoomRewardViewUI extends View
   {
       
      
      public var bg:Image = null;
      
      public var closeBtn:Button = null;
      
      public function TreasureRoomRewardViewUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         loadUI("TreasureRoomRewardView.xml");
      }
   }
}
