package store.godRefining.view
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.EquipType;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.events.CEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.utils.PositionUtils;
   import ddt.view.common.BuyItemButton;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import store.StoreCell;
   
   public class GodRefiningResetView extends Sprite implements Disposeable
   {
       
      
      private var _bg:MutipleImage;
      
      private var _cellBg:Bitmap;
      
      private var _titleBmp:Bitmap;
      
      private var _tipText:FilterFrameText;
      
      private var _cBuyluckyBtn:BuyItemButton;
      
      private var _levelText:FilterFrameText;
      
      private var _damageTitleTextArr:Vector.<FilterFrameText>;
      
      private var _damageContentTextArr:Vector.<FilterFrameText>;
      
      private var _startResetBtnArr:Vector.<BaseButton>;
      
      private var _items:Vector.<StoreCell>;
      
      public function GodRefiningResetView(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      public function updateView() : void{}
      
      private function getCurCellIndex(param1:ItemTemplateInfo) : int{return 0;}
      
      public function refreshData(param1:Dictionary) : void{}
      
      public function quitStartDrag(param1:CEvent) : void{}
      
      public function quitStopDrag(param1:CEvent) : void{}
      
      public function startShine(param1:int) : void{}
      
      public function stopShine() : void{}
      
      public function equipDoubleClickMove(param1:CEvent) : void{}
      
      public function propDoubleClickMove(param1:CEvent) : void{}
      
      private function __resetBtnHandler(param1:MouseEvent) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
