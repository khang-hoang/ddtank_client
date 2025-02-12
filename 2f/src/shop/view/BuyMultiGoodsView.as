package shop.view
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ShopCarItemInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.LeavePageManager;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ShopManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import shop.manager.ShopBuyManager;
   
   public class BuyMultiGoodsView extends Sprite implements Disposeable
   {
       
      
      private var _bg:Image;
      
      private var _commodityNumberTip:FilterFrameText;
      
      private var _commodityNumberText:FilterFrameText;
      
      private var _commodityPricesText1:FilterFrameText;
      
      private var _commodityPricesText2:FilterFrameText;
      
      private var _commodityPricesText1Label:FilterFrameText;
      
      private var _commodityPricesText2Label:FilterFrameText;
      
      private var _needToPayTip:FilterFrameText;
      
      private var _purchaseConfirmationBtn:BaseButton;
      
      private var _buyArray:Vector.<ShopCarItemInfo>;
      
      private var _cartList:VBox;
      
      private var _cartScroll:ScrollPanel;
      
      private var _frame:Frame;
      
      private var _innerBg1:Image;
      
      private var _innerBg:Bitmap;
      
      private var _extraTextButton:BaseButton;
      
      public var dressing:Boolean = false;
      
      private var _commodityPricesText3Label:FilterFrameText;
      
      private var _commodityPricesText3:FilterFrameText;
      
      public function BuyMultiGoodsView(){super();}
      
      private function initView() : void{}
      
      public function show() : void{}
      
      protected function updateTxt() : void{}
      
      private function initEvents() : void{}
      
      private function removeEvents() : void{}
      
      private function __onResponse(param1:FrameEvent) : void{}
      
      private function __buyAvatar(param1:MouseEvent) : void{}
      
      public function setGoods(param1:Vector.<ShopCarItemInfo>) : void{}
      
      private function __conditionChange(param1:Event) : void{}
      
      private function __deleteItem(param1:Event) : void{}
      
      public function dispose() : void{}
   }
}
