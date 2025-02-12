package store.fineStore.view.pageBringUp.evolution
{
   import bagAndInfo.bag.RichesButton;
   import bagAndInfo.cell.BagCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.events.CellEvent;
   import ddt.events.PlayerPropertyEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Shape;
   import flash.display.Sprite;
   import store.StoreBagBgWHPoint;
   import store.data.StoreModel;
   import store.view.storeBag.StoreBagCell;
   import store.view.storeBag.StoreBagController;
   import store.view.storeBag.StoreBagListView;
   import store.view.storeBag.StoreBagbgbmp;
   import store.view.storeBag.StoreSingleBagListView;
   
   public class FineEvolutionBagView extends Sprite implements Disposeable
   {
       
      
      private var _bitmapBg:StoreBagbgbmp;
      
      private var bagBg:ScaleFrameImage;
      
      private var _equipmentTitleText:FilterFrameText;
      
      private var _itemTitleText:FilterFrameText;
      
      private var _equipmentTipText:FilterFrameText;
      
      private var _itemTipText:FilterFrameText;
      
      private var _equipmentsColumnBg:Image;
      
      private var _itemsColumnBg:Image;
      
      public var msg_txt:ScaleFrameImage;
      
      private var goldTxt:FilterFrameText;
      
      private var moneyTxt:FilterFrameText;
      
      private var giftTxt:FilterFrameText;
      
      private var _goldButton:RichesButton;
      
      private var _giftButton:RichesButton;
      
      private var _moneyButton:RichesButton;
      
      private var _bgPoint:StoreBagBgWHPoint;
      
      private var _bgShape:Shape;
      
      private var _equipmentView:StoreBagListView;
      
      private var _propView:StoreBagListView;
      
      private var _transerViewUp:StoreSingleBagListView;
      
      private var _transerViewDown:StoreSingleBagListView;
      
      private var _controller:StoreBagController;
      
      private var _model:StoreModel;
      
      public function FineEvolutionBagView(){super();}
      
      public function setup(param1:StoreBagController) : void{}
      
      private function initEvents() : void{}
      
      private function __cellDoubleClick(param1:CellEvent) : void{}
      
      private function __cellClick(param1:CellEvent) : void{}
      
      private function removeEvent() : void{}
      
      private function init() : void{}
      
      private function updateMoney() : void{}
      
      public function __propertyChange(param1:PlayerPropertyEvent) : void{}
      
      public function setData(param1:StoreModel) : void{}
      
      private function changeToDoubleBagView() : void{}
      
      private function changeToSingleBagView() : void{}
      
      private function showStoreBagViewText(param1:String, param2:String, param3:Boolean = true) : void{}
      
      public function dispose() : void{}
   }
}
