package yyvip.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import yyvip.YYVipControl;
   
   public class YYVipLevelAwardCell extends Sprite implements Disposeable
   {
       
      
      private var _icon:Bitmap;
      
      private var _txt:FilterFrameText;
      
      private var _itemList:Vector.<YYVipLevelAwardItemCell>;
      
      public function YYVipLevelAwardCell(param1:int){super();}
      
      public function dispose() : void{}
   }
}
