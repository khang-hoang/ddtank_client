package ddt.view.common
{
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentSetting;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.TextButton;
   import ddt.bagStore.BagStore;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.data.goods.ShopItemInfo;
   import ddt.events.ShortcutBuyEvent;
   import ddt.manager.ItemManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ShopManager;
   import ddt.manager.SoundManager;
   import ddt.view.tips.GoodTipInfo;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import shop.view.BuySingleGoodsView;
   
   public class BuyItemButton extends TextButton
   {
       
      
      protected var _itemInfo:ItemTemplateInfo;
      
      protected var _shopItemInfo:ShopItemInfo;
      
      private var _needDispatchEvent:Boolean;
      
      private var _storeTab:int;
      
      private var _itemID:int;
      
      private var _viewLayerType:int;
      
      public function BuyItemButton(){super();}
      
      public function setup(param1:int, param2:int, param3:Boolean = false) : void{}
      
      protected function initliziItemTemplate() : void{}
      
      override protected function __onMouseClick(param1:MouseEvent) : void{}
      
      public function set viewLayerType(param1:int) : void{}
      
      private function removeFromStageHandler(param1:Event) : void{}
      
      private function __shortCutBuyHandler(param1:ShortcutBuyEvent) : void{}
      
      override public function dispose() : void{}
   }
}
