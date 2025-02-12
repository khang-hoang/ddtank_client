package shop.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ISelectable;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import ddt.manager.LanguageMgr;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class ShopBugleViewItem extends Sprite implements ISelectable, Disposeable
   {
       
      
      private var _selected:Boolean;
      
      private var _bg:ScaleFrameImage;
      
      private var _lightEffect:Scale9CornerImage;
      
      private var _cell:ShopItemCell;
      
      private var _count:String;
      
      private var _money:int;
      
      private var _countTxt:FilterFrameText;
      
      private var _moneyTxt:FilterFrameText;
      
      private var _type:int;
      
      public function ShopBugleViewItem(param1:int = 0, param2:String = "", param3:int = 0, param4:ShopItemCell = null)
      {
         super();
         buttonMode = true;
         _type = param1;
         _count = param2;
         _money = param3;
         _cell = param4;
         _bg = ComponentFactory.Instance.creatComponentByStylename("ddtshop.BugleViewBg");
         _lightEffect = ComponentFactory.Instance.creatComponentByStylename("asset.ddtshop.BugleSelectEffect");
         _lightEffect.visible = false;
         _countTxt = ComponentFactory.Instance.creatComponentByStylename("ddtshop.BugleViewCountText");
         _moneyTxt = ComponentFactory.Instance.creatComponentByStylename("ddtshop.BugleViewMoneyText");
         var _loc5_:Boolean = false;
         _moneyTxt.mouseEnabled = _loc5_;
         _countTxt.mouseEnabled = _loc5_;
         _countTxt.text = _count;
         _moneyTxt.text = String(_money) + LanguageMgr.GetTranslation("money");
         _bg.setFrame(1);
         addChild(_bg);
         addChild(_cell);
         addChild(_lightEffect);
         addChild(_countTxt);
         addChild(_moneyTxt);
      }
      
      public function set autoSelect(param1:Boolean) : void
      {
      }
      
      public function get selected() : Boolean
      {
         return _selected;
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(_selected == param1)
         {
            return;
         }
         _selected = param1;
         _lightEffect.visible = _selected;
      }
      
      public function asDisplayObject() : DisplayObject
      {
         return this as DisplayObject;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get count() : String
      {
         return _count;
      }
      
      public function get money() : int
      {
         return _money;
      }
      
      public function dispose() : void
      {
         _bg.dispose();
         _bg = null;
         _cell.dispose();
         _cell = null;
         _countTxt.dispose();
         _countTxt = null;
         _moneyTxt.dispose();
         _moneyTxt = null;
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
