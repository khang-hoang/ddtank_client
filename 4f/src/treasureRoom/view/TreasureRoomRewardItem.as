package treasureRoom.view
{
   import bagAndInfo.cell.BagCell;
   import bagAndInfo.cell.BaseCell;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import mark.MarkMgr;
   import mark.data.MarkChipData;
   import mark.mornUI.items.MarkBagItemUI;
   import morn.core.components.Clip;
   
   public class TreasureRoomRewardItem extends MarkBagItemUI
   {
       
      
      private var _cell:BaseCell = null;
      
      private var _id:int = 0;
      
      private var _info:InventoryItemInfo;
      
      public function TreasureRoomRewardItem(param1:InventoryItemInfo, param2:int){super();}
      
      override protected function initialize() : void{}
      
      private function showStars(param1:int) : void{}
      
      override public function dispose() : void{}
   }
}
