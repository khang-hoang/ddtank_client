package demonChiYou.view
{
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import demonChiYou.DemonChiYouManager;
   import demonChiYou.DemonChiYouModel;
   import flash.display.Sprite;
   
   public class RewardResultItem extends Sprite implements Disposeable
   {
       
      
      private var _index:int;
      
      private var _data:Object;
      
      private var _mgr:DemonChiYouManager;
      
      private var _model:DemonChiYouModel;
      
      private var _rewardResultItemGoodNameTf:FilterFrameText;
      
      private var _rewardResultItemOwnerNameTf:FilterFrameText;
      
      private var _rewardResultItemTopPointTf:FilterFrameText;
      
      private var _rewardResultItemMyPointTf:FilterFrameText;
      
      private var _rewardResultItemCongratulateTf:FilterFrameText;
      
      private var _rewardResultItemHasBuy:Image;
      
      public function RewardResultItem(param1:int){super();}
      
      private function initView() : void{}
      
      public function dispose() : void{}
   }
}
