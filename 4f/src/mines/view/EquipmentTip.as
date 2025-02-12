package mines.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.tip.BaseTip;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import mines.MinesManager;
   
   public class EquipmentTip extends BaseTip implements Disposeable
   {
       
      
      private var _line:Image;
      
      private var _nameTxt:FilterFrameText;
      
      private var _myPropertyTxt:FilterFrameText;
      
      private var _propertyListTxt:FilterFrameText;
      
      private var proBit:Bitmap;
      
      private var propertyList:Array;
      
      private var nameList:Array;
      
      private var type:int;
      
      private var level:int;
      
      public function EquipmentTip(){super();}
      
      override public function get tipData() : Object{return null;}
      
      override public function set tipData(param1:Object) : void{}
      
      public function updataTip() : void{}
   }
}
