package AvatarCollection.view
{
   import AvatarCollection.data.AvatarCollectionItemVo;
   import bagAndInfo.cell.BagCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.command.QuickBuyFrame;
   import ddt.events.PkgEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.CheckMoneyUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class AvatarCollectionItemCell extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _itemCell:BagCell;
      
      private var _btn:SimpleBitmapButton;
      
      private var _buyBtn:SimpleBitmapButton;
      
      private var _data:AvatarCollectionItemVo;
      
      public function AvatarCollectionItemCell(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function buyClickHandler(param1:MouseEvent) : void{}
      
      private function onBuyConfirmResponse(param1:FrameEvent) : void{}
      
      protected function onCheckComplete() : void{}
      
      private function onBuyedGoods(param1:PkgEvent) : void{}
      
      private function overHandler(param1:MouseEvent) : void{}
      
      private function outHandler(param1:MouseEvent) : void{}
      
      private function clickHandler(param1:MouseEvent) : void{}
      
      private function __activeConfirm(param1:FrameEvent) : void{}
      
      private function sendActive() : void{}
      
      private function checkGoldEnough() : Boolean{return false;}
      
      private function _responseV(param1:FrameEvent) : void{}
      
      private function okFastPurchaseGold() : void{}
      
      public function refreshView(param1:AvatarCollectionItemVo) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
