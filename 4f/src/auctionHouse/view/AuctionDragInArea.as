package auctionHouse.view
{
   import bagAndInfo.cell.DragEffect;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.interfaces.IAcceptDrag;
   import ddt.manager.DragManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import flash.display.Sprite;
   
   public class AuctionDragInArea extends Sprite implements IAcceptDrag
   {
       
      
      private var _cells:Vector.<AuctionCellView>;
      
      public function AuctionDragInArea(param1:Vector.<AuctionCellView>){super();}
      
      public function dragDrop(param1:DragEffect) : void{}
   }
}
