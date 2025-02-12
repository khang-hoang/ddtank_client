package gameStarling.view
{
   import com.pickgliss.loader.BaseLoader;
   import com.pickgliss.loader.LoadResourceManager;
   import com.pickgliss.loader.LoaderEvent;
   import com.pickgliss.loader.LoaderManager;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.PathManager;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import gameCommon.GameControl;
   
   public class GameWeatherView extends Sprite implements Disposeable
   {
       
      
      private var _movie:MovieClip;
      
      private var _maxScale:int;
      
      private var _frame:int = 24;
      
      private var _wind:Number = 0;
      
      private var _mapIndex:int = 0;
      
      public function GameWeatherView()
      {
         super();
         _mapIndex = GameControl.Instance.Current.mapIndex;
         startLoader();
      }
      
      private function startLoader() : void
      {
         var _loc2_:String = PathManager.getWeatherUrl(_mapIndex);
         var _loc1_:BaseLoader = LoadResourceManager.Instance.createLoader(_loc2_,4);
         _loc1_.addEventListener("complete",__onLoadComplete);
         LoaderManager.Instance.startLoad(_loc1_);
      }
      
      private function __onLoadComplete(param1:LoaderEvent) : void
      {
         (param1.currentTarget as BaseLoader).removeEventListener("complete",__onLoadComplete);
         createMovie();
      }
      
      private function createMovie() : void
      {
         _movie = ClassUtils.CreatInstance("asset.game.weather" + _mapIndex);
         _movie.x = StageReferance.stageWidth / 2;
         _movie.y = StageReferance.stageHeight / 2;
         _movie.width = 1100;
         _movie.height = 1100;
         addChild(_movie);
      }
      
      public function update(param1:int, param2:Number) : void
      {
         if(param2 > 90)
         {
            param2 = 90;
         }
         if(param2 < -90)
         {
            param2 = -90;
         }
         _movie.rotation = -1 * param2;
      }
      
      public function get movie() : MovieClip
      {
         return _movie;
      }
      
      public function dispose() : void
      {
         if(_movie)
         {
            _movie.stop();
            ObjectUtils.disposeObject(_movie);
         }
         _movie = null;
      }
   }
}
