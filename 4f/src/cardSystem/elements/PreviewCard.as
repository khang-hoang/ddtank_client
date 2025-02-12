package cardSystem.elements
{
   import cardSystem.CardTemplateInfoManager;
   import cardSystem.data.CardInfo;
   import cardSystem.data.CardTemplateInfo;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class PreviewCard extends Sprite implements Disposeable
   {
       
      
      private var _cardId:int;
      
      private var _cell:CardCell;
      
      private var _bg:Bitmap;
      
      private var _Goldbg:Bitmap;
      
      private var _Silverbg:Bitmap;
      
      private var _Coppebg:Bitmap;
      
      private var _prop:FilterFrameText;
      
      private var _cardInfo:CardInfo;
      
      private var _cardName:FilterFrameText;
      
      public function PreviewCard(){super();}
      
      public function get cardId() : int{return 0;}
      
      public function set cardId(param1:int) : void{}
      
      private function initView() : void{}
      
      public function set cardInfo(param1:CardInfo) : void{}
      
      override public function get width() : Number{return 0;}
      
      public function dispose() : void{}
   }
}
