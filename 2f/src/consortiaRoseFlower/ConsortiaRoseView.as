package consortiaRoseFlower
{
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class ConsortiaRoseView extends Sprite
   {
       
      
      private var _resVec:Vector.<BitmapData>;
      
      private var _roseRow1Vec:Vector.<ConsortiaRose>;
      
      private var _roseRow2Vec:Vector.<ConsortiaRose>;
      
      private var _roseRow3Vec:Vector.<ConsortiaRose>;
      
      private var _row1StepPt:Vector.<Point>;
      
      private var _row2StepPt:Vector.<Point>;
      
      private var _row3StepPt:Vector.<Point>;
      
      private var _frameRate:Number;
      
      private var _totalFrames:Number;
      
      private var _row1Number:Number;
      
      private var _row2Number:Number;
      
      private var _row3Number:Number;
      
      private var _speed1:Number;
      
      private var _speed2:Number;
      
      private var _speed3:Number;
      
      private var _scale1:Number;
      
      private var _scale2:Number;
      
      private var _scale3:Number;
      
      private var _count:Number = 0;
      
      public function ConsortiaRoseView(){super();}
      
      protected function onEF(param1:Event) : void{}
      
      public function startFly() : void{}
      
      public function stopFly() : void{}
   }
}
