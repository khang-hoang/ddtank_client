package magicHouse
{
   import bagAndInfo.cell.DragEffect;
   import baglocked.BaglockedManager;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.interfaces.IAcceptDrag;
   import ddt.manager.DragManager;
   import ddt.manager.PlayerManager;
   import flash.display.Sprite;
   import magicHouse.magicBox.MagicBoxExtractionCell;
   
   public class MagicBoxExtractionDragInArea extends Sprite implements IAcceptDrag
   {
      
      public static const RECTWIDTH:int = 460;
      
      public static const RECTHEIGHT:int = 360;
       
      
      private var _cell:MagicBoxExtractionCell;
      
      public function MagicBoxExtractionDragInArea(param1:MagicBoxExtractionCell){super();}
      
      private function init() : void{}
      
      public function dragDrop(param1:DragEffect) : void{}
   }
}
