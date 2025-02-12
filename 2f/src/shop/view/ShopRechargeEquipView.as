package shop.view
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.data.goods.ItemPrice;
   import ddt.data.goods.ShopCarItemInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.LeavePageManager;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ShopManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class ShopRechargeEquipView extends Sprite implements Disposeable
   {
       
      
      private var price:ItemPrice;
      
      private var _bg:Image;
      
      private var _frame:BaseAlerFrame;
      
      private var _chargeBtn:TextButton;
      
      private var _itemContainer:VBox;
      
      private var _scrollPanel:ScrollPanel;
      
      private var _equipList:Array;
      
      private var _costMoneyTxt:FilterFrameText;
      
      private var _costGiftTxt:FilterFrameText;
      
      private var _playerMoneyTxt:FilterFrameText;
      
      private var _playerGiftTxt:FilterFrameText;
      
      private var _currentCountTxt:FilterFrameText;
      
      private var _affirmContinuBt:BaseButton;
      
      private var _needToPayPanelBg:Image;
      
      private var _haveOwnPanelBg:Image;
      
      private var _needToPayText:FilterFrameText;
      
      private var _haveOwnText:FilterFrameText;
      
      private var _leftTicketText:FilterFrameText;
      
      private var _rightTicketText:FilterFrameText;
      
      private var _leftGiftText:FilterFrameText;
      
      private var _rightGiftText:FilterFrameText;
      
      private var _amountOfItemTipText:FilterFrameText;
      
      private var _isBandList:Vector.<ShopRechargeEquipViewItem>;
      
      private var _playerOrderTxt:FilterFrameText;
      
      private var _costOrderTxt:FilterFrameText;
      
      public function ShopRechargeEquipView(){super();}
      
      private function init() : void{}
      
      private function __frameEventHandler(param1:FrameEvent) : void{}
      
      private function _clickContinuBt(param1:MouseEvent) : void{}
      
      private function __onChargeClick(param1:Event) : void{}
      
      private function payAll() : void{}
      
      private function setList() : void{}
      
      private function setIsBandList(param1:int, param2:int) : void{}
      
      private function __onItemDelete(param1:Event) : void{}
      
      private function __onItemChange(param1:Event) : void{}
      
      private function get shopInfoListWithOutDelete() : Array{return null;}
      
      private function get shopInfoList() : Array{return null;}
      
      private function updateTxt() : void{}
      
      private function __onPlayerPropertyChange(param1:Event = null) : void{}
      
      private function updataTextColor() : void{}
      
      private function showAlert() : void{}
      
      public function dispose() : void{}
   }
}
