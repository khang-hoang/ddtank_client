package ddt.view.common
{
   import com.pickgliss.loader.DisplayLoader;
   import com.pickgliss.loader.LoadResourceManager;
   import com.pickgliss.loader.LoaderEvent;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.core.ITipedDisplay;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.DailyLeagueManager;
   import ddt.manager.PathManager;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class DailyLeagueLevel extends Sprite implements ITipedDisplay, Disposeable
   {
      
      public static const SIZE_BIG:int = 0;
      
      public static const SIZE_SMALL:int = 1;
       
      
      private var _rankIcon:Bitmap;
      
      private var _level:int;
      
      private var _score:int = -1;
      
      private var _leagueFirst:Boolean;
      
      private var _loader:DisplayLoader;
      
      private var _tipDirctions:String;
      
      private var _tipGapH:int;
      
      private var _tipGapV:int;
      
      private var _tipStyle:String;
      
      private var _tipData:Object;
      
      private var _size:int;
      
      public function DailyLeagueLevel(){super();}
      
      public function set leagueFirst(param1:Boolean) : void{}
      
      public function set score(param1:int) : void{}
      
      private function updateView() : void{}
      
      public function set size(param1:int) : void{}
      
      private function updateSize() : void{}
      
      private function __onLoadComplete(param1:LoaderEvent) : void{}
      
      private function __onLoadError(param1:LoaderEvent) : void{}
      
      public function get tipData() : Object{return null;}
      
      public function set tipData(param1:Object) : void{}
      
      public function get tipDirctions() : String{return null;}
      
      public function set tipDirctions(param1:String) : void{}
      
      public function get tipGapH() : int{return 0;}
      
      public function set tipGapH(param1:int) : void{}
      
      public function get tipGapV() : int{return 0;}
      
      public function set tipGapV(param1:int) : void{}
      
      public function get tipStyle() : String{return null;}
      
      public function set tipStyle(param1:String) : void{}
      
      public function asDisplayObject() : DisplayObject{return null;}
      
      public function dispose() : void{}
   }
}
