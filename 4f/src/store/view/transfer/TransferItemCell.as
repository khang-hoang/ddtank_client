package store.view.transfer
{
   import bagAndInfo.cell.DragEffect;
   import com.pickgliss.ui.ComponentFactory;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.DragManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.geom.Point;
   import store.StoreCell;
   
   public class TransferItemCell extends StoreCell
   {
       
      
      private var _categoryID:Number = -1;
      
      private var _isComposeStrength:Boolean;
      
      private var _refinery:int = -1;
      
      public function TransferItemCell(param1:int){super(null,null);}
      
      override protected function addEnchantMc() : void{}
      
      public function set Refinery(param1:int) : void{}
      
      public function get Refinery() : int{return 0;}
      
      public function set isComposeStrength(param1:Boolean) : void{}
      
      public function set categoryId(param1:Number) : void{}
      
      private function checkComposeStrengthen() : Boolean{return false;}
      
      public function set index(param1:int) : void{}
      
      override public function dragDrop(param1:DragEffect) : void{}
      
      override public function dispose() : void{}
   }
}
