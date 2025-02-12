package happyLittleGame.bombshellGame.item
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import uiModeManager.bombUI.model.HappyMiniGameActiveInfo;
   
   public class HappyMiniDayNewItem extends Sprite implements Disposeable
   {
       
      
      private var _icon:Bitmap;
      
      private var _regionTxt:FilterFrameText;
      
      private var _nameTxt:FilterFrameText;
      
      private var _titleScore:FilterFrameText;
      
      private var _score:FilterFrameText;
      
      private var _titleRank:FilterFrameText;
      
      private var _rank:FilterFrameText;
      
      private var _days:FilterFrameText;
      
      private var _info:HappyMiniGameActiveInfo;
      
      public function HappyMiniDayNewItem(){super();}
      
      private function initView() : void{}
      
      public function set Info(param1:HappyMiniGameActiveInfo) : void{}
      
      private function setIcon(param1:int) : void{}
      
      public function get Info() : HappyMiniGameActiveInfo{return null;}
      
      public function clear() : void{}
      
      public function dispose() : void{}
   }
}
