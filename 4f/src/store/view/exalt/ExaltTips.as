package store.view.exalt
{
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.ItemManager;
   import ddt.view.tips.GoodTipInfo;
   import store.view.strength.LaterEquipmentView;
   import store.view.strength.StrengthTips;
   import store.view.strength.manager.ItemStrengthenGoodsInfoManager;
   import store.view.strength.vo.ItemStrengthenGoodsInfo;
   
   public class ExaltTips extends StrengthTips
   {
       
      
      public function ExaltTips(){super();}
      
      override protected function laterEquipment(param1:GoodTipInfo) : void{}
   }
}