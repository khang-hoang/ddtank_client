package enchant.view
{
   import bagAndInfo.cell.DragEffect;
   import baglocked.BaglockedManager;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.interfaces.IAcceptDrag;
   import ddt.manager.DragManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import enchant.EnchantManager;
   import flash.display.Sprite;
   
   public class EnchantLeftDragSprite extends Sprite implements IAcceptDrag
   {
       
      
      public var equipCellActionState:Boolean;
      
      public function EnchantLeftDragSprite()
      {
         super();
      }
      
      public function dragDrop(param1:DragEffect) : void
      {
         DragManager.acceptDrag(this,"none");
         if(PlayerManager.Instance.Self.bagLocked)
         {
            BaglockedManager.Instance.show();
            return;
         }
         var _loc2_:InventoryItemInfo = param1.data as InventoryItemInfo;
         if(_loc2_.MagicLevel >= EnchantManager.instance.infoVec.length)
         {
            MessageTipManager.getInstance().show(LanguageMgr.GetTranslation("enchant.cannotUp"));
            return;
         }
         if(_loc2_.BagType == 0)
         {
            equipCellActionState = true;
            SocketManager.Instance.out.sendMoveGoods(_loc2_.BagType,_loc2_.Place,12,1,1);
         }
         else if(_loc2_.BagType == 1)
         {
            SocketManager.Instance.out.sendMoveGoods(_loc2_.BagType,_loc2_.Place,12,0,_loc2_.Count,true);
         }
      }
   }
}
