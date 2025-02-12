package gameCommon.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import gameCommon.GameControl;
   
   public class VaneView extends Sprite
   {
      
      public static const RandomVaneOffset:Number = 6;
      
      public static const RANDOW_COLORS:Array = [1710618,1514802,1712150,2493709,1713677,1838339,1842464,2170141,1054500,2630187];
      
      public static const RANDOW_COLORSII:Array = [[4667276,2429483],[11785,5647616],[401937,608599],[473932,6492176],[9178527,1316390],[2360854,7280322],[2185247,927056],[8724255,4076052],[1835158,4653109],[919557,7353207],[1644310,5703976],[149007,857625],[2499109,872256],[8519680,1328498],[5775151,3355404],[1326929,7150931]];
       
      
      private var _bmVaneTitle:Bitmap;
      
      private var _bmPreviousDirection:Bitmap;
      
      private var _bmPrevious:Bitmap;
      
      private var vane1_mc:MovieClip;
      
      private var mixedbgAccect:Shape;
      
      private var _lastWind:Number;
      
      private var mixedBg1:CheckCodeMixedBack;
      
      private var vane1PosX:Number = 0;
      
      private var vane2PosX:Number = -17.5;
      
      private var text1PosX:Number = 0;
      
      private var text2PosX:Number = 0;
      
      private var _vanePos:Point;
      
      private var _vanePos2:Point;
      
      private var _vaneTitlePos:Point;
      
      private var _vaneTitlePos2:Point;
      
      private var _vaneValuePos:Point;
      
      private var _vaneValuePos2:Point;
      
      private var _field:FilterFrameText;
      
      private var _vanePreviousGradientText:FilterFrameText;
      
      private var textGlowFilter:GlowFilter;
      
      private var textFilter:Array;
      
      private var _previousDirectionPos:Point;
      
      private var _valuePos1:Point;
      
      private var _valuePos2:Point;
      
      private var _zeroTxt:FilterFrameText;
      
      private var _weatherMovie:ScaleFrameImage;
      
      private var _windNumShape:Shape;
      
      public function VaneView(){super();}
      
      private function creatMixBg() : void{}
      
      public function setUpCenter(param1:Number, param2:Number) : void{}
      
      private function getRandomVaneOffset() : Number{return 0;}
      
      private function creatGraidenText() : void{}
      
      public function initialize() : void{}
      
      public function update(param1:Number, param2:Boolean = false, param3:Array = null) : void{}
      
      private function drawNum(param1:Array) : void{}
      
      private function setRandomPos() : void{}
      
      private function addZero(param1:Number) : String{return null;}
      
      private function lastTurn(param1:Number) : void{}
      
      public function dispose() : void{}
   }
}
