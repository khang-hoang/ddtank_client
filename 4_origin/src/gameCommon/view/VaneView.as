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
      
      public function VaneView()
      {
         super();
         _vanePos = ComponentFactory.Instance.creatCustomObject("asset.game.vaneAssetPos");
         _vanePos2 = ComponentFactory.Instance.creatCustomObject("asset.game.vaneAssetPos2");
         _vaneTitlePos = ComponentFactory.Instance.creatCustomObject("asset.game.vaneTitleAssetPos");
         _vaneTitlePos2 = ComponentFactory.Instance.creatCustomObject("asset.game.vaneTitleAssetPos2");
         _vaneValuePos = ComponentFactory.Instance.creatCustomObject("asset.game.vaneValueAssetPos");
         _vaneValuePos2 = ComponentFactory.Instance.creatCustomObject("asset.game.vaneValueAssetPos2");
         _bmVaneTitle = ComponentFactory.Instance.creatBitmap("asset.game.vaneTitleAsset");
         addChild(_bmVaneTitle);
         _bmPrevious = ComponentFactory.Instance.creatBitmap("asset.game.vanePreviousAsset");
         _bmPrevious.visible = false;
         addChild(_bmPrevious);
         _bmPreviousDirection = ComponentFactory.Instance.creatBitmap("asset.game.vanePreviousDirectionAsset");
         _previousDirectionPos = new Point(_bmPreviousDirection.x,_bmPreviousDirection.y);
         _bmPreviousDirection.visible = false;
         addChild(_bmPreviousDirection);
         _vanePreviousGradientText = ComponentFactory.Instance.creatComponentByStylename("asset.game.vanePreviousGradientTextAsset");
         _vanePreviousGradientText.visible = false;
         addChild(_vanePreviousGradientText);
         _zeroTxt = ComponentFactory.Instance.creatComponentByStylename("asset.game.vaneZeroTextAsset");
         vane1_mc = ClassUtils.CreatInstance("asset.game.vaneAsset");
         var _loc1_:Boolean = false;
         vane1_mc.mouseEnabled = _loc1_;
         vane1_mc.mouseChildren = _loc1_;
         vane1_mc.x = _vanePos.x;
         vane1_mc.y = _vanePos.y;
         addChild(vane1_mc);
         mixedbgAccect = new Shape();
         mixedbgAccect.graphics.beginFill(16777215,1);
         mixedbgAccect.graphics.drawRect(0,0,20,20);
         mixedbgAccect.graphics.endFill();
         creatGraidenText();
         creatMixBg();
         mouseEnabled = false;
         mouseChildren = false;
         if(GameControl.Instance.Current.isWeather)
         {
            _weatherMovie = ComponentFactory.Instance.creatComponentByStylename("gameView.weather." + GameControl.Instance.Current.mapIndex);
            addChild(_weatherMovie);
            _weatherMovie.setFrame(1);
         }
      }
      
      private function creatMixBg() : void
      {
         mixedBg1 = new CheckCodeMixedBack(20,20,7238008);
         mixedBg1.x = 0;
         mixedBg1.y = 0;
         mixedBg1.mask = mixedbgAccect;
      }
      
      public function setUpCenter(param1:Number, param2:Number) : void
      {
         this.x = param1;
         this.y = param2;
      }
      
      private function getRandomVaneOffset() : Number
      {
         var _loc1_:Number = Math.random() * 6 - 6 / 2;
         return _loc1_;
      }
      
      private function creatGraidenText() : void
      {
         _field = ComponentFactory.Instance.creatComponentByStylename("asset.game.vaneGradientTextAsset");
         _field.autoSize = "center";
         _valuePos1 = ComponentFactory.Instance.creatCustomObject("asset.game.vaneValueAssetPos");
         _valuePos2 = ComponentFactory.Instance.creatCustomObject("asset.game.vaneValueAssetPos2");
         _windNumShape = new Shape();
         addChildAt(_windNumShape,numChildren);
      }
      
      public function initialize() : void
      {
         _lastWind = 11;
      }
      
      public function update(param1:Number, param2:Boolean = false, param3:Array = null) : void
      {
         if(param3 == null)
         {
            _windNumShape.visible = false;
            param3 = [];
            param3 = [true,0,0,0,1];
         }
         else
         {
            _windNumShape.visible = true;
         }
         if(_lastWind != 11)
         {
            lastTurn(_lastWind);
         }
         if(param2)
         {
            _lastWind = param1;
         }
         if(param1 != 0)
         {
            _bmVaneTitle.x = param1 > 0?_vaneTitlePos2.x:Number(_vaneTitlePos.x);
         }
         vane1_mc.scaleX = param3[0] == true?1:-1;
         vane1_mc.x = param3[0] == true?_vanePos2.x:Number(_vanePos.x);
         _windNumShape.x = param3[0] == true?_vaneValuePos.x:Number(_vaneValuePos2.x);
         _windNumShape.y = param3[0] == true?_vaneValuePos.y:Number(_vaneValuePos2.y);
         if(param3[1] == 0 && param3[2] == 0 && param3[3] == 0)
         {
            _zeroTxt.x = _windNumShape.x;
            _zeroTxt.y = _windNumShape.y;
            addChild(_zeroTxt);
            _windNumShape.visible = false;
            _zeroTxt.visible = true;
         }
         else
         {
            _windNumShape.visible = true;
            _zeroTxt.visible = false;
            drawNum([param3[1],param3[2],param3[3]]);
         }
         if(_weatherMovie)
         {
            _weatherMovie.setFrame(param3[4]);
         }
      }
      
      private function drawNum(param1:Array) : void
      {
         var _loc4_:* = null;
         var _loc3_:Graphics = _windNumShape.graphics;
         _loc3_.clear();
         var _loc5_:Matrix = new Matrix();
         var _loc7_:int = 0;
         var _loc6_:* = param1;
         for each(var _loc2_ in param1)
         {
            _loc4_ = WindPowerManager.Instance.getWindPicById(_loc2_);
            if(_loc4_)
            {
               _loc5_.tx = _windNumShape.width;
               _loc3_.beginBitmapFill(_loc4_,_loc5_);
               _loc3_.drawRect(_windNumShape.width,0,_loc4_.width,_loc4_.height);
               _loc3_.endFill();
            }
         }
      }
      
      private function setRandomPos() : void
      {
         var _loc1_:Number = getRandomVaneOffset();
         vane1_mc.x = vane1_mc.x + _loc1_;
         _windNumShape.x = _windNumShape.x + _loc1_;
      }
      
      private function addZero(param1:Number) : String
      {
         var _loc2_:* = null;
         if(Math.ceil(param1) == param1 || Math.floor(param1) == param1)
         {
            _loc2_ = Math.abs(param1).toString() + ".0";
         }
         else
         {
            _loc2_ = Math.abs(param1).toString();
         }
         return _loc2_;
      }
      
      private function lastTurn(param1:Number) : void
      {
         _bmPrevious.visible = true;
         _bmPreviousDirection.visible = true;
         _vanePreviousGradientText.visible = true;
         _bmPreviousDirection.scaleX = param1 > 0?1:-1;
         _bmPreviousDirection.x = param1 > 0?_previousDirectionPos.x:Number(_previousDirectionPos.x + _bmPreviousDirection.width);
         _vanePreviousGradientText.text = Math.abs(param1).toString();
      }
      
      public function dispose() : void
      {
         if(_bmVaneTitle)
         {
            if(_bmVaneTitle.parent)
            {
               _bmVaneTitle.parent.removeChild(_bmVaneTitle);
            }
            _bmVaneTitle.bitmapData.dispose();
            _bmVaneTitle = null;
         }
         if(_bmPreviousDirection)
         {
            if(_bmPreviousDirection.parent)
            {
               _bmPreviousDirection.parent.removeChild(_bmPreviousDirection);
            }
            _bmPreviousDirection.bitmapData.dispose();
            _bmPreviousDirection = null;
         }
         if(_bmPrevious)
         {
            if(_bmPrevious.parent)
            {
               _bmPrevious.parent.removeChild(_bmPrevious);
            }
            _bmPrevious.bitmapData.dispose();
            _bmPrevious = null;
         }
         vane1_mc.stop();
         removeChild(vane1_mc);
         vane1_mc = null;
         mixedbgAccect = null;
         mixedBg1.mask = null;
         mixedBg1 = null;
         ObjectUtils.disposeObject(_windNumShape);
         _windNumShape = null;
         if(_zeroTxt)
         {
            ObjectUtils.disposeObject(_zeroTxt);
         }
         _zeroTxt = null;
         ObjectUtils.disposeObject(_vanePreviousGradientText);
         _vanePreviousGradientText = null;
         ObjectUtils.disposeObject(_weatherMovie);
         _weatherMovie = null;
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
