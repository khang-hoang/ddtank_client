package cardSystem.view.cardCollect
{
   import cardSystem.CardManager;
   import cardSystem.data.CardInfo;
   import cardSystem.data.SetsInfo;
   import cardSystem.data.SetsPropertyInfo;
   import cardSystem.elements.PreviewCard;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MovieImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.text.GradientText;
   import com.pickgliss.ui.text.TextArea;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   
   public class CollectPreview extends Sprite implements Disposeable
   {
      
      public static const PREVIEWCARD_ALL_LENGTH:int = 350;
      
      public static const PREVIEWCARD_WIDHT:int = 66;
       
      
      private var _bg:MovieImage;
      
      private var _setsName:GradientText;
      
      private var _stroyBG:MovieImage;
      
      private var _flower:Bitmap;
      
      private var _stroy:FilterFrameText;
      
      private var _itemInfo:SetsInfo;
      
      private var _previewCardVec:Vector.<PreviewCard>;
      
      private var _setsPropBG:Bitmap;
      
      private var _propExplain:GradientText;
      
      private var _propDescript:TextArea;
      
      public function CollectPreview(){super();}
      
      private function initView() : void{}
      
      public function set info(param1:SetsInfo) : void{}
      
      private function upView() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
