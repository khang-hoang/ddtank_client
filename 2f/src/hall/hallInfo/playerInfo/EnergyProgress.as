package hall.hallInfo.playerInfo
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class EnergyProgress extends Component
   {
       
      
      private var _pBar:Bitmap;
      
      private var _energyProgressBarFrame:Bitmap;
      
      private var _energyProgressBar:Bitmap;
      
      private var _energyProgressBarBitmapData:BitmapData;
      
      private var _energyTxt:FilterFrameText;
      
      private var _rectangle:Rectangle;
      
      public function EnergyProgress(){super();}
      
      private function initView() : void{}
      
      public function showProgressBar(param1:int, param2:int) : void{}
      
      override public function dispose() : void{}
   }
}
