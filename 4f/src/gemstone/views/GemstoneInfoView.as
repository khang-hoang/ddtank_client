package gemstone.views
{
   import com.pickgliss.loader.BaseLoader;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import flash.display.Bitmap;
   import gemstone.GemstoneManager;
   import gemstone.info.GemstoneInfo;
   import gemstone.info.GemstoneStaticInfo;
   import gemstone.items.FigSoulItem;
   import gemstone.items.Item;
   
   public class GemstoneInfoView extends Frame
   {
       
      
      private var _stoneItemList:Vector.<Item>;
      
      private var _kind:FilterFrameText;
      
      private var _effect:FilterFrameText;
      
      private var _titleBg1:Bitmap;
      
      private var _titleBg2:Bitmap;
      
      private var _effDesc:FilterFrameText;
      
      private var _zhanhunList:VBox;
      
      private var _loader:BaseLoader;
      
      private var _gInfoList:Vector.<GemstoneStaticInfo>;
      
      private var _item1:FigSoulItem;
      
      private var _item2:FigSoulItem;
      
      private var _item3:FigSoulItem;
      
      private var _item4:FigSoulItem;
      
      private var _item5:FigSoulItem;
      
      private var _redUrl:String;
      
      private var _bulUrl:String;
      
      private var _greUrl:String;
      
      private var _yelUrl:String;
      
      private var _bg:Bitmap;
      
      private var _othersTxt:FilterFrameText;
      
      private var _road:FilterFrameText;
      
      private var _line:Bitmap;
      
      public function GemstoneInfoView(){super();}
      
      private function initView() : void{}
      
      public function initGemstone(param1:Vector.<GemstoneInfo>) : void{}
      
      override public function dispose() : void{}
   }
}
