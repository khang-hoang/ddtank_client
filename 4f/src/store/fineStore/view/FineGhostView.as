package store.fineStore.view
{
   import bagAndInfo.cell.BagCell;
   import baglocked.BaglockedManager;
   import com.greensock.TweenMax;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.events.BagEvent;
   import ddt.events.CEvent;
   import ddt.events.CellEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.HelpFrameUtils;
   import ddt.utils.PositionUtils;
   import ddt.view.common.BuyItemButton;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import road7th.utils.MathUtils;
   import store.StoreCell;
   import store.StoreController;
   import store.StoreDragInArea;
   import store.data.StoreModel;
   import store.equipGhost.EquipGhostManager;
   import store.equipGhost.data.EquipGhostData;
   import store.events.StoreDargEvent;
   import store.view.StoneCellFrame;
   import store.view.storeBag.StoreBagCell;
   import store.view.storeBag.StoreBagController;
   import store.view.storeBag.StoreBagView;
   
   public final class FineGhostView extends Sprite implements Disposeable
   {
       
      
      private var _area:StoreDragInArea;
      
      private var _items:Array;
      
      private var _luckyStoneCell:StoneCellFrame;
      
      private var _ghostStoneCell:StoneCellFrame;
      
      private var _equipmentCell:StoneCellFrame;
      
      private var _ghostBtn:SimpleBitmapButton;
      
      private var _ghostHelpBtn:BaseButton;
      
      private var _cBuyluckyBtn:BuyItemButton;
      
      private var _buyStoneBtn:BuyItemButton;
      
      private var _ratioTxt:FilterFrameText;
      
      private var _continuesBtn:SelectedCheckButton;
      
      private var _controller:StoreBagController;
      
      private var _view:DisplayObject;
      
      private var _moveSprite:Sprite;
      
      private var _successBit:Bitmap;
      
      private var _failBit:Bitmap;
      
      public function FineGhostView(param1:StoreController){super();}
      
      private function initEvent() : void{}
      
      protected function __cellDoubleClick(param1:CellEvent) : void{}
      
      private function removeEvent() : void{}
      
      private function startShine(param1:StoreDargEvent) : void{}
      
      private function stopShine(param1:StoreDargEvent) : void{}
      
      private function initView() : void{}
      
      public function dragDrop(param1:CellEvent) : void{}
      
      public function refreshData(param1:BagEvent) : void{}
      
      public function updateData(param1:CEvent = null) : void{}
      
      private function equipGhost(param1:MouseEvent) : void{}
      
      private function checkMaterial() : Boolean{return false;}
      
      public function show() : void{}
      
      public function dispose() : void{}
      
      private function onEquipGhostResult(param1:CEvent) : void{}
      
      private function showResultEffect(param1:Boolean = true) : void{}
      
      private function continueGhost(param1:Boolean) : void{}
      
      private function onEquipGhostRatio(param1:CEvent) : void{}
      
      private function onEquipGhostState(param1:CEvent) : void{}
   }
}
