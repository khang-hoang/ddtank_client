package gypsyShop.ui
{
   import AvatarCollection.AvatarCollectionManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import gypsyShop.ctrl.GypsyShopManager;
   import gypsyShop.model.GypsyItemData;
   import shop.view.ShopItemCell;
   
   public class GypsyItemCell extends Sprite implements Disposeable
   {
       
      
      private var _id:int;
      
      private var _bg:Bitmap;
      
      private var _bagCell:ShopItemCell;
      
      private var _nameTxt:FilterFrameText;
      
      private var _priceTxt:FilterFrameText;
      
      private var _priceUnitIcon:ScaleFrameImage;
      
      private var _buyBtn:SimpleBitmapButton;
      
      private var _collectText:FilterFrameText;
      
      private var _collectQualityText:FilterFrameText;
      
      private var _clctActivatedText:FilterFrameText;
      
      public function GypsyItemCell(){super();}
      
      protected function onClick(param1:MouseEvent) : void{}
      
      public function clear() : void{}
      
      public function updateCell(param1:GypsyItemData) : void{}
      
      public function updateBuyButtonState(param1:int) : void{}
      
      public function dispose() : void{}
      
      public function get id() : int{return 0;}
   }
}
