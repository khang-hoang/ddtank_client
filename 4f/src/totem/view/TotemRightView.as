package totem.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.PlayerPropertyEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerConfigManager;
   import dragonBoat.DragonBoatManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import totem.TotemManager;
   import totem.data.TotemDataVo;
   
   public class TotemRightView extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _lvTxt:FilterFrameText;
      
      private var _titleTxt1:FilterFrameText;
      
      private var _honorTxt1:TotemRightViewIconTxtCell;
      
      private var _expTxt1:TotemRightViewIconTxtCell;
      
      private var _titleTxt2:FilterFrameText;
      
      private var _honorTxt2:TotemRightViewIconTxtCell;
      
      private var _expTxt2:TotemRightViewIconTxtCell;
      
      private var _titleTxt3:FilterFrameText;
      
      private var _propertyList:Vector.<TotemRightViewTxtTxtCell>;
      
      private var _tipTxt:FilterFrameText;
      
      private var _honorUpIcon:HonorUpIcon;
      
      private var _nextInfo:TotemDataVo;
      
      private var _totemRightViewIconTxtDragonBoatCell:TotemRightViewIconTxtDragonBoatCell;
      
      private var _totemSignTxtCell:TotemSignTxtCell;
      
      public function TotemRightView(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      public function refreshView() : void{}
      
      private function refreshHonorTxt() : void{}
      
      private function refreshGPTxt() : void{}
      
      private function propertyChangeHandler(param1:PlayerPropertyEvent) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
