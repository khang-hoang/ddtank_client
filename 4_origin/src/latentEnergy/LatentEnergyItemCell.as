package latentEnergy
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.events.InteractiveEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.utils.DoubleClickManager;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.SoundManager;
   import flash.display.DisplayObject;
   
   public class LatentEnergyItemCell extends BagCell
   {
       
      
      public function LatentEnergyItemCell(param1:int, param2:ItemTemplateInfo = null, param3:Boolean = true, param4:DisplayObject = null, param5:Boolean = true)
      {
         super(param1,param2,param3,param4,param5);
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         if(_tbxCount)
         {
            ObjectUtils.disposeObject(_tbxCount);
         }
         _tbxCount = ComponentFactory.Instance.creat("latentEnergyFrame.itemCell.countTxt");
         _tbxCount.mouseEnabled = false;
         addChild(_tbxCount);
      }
      
      override protected function initEvent() : void
      {
         super.initEvent();
         addEventListener("interactive_click",__clickHandler);
         addEventListener("interactive_double_click",__doubleClickHandler);
         DoubleClickManager.Instance.enableDoubleClick(this);
         LatentEnergyManager.instance.addEventListener("latentEnergy_item_move",itemMoveHandler);
         LatentEnergyManager.instance.addEventListener("latentEnergy_item_move2",itemMoveHandler2);
      }
      
      private function itemMoveHandler(param1:LatentEnergyEvent) : void
      {
         var _loc2_:* = null;
         if(info == param1.info)
         {
            return;
         }
         if(info)
         {
            _loc2_ = new LatentEnergyEvent("latentEnergy_item_move2");
            _loc2_.info = info as InventoryItemInfo;
            _loc2_.moveType = 3;
            LatentEnergyManager.instance.dispatchEvent(_loc2_);
         }
         info = param1.info;
      }
      
      private function itemMoveHandler2(param1:LatentEnergyEvent) : void
      {
         if(info != param1.info || param1.moveType != 2)
         {
            return;
         }
         info = null;
      }
      
      protected function __doubleClickHandler(param1:InteractiveEvent) : void
      {
         if(!info)
         {
            return;
         }
         SoundManager.instance.play("008");
         var _loc2_:LatentEnergyEvent = new LatentEnergyEvent("latentEnergy_item_move2");
         _loc2_.info = info as InventoryItemInfo;
         _loc2_.moveType = 2;
         LatentEnergyManager.instance.dispatchEvent(_loc2_);
      }
      
      override protected function removeEvent() : void
      {
         super.removeEvent();
         removeEventListener("interactive_click",__clickHandler);
         removeEventListener("interactive_double_click",__doubleClickHandler);
         DoubleClickManager.Instance.disableDoubleClick(this);
         LatentEnergyManager.instance.removeEventListener("latentEnergy_item_move",itemMoveHandler);
         LatentEnergyManager.instance.removeEventListener("latentEnergy_item_move2",itemMoveHandler2);
      }
      
      protected function __clickHandler(param1:InteractiveEvent) : void
      {
         SoundManager.instance.play("008");
         dragStart();
      }
      
      public function clearInfo() : void
      {
         var _loc1_:* = null;
         if(info)
         {
            _loc1_ = new LatentEnergyEvent("latentEnergy_item_move2");
            _loc1_.info = info as InventoryItemInfo;
            _loc1_.moveType = 2;
            LatentEnergyManager.instance.dispatchEvent(_loc1_);
         }
      }
   }
}
