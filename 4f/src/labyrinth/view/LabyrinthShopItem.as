package labyrinth.view
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.bagStore.BagStore;
   import ddt.command.QuickBuyFrame;
   import ddt.data.goods.ShopItemInfo;
   import ddt.events.ShortcutBuyEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddtBuried.BuriedManager;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import labyrinth.LabyrinthControl;
   import labyrinth.LabyrinthManager;
   import shop.view.ShopGoodItem;
   
   public class LabyrinthShopItem extends ShopGoodItem
   {
       
      
      protected var _explanation:FilterFrameText;
      
      private var _frame:BuyFrame;
      
      public function LabyrinthShopItem(){super();}
      
      override protected function initContent() : void{}
      
      override protected function initPrice() : void{}
      
      override public function set shopItemInfo(param1:ShopItemInfo) : void{}
      
      protected function updateCircumscribe() : void{}
      
      override protected function __payPanelClick(param1:MouseEvent) : void{}
      
      private function removeFromStageHandler(param1:Event) : void{}
      
      private function __shortCutBuyHandler(param1:ShortcutBuyEvent) : void{}
      
      protected function __onframeEvent(param1:FrameEvent) : void{}
      
      private function buy() : void{}
   }
}
