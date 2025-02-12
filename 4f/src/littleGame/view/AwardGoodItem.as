package littleGame.view
{
   import bagAndInfo.cell.CellFactory;
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.image.MovieImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.command.ScoreExchangeFrame;
   import ddt.data.goods.ShopItemInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import shop.view.ShopGoodItem;
   import shop.view.ShopItemCell;
   
   [Event(name="purchase",type="ddt.events.ShopItemEvent")]
   [Event(name="collect",type="ddt.events.ShopItemEvent")]
   [Event(name="giving",type="ddt.events.ShopItemEvent")]
   public class AwardGoodItem extends ShopGoodItem
   {
      
      private static const AwardItemCell_Size:int = 61;
       
      
      private var _scoreTitleField:FilterFrameText;
      
      private var _scoreField:FilterFrameText;
      
      private var _exchangeBtn:SimpleBitmapButton;
      
      private var _exchangeTxt:FilterFrameText;
      
      private var _awardItem:MovieImage;
      
      public function AwardGoodItem(){super();}
      
      override public function dispose() : void{}
      
      override protected function initContent() : void{}
      
      override protected function creatItemCell() : ShopItemCell{return null;}
      
      override protected function addEvent() : void{}
      
      override protected function __itemMouseOver(param1:MouseEvent) : void{}
      
      override protected function __itemMouseOut(param1:MouseEvent) : void{}
      
      override protected function removeEvent() : void{}
      
      override protected function __payPanelClick(param1:MouseEvent) : void{}
      
      override public function set shopItemInfo(param1:ShopItemInfo) : void{}
   }
}
