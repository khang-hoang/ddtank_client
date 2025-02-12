package mysteriousRoullete.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.container.SimpleTileList;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ShopItemInfo;
   import ddt.manager.ShopManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import mysteriousRoullete.MysteriousManager;
   
   public class MysteriousShopView extends Sprite implements Disposeable
   {
      
      private static const NUMBER:int = 2;
      
      private static const LENGTH:int = 8;
       
      
      private var _shopTitle:Bitmap;
      
      private var _freeBG:Bitmap;
      
      private var _discountBG:Bitmap;
      
      private var _freeCount:FilterFrameText;
      
      private var _discountCount:FilterFrameText;
      
      private var _freePanel:ScrollPanel;
      
      private var _discontPanel:ScrollPanel;
      
      private var _freeItemList:SimpleTileList;
      
      private var _freeItemArr:Array;
      
      private var _discountItemList:SimpleTileList;
      
      private var _discountItemArr:Array;
      
      public function MysteriousShopView(){super();}
      
      public function initView() : void{}
      
      private function initData() : void{}
      
      public function setTimes() : void{}
      
      public function dispose() : void{}
   }
}
