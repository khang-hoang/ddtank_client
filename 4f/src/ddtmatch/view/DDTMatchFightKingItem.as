package ddtmatch.view
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class DDTMatchFightKingItem extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _itemTitleTxt:FilterFrameText;
      
      private var _hBox:HBox;
      
      public function DDTMatchFightKingItem(param1:int, param2:Array){super();}
      
      public function dispose() : void{}
   }
}
