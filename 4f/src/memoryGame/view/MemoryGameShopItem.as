package memoryGame.view
{
   import bagAndInfo.cell.BagCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import memoryGame.MemoryGameManager;
   import memoryGame.data.MemoryGameGoodsInfo;
   
   public class MemoryGameShopItem extends Sprite implements Disposeable
   {
       
      
      private var _scoreText:FilterFrameText;
      
      private var _cell:BagCell;
      
      private var _info:MemoryGameGoodsInfo;
      
      private var _gainGoodsBtn:SimpleBitmapButton;
      
      private var _get:Bitmap;
      
      public function MemoryGameShopItem(param1:MemoryGameGoodsInfo){super();}
      
      private function init() : void{}
      
      public function updateState() : void{}
      
      private function __onClick(param1:MouseEvent) : void{}
      
      override public function get height() : Number{return 0;}
      
      public function dispose() : void{}
   }
}
