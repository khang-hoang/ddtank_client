package farm.viewx.helper
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ShopItemInfo;
   import ddt.manager.ShopManager;
   import ddt.manager.SoundManager;
   import ddt.view.chat.ChatBasePanel;
   import farm.modelx.FieldVO;
   import farm.view.compose.event.SelectComposeItemEvent;
   import shop.view.ShopItemCell;
   
   public class SeedSelect extends ChatBasePanel implements Disposeable
   {
       
      
      private var _list:VBox;
      
      private var _bg:ScaleBitmapImage;
      
      private var _panel:ScrollPanel;
      
      private var _itemList:Vector.<HelperSetItem>;
      
      private var _filedVO:Vector.<FieldVO>;
      
      private var _result:ShopItemCell;
      
      private var _seedId:int;
      
      public function SeedSelect(){super();}
      
      override protected function init() : void{}
      
      public function set result(param1:ShopItemCell) : void{}
      
      public function get result() : ShopItemCell{return null;}
      
      private function setList() : void{}
      
      private function __itemClick(param1:SelectComposeItemEvent) : void{}
      
      public function dispose() : void{}
   }
}
