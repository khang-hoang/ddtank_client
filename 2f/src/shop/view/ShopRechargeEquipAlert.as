package shop.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class ShopRechargeEquipAlert extends Sprite
   {
       
      
      private var _girl:Bitmap;
      
      private var _description:FilterFrameText;
      
      private var _frame:BaseAlerFrame;
      
      public function ShopRechargeEquipAlert(){super();}
      
      private function __frameEventHandler(param1:FrameEvent) : void{}
      
      public function show() : void{}
      
      public function dispose() : void{}
   }
}
