package ddt.view.tips
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.tip.BaseTip;
   import ddt.data.store.FineSuitVo;
   import ddt.manager.FineSuitManager;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   
   public class FineSuitTipsSimple extends BaseTip
   {
       
      
      private var _icon:ScaleFrameImage;
      
      private var _typeText:FilterFrameText;
      
      private var _typeNameArr:Array;
      
      private var _title:FilterFrameText;
      
      private var _defenceTxt:FilterFrameText;
      
      private var _luckTxt:FilterFrameText;
      
      private var _magicDefTxt:FilterFrameText;
      
      private var _armorTxt:FilterFrameText;
      
      private var _agilityTxt:FilterFrameText;
      
      private var _healthTxt:FilterFrameText;
      
      private var _detail:FilterFrameText;
      
      public function FineSuitTipsSimple(){super();}
      
      override protected function init() : void{}
      
      override public function set tipData(param1:Object) : void{}
   }
}
