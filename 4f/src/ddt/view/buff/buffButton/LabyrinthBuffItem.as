package ddt.view.buff.buffButton
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.BuffInfo;
   import ddt.manager.LanguageMgr;
   import flash.display.Sprite;
   import game.view.propertyWaterBuff.PropertyWaterBuffIcon;
   
   public class LabyrinthBuffItem extends Sprite implements Disposeable
   {
       
      
      private var _iconList:Vector.<PropertyWaterBuffIcon>;
      
      private var _buffDesc:Vector.<FilterFrameText>;
      
      public function LabyrinthBuffItem(param1:BuffInfo){super();}
      
      private function initView(param1:BuffInfo) : void{}
      
      public function dispose() : void{}
   }
}
