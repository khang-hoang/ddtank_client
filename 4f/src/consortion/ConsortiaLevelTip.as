package consortion
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.tip.BaseTip;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   
   public class ConsortiaLevelTip extends BaseTip
   {
       
      
      private var _tempData:Vector.<String>;
      
      private var _bg:ScaleBitmapImage;
      
      private var _explainText:FilterFrameText;
      
      private var _explainText2:FilterFrameText;
      
      private var _nextLevelText:FilterFrameText;
      
      private var _nextLevelText2:FilterFrameText;
      
      private var _requirementsText:FilterFrameText;
      
      private var _requirementsText2:FilterFrameText;
      
      private var _consumptionText:FilterFrameText;
      
      private var _consumptionText2:FilterFrameText;
      
      private var _explain:String;
      
      private var _nextLevel:String;
      
      private var _requirements:String;
      
      private var _consumption:String;
      
      public function ConsortiaLevelTip(){super();}
      
      override protected function init() : void{}
      
      override protected function addChildren() : void{}
      
      override public function get tipData() : Object{return null;}
      
      override public function set tipData(param1:Object) : void{}
      
      private function reset() : void{}
      
      private function drawBG(param1:int = 0) : void{}
      
      override public function dispose() : void{}
   }
}
