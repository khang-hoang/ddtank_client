package petsBag.view.item
{
   import com.pickgliss.loader.BaseLoader;
   import com.pickgliss.loader.LoadResourceManager;
   import com.pickgliss.loader.LoaderEvent;
   import com.pickgliss.loader.ModuleLoader;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.PathManager;
   import ddt.utils.Helpers;
   import flash.display.Bitmap;
   import flash.utils.getTimer;
   import pet.data.PetInfo;
   import road.game.resource.ActionMovie;
   import road.game.resource.ActionMovieEvent;
   
   public class PetBigItem extends Component implements Disposeable
   {
       
      
      private var _petMovie:ActionMovie;
      
      private var _info:PetInfo;
      
      private var ACTIONS:Array;
      
      private var _fightImg:Bitmap;
      
      private var _loader:BaseLoader;
      
      private var _lastTime:uint = 0;
      
      public function PetBigItem(){super();}
      
      public function initTips() : void{}
      
      public function set info(param1:PetInfo) : void{}
      
      private function __onComplete(param1:LoaderEvent) : void{}
      
      private function doNextAction(param1:ActionMovieEvent) : void{}
      
      override public function dispose() : void{}
      
      public function get fightImg() : Bitmap{return null;}
   }
}
