package gemstone.items
{
   import bagAndInfo.cell.BagCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.bagStore.BagStore;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.data.goods.ShopItemInfo;
   import ddt.events.ShortcutBuyEvent;
   import ddt.manager.ItemManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ShopManager;
   import ddt.manager.SoundManager;
   import ddt.view.tips.GoodTipInfo;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import shop.view.BuySingleGoodsView;
   
   public class GemstoneBuyItem extends Sprite
   {
       
      
      private var _itemID:int;
      
      private var _needDispatchEvent:Boolean;
      
      private var _storeTab:int;
      
      private var _itemInfo:ItemTemplateInfo;
      
      private var _shopItemInfo:ShopItemInfo;
      
      private var tipData:GoodTipInfo;
      
      private var _cell:BagCell;
      
      private var _txt:FilterFrameText;
      
      private var _btn:SimpleBitmapButton;
      
      public function GemstoneBuyItem(){super();}
      
      public function setup(param1:int, param2:int, param3:Boolean = false) : void{}
      
      private function initliziItemTemplate() : void{}
      
      protected function clickHander(param1:MouseEvent) : void{}
      
      private function removeFromStageHandler(param1:Event) : void{}
      
      private function __shortCutBuyHandler(param1:ShortcutBuyEvent) : void{}
      
      public function setText(param1:String) : void{}
      
      public function dispose() : void{}
   }
}
