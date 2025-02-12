package sanXiao.view
{
   import bagAndInfo.cell.BagCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import ddt.view.pageSelector.IPageItem;
   import flash.display.Bitmap;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import sanXiao.SanXiaoManager;
   import sanXiao.model.SXStoreItemData;
   
   public class SXStoreItem extends Sprite implements Disposeable, IPageItem
   {
       
      
      private var _bg:Bitmap;
      
      private var _bagCell:BagCell;
      
      private var _titleTxt:FilterFrameText;
      
      private var _priceIcon:Bitmap;
      
      private var _priceText:FilterFrameText;
      
      private var _exchangeBtn:SimpleBitmapButton;
      
      private var _data:SXStoreItemData;
      
      public function SXStoreItem(){super();}
      
      private function init() : void{}
      
      protected function onExchangeClick(param1:MouseEvent) : void{}
      
      public function updateItem(param1:Object = null) : void{}
      
      public function getID() : int{return 0;}
      
      public function dispose() : void{}
   }
}
