package ddt.utils
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.ListPanel;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class HelperHelpBtnCreate implements Disposeable
   {
       
      
      public var helpBtnStyleName:String = "coreii.helpBtn";
      
      public var width:Number = 404;
      
      public var height:Number = 484;
      
      private var _scrollPanel:ListPanel;
      
      private var _content:Sprite;
      
      private var _helpBtn:SimpleBitmapButton;
      
      public function HelperHelpBtnCreate(){super();}
      
      public function create(param1:Sprite, param2:String, param3:* = null, param4:* = null, param5:String = "") : void{}
      
      public function dispose() : void{}
   }
}
