package ddt.view.character
{
   import com.pickgliss.loader.DisplayLoader;
   import com.pickgliss.loader.LoadResourceManager;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.PathManager;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.net.URLVariables;
   
   public class CellMovieClipSpecialEffectLayer extends BaseLayer
   {
       
      
      private var _specialType:int;
      
      private var _categoryID:int;
      
      protected var _movieClips:Vector.<MovieClip>;
      
      public function CellMovieClipSpecialEffectLayer(param1:int = 1){super(null);}
      
      override protected function getUrl(param1:int) : String{return null;}
      
      override protected function initLoaders() : void{}
      
      override protected function __loadComplete(param1:Event) : void{}
      
      override public function reSetBitmap() : void{}
      
      override protected function clearBitmap() : void{}
   }
}
