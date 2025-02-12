package Indiana.item
{
   import Indiana.model.HistoryIndianaData;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import road7th.utils.DateUtils;
   
   public class IndianaHistoryItem extends Sprite implements Disposeable
   {
       
      
      private var _num_txt:GradientBitmapText;
      
      private var _goodName:FilterFrameText;
      
      private var _playName:FilterFrameText;
      
      private var _luckNumTitle:GradientBitmapText;
      
      private var _luckNum:FilterFrameText;
      
      private var _hasTimesTitle:FilterFrameText;
      
      private var _hasTimes:FilterFrameText;
      
      private var _getTime:FilterFrameText;
      
      private var _bg:Bitmap;
      
      private var _info:HistoryIndianaData;
      
      public function IndianaHistoryItem(){super();}
      
      private function initView() : void{}
      
      public function setInfo(param1:HistoryIndianaData) : void{}
      
      override public function get width() : Number{return 0;}
      
      public function dispose() : void{}
   }
}
