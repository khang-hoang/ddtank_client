package halloween.view
{
   import bagAndInfo.cell.BagCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ItemManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import halloween.data.HalloweenModel;
   
   public class HalloweenListCell extends Sprite implements Disposeable
   {
       
      
      private var _info:HalloweenModel;
      
      private var _bg:Bitmap;
      
      private var _candy:Bitmap;
      
      private var _items:BagCell;
      
      private var _itemsName:FilterFrameText;
      
      private var _itemsPrice:FilterFrameText;
      
      private var _exchangeBtn:SimpleBitmapButton;
      
      public function HalloweenListCell(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      protected function __onExchangeClick(param1:MouseEvent) : void{}
      
      public function set info(param1:HalloweenModel) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
