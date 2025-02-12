package ddt.view.character
{
   import com.pickgliss.ui.core.Disposeable;
   import ddt.data.player.PlayerInfo;
   import ddt.events.PlayerPropertyEvent;
   import ddt.view.characterStarling.GameCharacter3DLoader;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.IDisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class BaseCharacter extends Sprite implements ICharacter, IDisplayObject, Disposeable
   {
      
      public static const BASE_WIDTH:int = 120;
      
      public static const BASE_HEIGHT:int = 165;
      
      public static const MOUSE_ON_GLOW_FILTER:Array = [new GlowFilter(16776960,1,8,8,2,2)];
       
      
      protected var _info:PlayerInfo;
      
      protected var _frames:Array;
      
      protected var _loader:ICharacterLoader;
      
      protected var _characterWidth:Number;
      
      protected var _characterHeight:Number;
      
      protected var _factory:ICharacterLoaderFactory;
      
      protected var _dir:int;
      
      protected var _container:Sprite;
      
      protected var _body:Bitmap;
      
      protected var _currentframe:int;
      
      protected var _loadCompleted:Boolean;
      
      protected var _picLines:int;
      
      protected var _picsPerLine:int;
      
      private var _autoClearLoader:Boolean;
      
      protected var _characterBitmapdata:BitmapData;
      
      protected var _bitmapChanged:Boolean;
      
      private var _lifeUpdate:Boolean;
      
      private var _disposed:Boolean;
      
      public function BaseCharacter(param1:PlayerInfo, param2:Boolean)
      {
         _info = param1;
         _lifeUpdate = param2;
         super();
         init();
         initEvent();
      }
      
      public function get characterWidth() : Number
      {
         return _characterWidth;
      }
      
      public function get characterHeight() : Number
      {
         return _characterHeight;
      }
      
      protected function init() : void
      {
         _currentframe = -1;
         initSizeAndPics();
         createFrames();
         _container = new Sprite();
         addChild(_container);
         _body = new Bitmap(new BitmapData(_characterWidth + 1,_characterHeight,true,0),"never",true);
         _container.addChild(_body);
         mouseEnabled = false;
         mouseChildren = false;
         _loadCompleted = false;
      }
      
      protected function initSizeAndPics() : void
      {
         setCharacterSize(120,165);
         setPicNum(1,3);
      }
      
      protected function initEvent() : void
      {
         _info.addEventListener("propertychange",__propertyChange);
         addEventListener("addedToStage",__addToStage);
         addEventListener("removedFromStage",__removeFromStage);
      }
      
      private function __addToStage(param1:Event) : void
      {
         if(_lifeUpdate)
         {
            addEventListener("enterFrame",__enterFrame);
         }
      }
      
      private function __removeFromStage(param1:Event) : void
      {
         removeEventListener("enterFrame",__enterFrame);
      }
      
      private function __enterFrame(param1:Event) : void
      {
         update();
      }
      
      public function update() : void
      {
      }
      
      private function __propertyChange(param1:PlayerPropertyEvent) : void
      {
         if(_disposed)
         {
            return;
         }
         if(param1.changedProperties["Style"] || param1.changedProperties["Colors"])
         {
            if(_loader == null || _loader is GameCharacterLoader || _loader is GameCharacter3DLoader)
            {
               if(_loader)
               {
                  _loader.dispose();
                  _loader = null;
               }
               initLoader();
               _loader.load(__loadComplete);
            }
            else
            {
               _loader.update();
            }
         }
      }
      
      protected function setCharacterSize(param1:Number, param2:Number) : void
      {
         _characterWidth = param1;
         _characterHeight = param2;
      }
      
      protected function setPicNum(param1:int, param2:int) : void
      {
         _picLines = param1;
         _picsPerLine = param2;
      }
      
      public function setColor(param1:*) : Boolean
      {
         return false;
      }
      
      public function get info() : PlayerInfo
      {
         return _info;
      }
      
      public function get currentFrame() : int
      {
         return _currentframe;
      }
      
      public function set characterBitmapdata(param1:BitmapData) : void
      {
         if(param1 == _characterBitmapdata)
         {
            return;
         }
         _characterBitmapdata = param1;
         _bitmapChanged = true;
      }
      
      public function get characterBitmapdata() : BitmapData
      {
         return _characterBitmapdata;
      }
      
      public function get completed() : Boolean
      {
         return _loadCompleted;
      }
      
      public function getCharacterLoadLog() : String
      {
         if(_loader is ShowCharacterLoader)
         {
            return (_loader as ShowCharacterLoader).getUnCompleteLog();
         }
         return "not ShowCharacterLoader";
      }
      
      public function doAction(param1:*) : void
      {
      }
      
      public function setDefaultAction(param1:*) : void
      {
      }
      
      public function setCharacterFilter(param1:Boolean) : void
      {
         _body.filters = !!param1?MOUSE_ON_GLOW_FILTER:null;
      }
      
      public function show(param1:Boolean = true, param2:int = 1, param3:Boolean = true) : void
      {
         _dir = param2 > 0?1:-1;
         scaleX = _dir;
         _autoClearLoader = param1;
         if(!_loadCompleted)
         {
            if(_loader == null)
            {
               initLoader();
            }
            _loader.load(__loadComplete);
         }
      }
      
      protected function __loadComplete(param1:ICharacterLoader) : void
      {
         _loadCompleted = true;
         setContent();
         if(_autoClearLoader && _loader != null)
         {
            _loader.dispose();
            _loader = null;
         }
         dispatchEvent(new Event("complete"));
      }
      
      protected function setContent() : void
      {
         if(_loader != null)
         {
            if(_characterBitmapdata && _characterBitmapdata != _loader.getContent()[0])
            {
               _characterBitmapdata.dispose();
            }
            characterBitmapdata = _loader.getContent()[0];
         }
         drawFrame(_currentframe);
      }
      
      public function setFactory(param1:ICharacterLoaderFactory) : void
      {
         _factory = param1;
      }
      
      protected function initLoader() : void
      {
         _loader = _factory.createLoader(_info,"show");
      }
      
      public function drawFrame(param1:int, param2:int = 0, param3:Boolean = true) : void
      {
         if(_characterBitmapdata != null)
         {
            if(param1 < 0 || param1 >= _frames.length)
            {
               param1 = 0;
            }
            if(param1 != _currentframe || _bitmapChanged)
            {
               _bitmapChanged = false;
               _currentframe = param1;
               _body.bitmapData.copyPixels(_characterBitmapdata,_frames[_currentframe],new Point(0,0));
            }
         }
      }
      
      protected function createFrames() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc1_:* = null;
         _frames = [];
         _loc2_ = 0;
         while(_loc2_ < _picLines)
         {
            _loc3_ = 0;
            while(_loc3_ < _picsPerLine)
            {
               _loc1_ = new Rectangle(_loc3_ * _characterWidth,_loc2_ * _characterHeight,_characterWidth,_characterHeight);
               _frames.push(_loc1_);
               _loc3_++;
            }
            _loc2_++;
         }
      }
      
      public function set smoothing(param1:Boolean) : void
      {
         _body.smoothing = param1;
      }
      
      public function set showGun(param1:Boolean) : void
      {
      }
      
      public function set showWing(param1:Boolean) : void
      {
      }
      
      public function setShowLight(param1:Boolean, param2:Point = null) : void
      {
      }
      
      public function get currentAction() : *
      {
         return "";
      }
      
      public function actionPlaying() : Boolean
      {
         return false;
      }
      
      public function showWithSize(param1:Boolean = true, param2:int = 1, param3:Number = 120, param4:Number = 165) : void
      {
      }
      
      public function resetShowBitmapBig() : void
      {
      }
      
      public function getShowBitmapBig() : *
      {
      }
      
      public function dispose() : void
      {
         _info.removeEventListener("propertychange",__propertyChange);
         _disposed = true;
         _info = null;
         removeEventListener("addedToStage",__addToStage);
         removeEventListener("enterFrame",__enterFrame);
         removeEventListener("removedFromStage",__removeFromStage);
         if(_loader)
         {
            _loader.dispose();
            _loader = null;
         }
         _factory = null;
         if(parent)
         {
            parent.removeChild(this);
         }
         if(_body && _body.bitmapData)
         {
            _body.bitmapData.dispose();
         }
         _body = null;
         if(_characterBitmapdata)
         {
            _characterBitmapdata.dispose();
         }
         _characterBitmapdata = null;
      }
      
      public function asDisplayObject() : DisplayObject
      {
         return this;
      }
   }
}
