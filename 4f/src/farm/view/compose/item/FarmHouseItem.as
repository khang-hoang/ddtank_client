package farm.view.compose.item
{
   import bagAndInfo.cell.CellFactory;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import shop.view.ShopItemCell;
   
   public class FarmHouseItem extends Sprite implements Disposeable
   {
      
      public static const HOUSE_ITEM_WIDTH:int = 72;
       
      
      protected var _itemBg:DisplayObject;
      
      private var _itemCell:ShopItemCell;
      
      private var _index:int;
      
      private var _info:InventoryItemInfo;
      
      private var _count:FilterFrameText;
      
      public function FarmHouseItem(param1:int = -1){super();}
      
      protected function initContent() : void{}
      
      public function get info() : InventoryItemInfo{return null;}
      
      public function set info(param1:InventoryItemInfo) : void{}
      
      public function dispose() : void{}
   }
}
