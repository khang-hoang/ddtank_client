package latentEnergy
{
   import bagAndInfo.cell.DragEffect;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.interfaces.IAcceptDrag;
   import ddt.manager.DragManager;
   import flash.display.Sprite;
   
   public class LatentEnergyRightDragSprite extends Sprite implements IAcceptDrag
   {
       
      
      public function LatentEnergyRightDragSprite()
      {
         super();
      }
      
      public function dragDrop(param1:DragEffect) : void
      {
         var _loc2_:* = null;
         DragManager.acceptDrag(this,"none");
         var _loc4_:InventoryItemInfo = param1.data as InventoryItemInfo;
         if(_loc4_.BagType == 0)
         {
            _loc2_ = "latentEnergy_equip_move2";
         }
         else
         {
            _loc2_ = "latentEnergy_item_move2";
         }
         var _loc3_:LatentEnergyEvent = new LatentEnergyEvent(_loc2_);
         _loc3_.info = _loc4_;
         _loc3_.moveType = 2;
         LatentEnergyManager.instance.dispatchEvent(_loc3_);
      }
   }
}
