package shop.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ISelectable;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class NewShopBugViewItem extends Sprite implements ISelectable, Disposeable
   {
       
      
      private var _bg:ScaleFrameImage;
      
      private var _lightEffect:Bitmap;
      
      private var _cell:ShopItemCell;
      
      private var _count:String;
      
      private var _money:int;
      
      private var _countTxt:FilterFrameText;
      
      private var _countBg:Image;
      
      private var _moneyTxt:FilterFrameText;
      
      private var _type:int;
      
      public function NewShopBugViewItem(param1:int = 0, param2:String = "", param3:int = 0, param4:ShopItemCell = null){super();}
      
      private function getSpecifiedString(param1:String) : String{return null;}
      
      public function get info() : ItemTemplateInfo{return null;}
      
      public function set autoSelect(param1:Boolean) : void{}
      
      public function get selected() : Boolean{return false;}
      
      public function set selected(param1:Boolean) : void{}
      
      public function asDisplayObject() : DisplayObject{return null;}
      
      public function get type() : int{return 0;}
      
      public function get count() : String{return null;}
      
      public function get money() : int{return 0;}
      
      public function dispose() : void{}
   }
}
