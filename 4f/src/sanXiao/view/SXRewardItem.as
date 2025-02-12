package sanXiao.view
{
   import bagAndInfo.cell.BagCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.GameInSocketOut;
   import ddt.manager.ItemManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import sanXiao.SanXiaoManager;
   import sanXiao.model.SXRewardItemData;
   
   public class SXRewardItem extends Sprite implements Disposeable
   {
       
      
      private var _data:SXRewardItemData;
      
      private var _scoreNeededText:FilterFrameText;
      
      private var _priseItem:BagCell;
      
      private var _btnGainPrise:SimpleBitmapButton;
      
      private var _gainedBmp:Bitmap;
      
      public function SXRewardItem(){super();}
      
      private function init() : void{}
      
      protected function onGainPriseClick(param1:MouseEvent) : void{}
      
      public function update(param1:Object) : void{}
      
      override public function get height() : Number{return 0;}
      
      public function dispose() : void{}
   }
}
