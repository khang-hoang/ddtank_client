package shop.view
{
   import bagAndInfo.cell.CellFactory;
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ShopItemInfo;
   import ddt.manager.ChatManager;
   import ddt.manager.KeyboardShortcutsManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.ShopManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.CheckMoneyUtils;
   import ddt.utils.PositionUtils;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class NewShopBugleView extends Sprite implements Disposeable
   {
      
      public static const BUGLE:uint = 3;
      
      public static const GOLD:uint = 0;
      
      public static const TEXP:uint = 6;
      
      public static const DONT_BUY_ANYTHING:String = "dontBuyAnything";
       
      
      protected var _frame:BaseAlerFrame;
      
      protected var _info:ShopItemInfo;
      
      protected var _itemContainer:HBox;
      
      protected var _itemGroup:SelectedButtonGroup;
      
      protected var _type:int;
      
      protected var _buyFrom:int;
      
      private var _text1:FilterFrameText;
      
      private var _text2:FilterFrameText;
      
      private var _textBg:Image;
      
      private var _selectedBandBtn:SelectedCheckButton;
      
      protected var _isBand:Boolean;
      
      private var _selectedBtn:SelectedCheckButton;
      
      private var _moneyTxt:FilterFrameText;
      
      private var _bandMoneyTxt:FilterFrameText;
      
      public function NewShopBugleView(param1:int){super();}
      
      public function dispose() : void{}
      
      public function get type() : int{return 0;}
      
      public function get info() : ShopItemInfo{return null;}
      
      protected function __onKeyDownd(param1:KeyboardEvent) : void{}
      
      private function __frameEventHandler(param1:FrameEvent) : void{}
      
      protected function onCheckComplete() : void{}
      
      protected function onCheckCancel() : void{}
      
      protected function addItem(param1:ShopItemInfo, param2:int) : void{}
      
      protected function __click(param1:MouseEvent) : void{}
      
      protected function addItems() : void{}
      
      private function clearAllItem() : void{}
      
      private function init() : void{}
      
      protected function selectedBandHander(param1:MouseEvent) : void{}
      
      protected function seletedHander(param1:MouseEvent) : void{}
      
      private function updateView() : void{}
   }
}
