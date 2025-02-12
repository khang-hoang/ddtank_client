package ddt.view.character
{
   import com.pickgliss.loader.LoadResourceManager;
   import com.pickgliss.loader.LoaderEvent;
   import com.pickgliss.loader.ModuleLoader;
   import com.pickgliss.utils.ClassUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.PathManager;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class DynamicWeaponLayer extends Sprite implements ILayer
   {
       
      
      protected var _weapon:MovieClip;
      
      protected var _info:ItemTemplateInfo;
      
      protected var _colors:Array;
      
      protected var _hairType:String;
      
      protected var _currentEdit:uint;
      
      private var _callBack:Function;
      
      protected var _color:String;
      
      protected var _defaultLayer:uint;
      
      protected var _gunBack:Boolean;
      
      protected var _pic:String;
      
      protected var _loader:ModuleLoader;
      
      private var _isComplete:Boolean;
      
      public function DynamicWeaponLayer(param1:ItemTemplateInfo, param2:String = "", param3:Boolean = false, param4:int = 1, param5:String = null)
      {
         _info = param1;
         _color = param2 == null?"":param2;
         _gunBack = param3;
         _hairType = param4 == 1?"B":"A";
         _pic = param5 == null || String(param5) == "undefined"?_info.Pic:param5;
         super();
      }
      
      protected function initLoader() : void
      {
         if(!ClassUtils.uiSourceDomain.hasDefinition("game_weapon_" + info.TemplateID))
         {
            _loader = LoadResourceManager.Instance.createLoader(getUrl(),4);
            _loader.addEventListener("complete",__sourceComplete);
            LoadResourceManager.Instance.startLoad(_loader);
         }
         else
         {
            __sourceComplete();
         }
      }
      
      protected function __sourceComplete(param1:LoaderEvent = null) : void
      {
         var _loc2_:* = null;
         if(info == null)
         {
            return;
         }
         if(_loader)
         {
            _loader.removeEventListener("complete",__sourceComplete);
         }
         if(param1 != null && !param1.loader.isSuccess)
         {
            _weapon = null;
         }
         else
         {
            _loc2_ = ClassUtils.uiSourceDomain.getDefinition("game_weapon_" + info.TemplateID) as Class;
            _weapon = new _loc2_();
         }
         _isComplete = true;
         if(_callBack != null)
         {
            _callBack(this);
         }
      }
      
      public function setColor(param1:*) : Boolean
      {
         return false;
      }
      
      public function get info() : ItemTemplateInfo
      {
         return _info;
      }
      
      public function set info(param1:ItemTemplateInfo) : void
      {
         _info = param1;
      }
      
      public function getContent() : DisplayObject
      {
         return _weapon;
      }
      
      public function dispose() : void
      {
         if(_loader)
         {
            _loader.removeEventListener("complete",__sourceComplete);
            _loader = null;
         }
         _weapon = null;
         _callBack = null;
         _info = null;
         if(parent)
         {
            parent.removeChild(this);
         }
      }
      
      public function load(param1:Function) : void
      {
         _callBack = param1;
         initLoader();
      }
      
      private function loadLayerComplete() : void
      {
      }
      
      public function set currentEdit(param1:int) : void
      {
      }
      
      public function get currentEdit() : int
      {
         return 0;
      }
      
      override public function get width() : Number
      {
         return 0;
      }
      
      override public function get height() : Number
      {
         return 0;
      }
      
      protected function getUrl() : String
      {
         return PathManager.SITE_MAIN + "image/arm/" + _pic + "/1/1/" + "game" + ".swf";
      }
      
      public function get isComplete() : Boolean
      {
         return _isComplete;
      }
   }
}
