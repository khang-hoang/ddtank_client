package bagAndInfo.ddtKingGrade
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.tip.BaseTip;
   import com.pickgliss.ui.tip.ITip;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   
   public class DDTKingGradeTips extends BaseTip implements Disposeable, ITip
   {
       
      
      private var _line:Image;
      
      private var _currentText:FilterFrameText;
      
      private var _nextText:FilterFrameText;
      
      private var _needText:FilterFrameText;
      
      private var _currentValue:FilterFrameText;
      
      private var _nextValue:FilterFrameText;
      
      private var _needValue:FilterFrameText;
      
      private var _maxLevelText:FilterFrameText;
      
      private var _bg:ScaleBitmapImage;
      
      public function DDTKingGradeTips(){super();}
      
      override protected function init() : void{}
      
      override public function set tipData(param1:Object) : void{}
      
      private function updateView() : void{}
      
      override public function get tipData() : Object{return null;}
      
      override public function dispose() : void{}
   }
}
