package magicStone.components
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.NumberSelecter;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.Price;
   import ddt.data.goods.ShopItemInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.CheckMoneyUtils;
   import ddt.utils.PositionUtils;
   import ddt.view.DoubleSelectedItem;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import magicStone.MagicStoneControl;
   
   public class MagicStoneBatFrame extends BaseAlerFrame
   {
       
      
      private var _text:FilterFrameText;
      
      private var _numberSelecter:NumberSelecter;
      
      private var _okBtn:TextButton;
      
      private var _cancelBtn:TextButton;
      
      private var _selectedItem:DoubleSelectedItem;
      
      private var _totalTipText:FilterFrameText;
      
      private var _totalText:FilterFrameText;
      
      private var _shopItemInfo:ShopItemInfo;
      
      public var type:int;
      
      public function MagicStoneBatFrame(){super();}
      
      public function init2(param1:int) : void{}
      
      private function initView() : void{}
      
      private function initEvents() : void{}
      
      protected function __selectedItemChange(param1:Event) : void{}
      
      public function updateTotalCost() : void{}
      
      protected function __okBtnClick(param1:MouseEvent) : void{}
      
      protected function onCheckComplete() : void{}
      
      protected function __cancelBtnClick(param1:MouseEvent) : void{}
      
      private function __seleterChange(param1:Event) : void{}
      
      private function __frameEventHandler(param1:FrameEvent) : void{}
      
      public function show() : void{}
      
      private function removeEvents() : void{}
      
      override public function dispose() : void{}
      
      public function set shopItemInfo(param1:ShopItemInfo) : void{}
      
      public function setNumMax(param1:int) : void{}
   }
}
