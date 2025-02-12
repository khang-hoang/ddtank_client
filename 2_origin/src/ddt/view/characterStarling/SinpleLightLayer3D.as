package ddt.view.characterStarling
{
   import bones.BoneMovieFactory;
   import bones.display.BoneMovieStarling;
   import bones.loader.BonesLoaderEvent;
   import bones.loader.BonesLoaderManager;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.view.character.ILayer;
   import flash.display.DisplayObject;
   import starling.display.Sprite;
   
   public class SinpleLightLayer3D extends Sprite implements ILayer
   {
       
      
      private var _light:BoneMovieStarling;
      
      private var _type:int;
      
      private var _callBack:Function;
      
      private var _nimbus:int;
      
      private var _styleName:String;
      
      private var _isComplete:Boolean;
      
      public function SinpleLightLayer3D(param1:int, param2:int = 0)
      {
         super();
         _nimbus = param1;
         _type = param2;
      }
      
      public function load(param1:Function) : void
      {
         _callBack = param1;
         initLoader();
      }
      
      protected function initLoader() : void
      {
         if(_nimbus != 0)
         {
            _styleName = "game.crazyTank.view.light.SinpleLightAsset_" + getId();
            BonesLoaderManager.instance.addEventListener("complete",__onLoaderComplete);
            BonesLoaderManager.instance.startLoader(_styleName);
         }
      }
      
      private function __onLoaderComplete(param1:BonesLoaderEvent) : void
      {
         if(_styleName == param1.vo.styleName)
         {
            BonesLoaderManager.instance.removeEventListener("complete",__onLoaderComplete);
            _light = BoneMovieFactory.instance.creatBoneMovie(_styleName);
            _isComplete = true;
            if(_callBack != null && _light != null)
            {
               _callBack(this);
            }
         }
      }
      
      public function getshowTypeString() : String
      {
         if(_type == 0)
         {
            return "show";
         }
         return "game";
      }
      
      private function getId() : String
      {
         if(_nimbus == 0)
         {
            return "00";
         }
         var _loc1_:String = _nimbus.toString();
         _loc1_ = _loc1_.substr(_loc1_.length - 2,_loc1_.length);
         _loc1_ = Number(_loc1_).toString();
         return _loc1_;
      }
      
      public function getContent3D() : BoneMovieStarling
      {
         return _light as BoneMovieStarling;
      }
      
      override public function dispose() : void
      {
         BonesLoaderManager.instance.removeEventListener("complete",__onLoaderComplete);
         if(_light && _light.parent)
         {
            _light.parent.removeChild(_light);
         }
         _light = null;
         _callBack = null;
         if(this.parent)
         {
            this.parent.removeChild(this);
         }
         super.dispose();
      }
      
      public function set info(param1:ItemTemplateInfo) : void
      {
      }
      
      public function get info() : ItemTemplateInfo
      {
         return null;
      }
      
      public function getContent() : DisplayObject
      {
         return null;
      }
      
      public function set currentEdit(param1:int) : void
      {
      }
      
      public function get currentEdit() : int
      {
         return 0;
      }
      
      public function setColor(param1:*) : Boolean
      {
         return false;
      }
      
      public function get isComplete() : Boolean
      {
         return _isComplete;
      }
   }
}
