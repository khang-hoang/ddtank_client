package gradeBuy.view
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.events.CEvent;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class GradeBuyItem extends Sprite implements Disposeable
   {
      
      public static const BUY:String = "gb_buy";
       
      
      private var _bg:Bitmap;
      
      private var _titleTxt:FilterFrameText;
      
      private var _bagCell:BagCell;
      
      private var _origiPriceTxt:FilterFrameText;
      
      private var _curPriceTxt:FilterFrameText;
      
      private var _crossBitmap:Bitmap;
      
      private var _moneyIcon:Bitmap;
      
      private var _buyBtn:SimpleBitmapButton;
      
      private var _boughtTxt:FilterFrameText;
      
      private var _typeInfo:ItemTemplateInfo;
      
      public function GradeBuyItem(param1:int){super();}
      
      protected function onBuyClick(param1:MouseEvent) : void{}
      
      public function update(param1:ItemTemplateInfo, param2:ItemTemplateInfo, param3:Boolean) : void{}
      
      public function dispose() : void{}
   }
}
