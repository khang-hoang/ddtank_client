package gypsyShop.ui
{
   import AvatarCollection.AvatarCollectionManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import gypsyShop.ctrl.GypsyShopManager;
   import gypsyShop.model.GypsyItemData;
   import shop.view.ShopItemCell;
   
   public class GypsyItemCell extends Sprite implements Disposeable
   {
       
      
      private var _id:int;
      
      private var _bg:Bitmap;
      
      private var _bagCell:ShopItemCell;
      
      private var _nameTxt:FilterFrameText;
      
      private var _priceTxt:FilterFrameText;
      
      private var _priceUnitIcon:ScaleFrameImage;
      
      private var _buyBtn:SimpleBitmapButton;
      
      private var _collectText:FilterFrameText;
      
      private var _collectQualityText:FilterFrameText;
      
      private var _clctActivatedText:FilterFrameText;
      
      public function GypsyItemCell()
      {
         super();
         _bg = ComponentFactory.Instance.creatBitmap("gypsy.frame.cell.bg");
         addChild(_bg);
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.beginFill(16777215,0);
         _loc1_.graphics.drawRect(0,0,60,60);
         _loc1_.graphics.endFill();
         _bagCell = new ShopItemCell(_loc1_);
         PositionUtils.setPos(_bagCell,{
            "x":4,
            "y":4
         });
         addChild(_bagCell);
         _nameTxt = ComponentFactory.Instance.creat("gypsy.textfield.itemname");
         _nameTxt.text = "";
         addChild(_nameTxt);
         _priceTxt = ComponentFactory.Instance.creat("gypsy.textfield.price");
         _priceTxt.text = "";
         addChild(_priceTxt);
         _priceUnitIcon = ComponentFactory.Instance.creat("gypsy.closeBtn.unit.icon");
         _priceUnitIcon.setFrame(2);
         addChild(_priceUnitIcon);
         _collectText = UICreatShortcut.creatTextAndAdd("gypsy.textfield.collect",LanguageMgr.GetTranslation("ddt.gypsy.collect"),this);
         _collectText.visible = false;
         _clctActivatedText = UICreatShortcut.creatTextAndAdd("gypsy.textfield.collectActivate",LanguageMgr.GetTranslation("ddt.gypsy.activated"),this);
         _clctActivatedText.visible = false;
         _collectQualityText = UICreatShortcut.creatTextAndAdd("gypsy.textfield.collectQuality",LanguageMgr.GetTranslation("ddt.gypsy.collectQuality"),this);
         _collectQualityText.visible = false;
         _buyBtn = ComponentFactory.Instance.creat("gypsy.BuyBtn");
         _buyBtn.enable = true;
         addChild(_buyBtn);
         _buyBtn.addEventListener("click",onClick);
      }
      
      protected function onClick(param1:MouseEvent) : void
      {
         GypsyShopManager.getInstance().itemBuyBtnClicked(id);
      }
      
      public function clear() : void
      {
         _id = -1;
         _bagCell.info = null;
         _nameTxt.text = "";
         _priceTxt.text = "";
         _buyBtn.enable = false;
      }
      
      public function updateCell(param1:GypsyItemData) : void
      {
         _id = param1.id;
         _bagCell.info = ItemManager.Instance.getTemplateById(param1.infoID);
         if(_bagCell.info != null)
         {
            _nameTxt.text = _bagCell.info.Name;
            if(AvatarCollectionManager.instance.isCollectionGoodsByTemplateID(param1.infoID))
            {
               if(GypsyShopManager.getInstance().isAvatarActivated(param1.infoID))
               {
                  _clctActivatedText.text = LanguageMgr.GetTranslation("ddt.gypsy.activated");
                  _clctActivatedText.setFrame(1);
               }
               else
               {
                  _clctActivatedText.text = LanguageMgr.GetTranslation("ddt.gypsy.notActivate");
                  _clctActivatedText.setFrame(2);
               }
               _clctActivatedText.visible = true;
               _collectText.visible = true;
               _collectQualityText.visible = false;
            }
            else
            {
               if(param1.quality > 0 && !AvatarCollectionManager.instance.isCollectionGoodsByTemplateID(param1.infoID))
               {
                  _collectQualityText.visible = true;
                  _collectText.visible = false;
               }
               else
               {
                  _collectText.visible = false;
                  _collectQualityText.visible = false;
               }
               _clctActivatedText.visible = false;
            }
         }
         _priceUnitIcon.setFrame(param1.unit);
         _priceTxt.text = param1.price.toString();
         _buyBtn.enable = param1.canBuy == 0?false:true;
      }
      
      public function updateBuyButtonState(param1:int) : void
      {
         if(!int(param1))
         {
            _buyBtn.enable = false;
         }
         else
         {
            _buyBtn.enable = true;
         }
      }
      
      public function dispose() : void
      {
         _id = -1;
         _buyBtn.removeEventListener("click",onClick);
         ObjectUtils.disposeAllChildren(this);
      }
      
      public function get id() : int
      {
         return _id;
      }
   }
}
