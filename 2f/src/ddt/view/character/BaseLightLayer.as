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
   
   public class BaseLightLayer extends Sprite implements ILayer
   {
       
      
      private var _light:MovieClip;
      
      private var _type:int;
      
      private var _callBack:Function;
      
      private var _loader:ModuleLoader;
      
      private var _nimbus:int;
      
      private var _isComplete:Boolean;
      
      public function BaseLightLayer(param1:int, param2:int = 0){super();}
      
      public function load(param1:Function) : void{}
      
      protected function initLoader() : void{}
      
      private function getId() : String{return null;}
      
      protected function __sourceComplete(param1:LoaderEvent = null) : void{}
      
      protected function getUrl() : String{return null;}
      
      public function getshowTypeString() : String{return null;}
      
      public function get info() : ItemTemplateInfo{return null;}
      
      public function set info(param1:ItemTemplateInfo) : void{}
      
      public function getContent() : DisplayObject{return null;}
      
      public function dispose() : void{}
      
      public function set currentEdit(param1:int) : void{}
      
      public function get currentEdit() : int{return 0;}
      
      public function setColor(param1:*) : Boolean{return false;}
      
      public function get isComplete() : Boolean{return false;}
   }
}
