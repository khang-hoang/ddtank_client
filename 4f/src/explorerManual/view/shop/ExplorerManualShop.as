package explorerManual.view.shop
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ShopItemInfo;
   import ddt.events.PlayerPropertyEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.ShopManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import explorerManual.ExplorerManualController;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   
   public class ExplorerManualShop extends Frame
   {
      
      private static const MAXNUM:int = 4;
       
      
      private var _ctrl:ExplorerManualController;
      
      private var _bg:Bitmap;
      
      private var _titleIcon:Bitmap;
      
      private var _descTxt:FilterFrameText;
      
      private var _pageTxt:FilterFrameText;
      
      private var _explorerNum:FilterFrameText;
      
      private var _explorerPointIcon:Bitmap;
      
      private var _explorerPointValaue:FilterFrameText;
      
      private var _manualTxt:FilterFrameText;
      
      private var _goodsInfoList:Vector.<ShopItemInfo>;
      
      private var _shopCellList:Vector.<ManualShopCell>;
      
      private var _totlePage:int;
      
      private var _currentPage:int;
      
      private var _foreBtn:SimpleBitmapButton;
      
      private var _nextBtn:SimpleBitmapButton;
      
      private var _inputBg:Scale9CornerImage;
      
      private var _inputBg1:Scale9CornerImage;
      
      public function ExplorerManualShop(param1:ExplorerManualController){super();}
      
      public function show() : void{}
      
      private function initData() : void{}
      
      private function initEvent() : void{}
      
      private function _response(param1:FrameEvent) : void{}
      
      private function removeEvent() : void{}
      
      private function __propertyChangeHandler(param1:PlayerPropertyEvent) : void{}
      
      private function updateJampsCurrency() : void{}
      
      private function __changePageHandler(param1:MouseEvent) : void{}
      
      override protected function init() : void{}
      
      private function refreshView() : void{}
      
      override protected function addChildren() : void{}
      
      override public function dispose() : void{}
   }
}
