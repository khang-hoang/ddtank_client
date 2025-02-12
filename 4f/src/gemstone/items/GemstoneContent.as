package gemstone.items
{
   import com.greensock.TweenMax;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.geom.Point;
   import gemstone.GemstoneManager;
   import gemstone.info.GemstListInfo;
   import gemstone.info.GemstoneTipVO;
   
   public class GemstoneContent extends Component
   {
      
      public static var _radius:int = 100;
       
      
      public var angle:int;
      
      public var curExp:int;
      
      public var curTotalExp:int;
      
      public var level:int;
      
      public var info:GemstListInfo;
      
      private var _setupAngle:int = 120;
      
      private var _initAngle:int = 30;
      
      private var _bgBlue:MovieClip;
      
      private var _bgGolden:MovieClip;
      
      private var _upgradeLight:MovieClip;
      
      private var _content:Bitmap;
      
      private var _upGradeMc:MovieClip;
      
      private var txt:FilterFrameText;
      
      private var _onChangeBG:Function;
      
      public function GemstoneContent(param1:int, param2:Point){super();}
      
      public function changeBG(param1:Function) : void{}
      
      public function setBG() : void{}
      
      public function loadSikn(param1:String) : void{}
      
      public function upDataLevel() : void{}
      
      public function updataTip() : void{}
      
      public function selAlphe(param1:Number) : void{}
      
      override public function dispose() : void{}
   }
}
