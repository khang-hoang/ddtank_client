package wonderfulActivity.items
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.EquipType;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.ItemManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import wonderfulActivity.data.GiftRewardInfo;
   
   public class PrizeListItem extends Sprite implements Disposeable
   {
       
      
      private var index:int;
      
      private var _bg:Bitmap;
      
      private var _bagCell:BagCell;
      
      public function PrizeListItem(){super();}
      
      public function initView(param1:int) : void{}
      
      public function setCellData(param1:GiftRewardInfo) : void{}
      
      public function dispose() : void{}
   }
}
