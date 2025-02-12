package mines.view
{
   import bagAndInfo.cell.BagCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import ddt.manager.ItemManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import flash.events.MouseEvent;
   import mines.analyzer.ShopExchangeInfo;
   
   public class MinesExchangeCell extends MinesBuyCell
   {
       
      
      private var _infoExchange:ShopExchangeInfo;
      
      public function MinesExchangeCell()
      {
         super();
      }
      
      public function get infoExchange() : ShopExchangeInfo
      {
         return _infoExchange;
      }
      
      public function set infoExchange(param1:ShopExchangeInfo) : void
      {
         _infoExchange = param1;
         _bagCell.info = ItemManager.Instance.getTemplateById(_infoExchange.templateID);
         _bagCell.setCount(_infoExchange.limitedCount);
      }
      
      override protected function initView() : void
      {
         _bagCell = new BagCell(0,null,true,ComponentFactory.Instance.creatBitmap("asset.mines.shopView.cellBg"));
         var _loc1_:int = 71;
         _bagCell.height = _loc1_;
         _bagCell.width = _loc1_;
         addChild(_bagCell);
         _buyBtn = ComponentFactory.Instance.creatComponentByStylename("mines.cell.exchangeBtn");
         addChild(_buyBtn);
         _buyBtn.visible = false;
      }
      
      override protected function __exchangeHandler(param1:MouseEvent) : void
      {
         SoundManager.instance.playButtonSound();
         if(PlayerManager.Instance.Self.bagLocked)
         {
            BaglockedManager.Instance.show();
            return;
         }
         var _loc2_:MinesExchangeFrame = ComponentFactory.Instance.creatComponentByStylename("mines.cell.exchangeFrame");
         _loc2_.setType(2);
         _loc2_.setData(_infoExchange.templateID,_infoExchange.id,_infoExchange.price);
         LayerManager.Instance.addToLayer(_loc2_,3,true,1);
      }
   }
}
