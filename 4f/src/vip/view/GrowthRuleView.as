package vip.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import flash.display.Sprite;
   
   public class GrowthRuleView extends Sprite implements Disposeable
   {
       
      
      private var _bg1:Image;
      
      private var _bg2:Image;
      
      private var _descriptionItem1:Image;
      
      private var _descriptionItem2:Image;
      
      private var _descriptionItem3:Image;
      
      private var _descriptionTxt1:FilterFrameText;
      
      private var _descriptionTxt2:FilterFrameText;
      
      private var _descriptionTxt3:FilterFrameText;
      
      private var _ruleTxtBg:Image;
      
      private var _ruleTitleTxt:FilterFrameText;
      
      private var _ruleTxt:FilterFrameText;
      
      public function GrowthRuleView(){super();}
      
      private function initView() : void{}
      
      public function dispose() : void{}
   }
}
