package ddt.view.tips
{
   import cardSystem.CardManager;
   import cardSystem.data.SetsInfo;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.tip.BaseTip;
   import com.pickgliss.ui.tip.ITip;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.data.goods.QualityType;
   import ddt.data.goods.ShopItemInfo;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   
   public class CardBoxTipPanel extends BaseTip implements ITip, Disposeable
   {
      
      public static const THISWIDTH:int = 300;
       
      
      private var _cardName:FilterFrameText;
      
      private var _cardTypeBit:Bitmap;
      
      private var _cardType:FilterFrameText;
      
      private var _cardSetsBit:Bitmap;
      
      private var _cardSets:FilterFrameText;
      
      private var _cardDescript:FilterFrameText;
      
      private var _bg:ScaleBitmapImage;
      
      private var _band:ScaleFrameImage;
      
      private var _rule:ScaleBitmapImage;
      
      private var _validity:FilterFrameText;
      
      private var _templateInfo:ItemTemplateInfo;
      
      private var isShowed:Boolean = false;
      
      public function CardBoxTipPanel(){super();}
      
      override protected function init() : void{}
      
      override protected function addChildren() : void{}
      
      override public function get tipData() : Object{return null;}
      
      override public function set tipData(param1:Object) : void{}
      
      private function showTip() : void{}
      
      private function upBackground() : void{}
      
      private function updateWH() : void{}
      
      override public function dispose() : void{}
   }
}
