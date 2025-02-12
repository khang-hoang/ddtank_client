package farm.view.compose.item
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.ItemManager;
   import farm.view.compose.event.SelectComposeItemEvent;
   import farm.view.compose.vo.FoodComposeListTemplateInfo;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class ComposeSelectItem extends Sprite implements Disposeable
   {
       
      
      private var _nameTxt:FilterFrameText;
      
      private var _bgImg:Bitmap;
      
      private var _id:int;
      
      public function ComposeSelectItem()
      {
         super();
         init();
         initEvents();
      }
      
      private function init() : void
      {
         _bgImg = ComponentFactory.Instance.creat("asset.farmHouse.selectComposeitemBg");
         _nameTxt = ComponentFactory.Instance.creatComponentByStylename("farmHouse.text.composeSelect");
         addChild(_nameTxt);
         addChildAt(_bgImg,0);
         _bgImg.alpha = 0;
         _bgImg.width = 80;
         _bgImg.y = -2;
         _bgImg.x = -2;
      }
      
      private function initEvents() : void
      {
         addEventListener("click",__click);
         addEventListener("mouseOver",__mouseOver);
         addEventListener("mouseOut",__mouseOut);
      }
      
      private function __mouseOver(param1:MouseEvent) : void
      {
         _bgImg.alpha = 1;
      }
      
      private function __mouseOut(param1:MouseEvent) : void
      {
         _bgImg.alpha = 0;
      }
      
      private function __click(param1:MouseEvent) : void
      {
         dispatchEvent(new SelectComposeItemEvent("itemclick",_id));
      }
      
      public function set info(param1:FoodComposeListTemplateInfo) : void
      {
         var _loc2_:ItemTemplateInfo = ItemManager.Instance.getTemplateById(param1.FoodID);
         if(_loc2_)
         {
            _nameTxt.text = _loc2_.Name;
            _id = param1.FoodID;
         }
      }
      
      public function dispose() : void
      {
         ObjectUtils.disposeObject(_bgImg);
         _bgImg = null;
         if(_nameTxt && _nameTxt.parent)
         {
            _nameTxt.parent.removeChild(_nameTxt);
            _nameTxt = null;
         }
         removeEventListener("click",__click);
         removeEventListener("mouseOver",__mouseOver);
         removeEventListener("mouseOut",__mouseOut);
      }
   }
}
