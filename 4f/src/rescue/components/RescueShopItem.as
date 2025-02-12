package rescue.components
{
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import rescue.views.RescueQuickBuyFrame;
   
   public class RescueShopItem extends Sprite implements Disposeable
   {
       
      
      protected var _itemBg:ScaleFrameImage;
      
      protected var _itemCellBg:Image;
      
      protected var _dotLine:Image;
      
      protected var _payType:ScaleFrameImage;
      
      protected var _itemNameTxt:FilterFrameText;
      
      protected var _itemPriceTxt:FilterFrameText;
      
      private var _itemBmp:Bitmap;
      
      private var _buyBtn:SimpleBitmapButton;
      
      private var _tipTouch:Component;
      
      private var _index:int;
      
      private var _priceArr:Array;
      
      public function RescueShopItem(param1:int){super();}
      
      private function initView() : void{}
      
      private function initEvents() : void{}
      
      protected function __buyBtnClick(param1:MouseEvent) : void{}
      
      private function removeEvents() : void{}
      
      public function dispose() : void{}
   }
}
