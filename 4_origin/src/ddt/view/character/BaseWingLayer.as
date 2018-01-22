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
   
   public class BaseWingLayer extends Sprite implements ILayer
   {
      
      public static const SHOW_WING:int = 0;
      
      public static const GAME_WING:int = 1;
       
      
      protected var _info:ItemTemplateInfo;
      
      protected var _callBack:Function;
      
      protected var _loader:ModuleLoader;
      
      protected var _showType:int = 0;
      
      protected var _wing:MovieClip;
      
      private var _isComplete:Boolean;
      
      public function BaseWingLayer(param1:ItemTemplateInfo, param2:int = 0)
      {
         _info = param1;
         _showType = param2;
         super();
      }
      
      protected function initLoader() : void
      {
         if(!ClassUtils.uiSourceDomain.hasDefinition("wing_" + getshowTypeString() + "_" + info.TemplateID))
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
            _wing = null;
         }
         else
         {
            _loc2_ = ClassUtils.uiSourceDomain.getDefinition("wing_" + getshowTypeString() + "_" + info.TemplateID) as Class;
            _wing = new _loc2_();
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
         return _wing;
      }
      
      public function dispose() : void
      {
         if(_loader)
         {
            _loader.removeEventListener("complete",__sourceComplete);
            _loader = null;
         }
         _wing = null;
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
         return PathManager.soloveWingPath(info.Pic);
      }
      
      public function getshowTypeString() : String
      {
         if(_showType == 0)
         {
            return "show";
         }
         return "game";
      }
      
      public function get isComplete() : Boolean
      {
         return _isComplete;
      }
   }
}