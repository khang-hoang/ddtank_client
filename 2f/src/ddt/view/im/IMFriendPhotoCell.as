package ddt.view.im
{
   import com.pickgliss.loader.BaseLoader;
   import com.pickgliss.loader.LoadResourceManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.text.FilterFrameText;
   import ddt.data.analyze.LoadPlayerWebsiteInfoAnalyze;
   import ddt.manager.DesktopManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PathManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.LoaderContext;
   import flash.utils.Dictionary;
   
   public class IMFriendPhotoCell extends Sprite
   {
       
      
      private var _load:Loader;
      
      private var _url:URLRequest;
      
      private var _websiteInfo:Dictionary;
      
      private var _photoFrame:Bitmap;
      
      private var _mask:Shape;
      
      private var _name:FilterFrameText;
      
      private var _loaderContext:LoaderContext;
      
      public function IMFriendPhotoCell(){super();}
      
      private function addEvents() : void{}
      
      private function __photoClick(param1:MouseEvent) : void{}
      
      public function set userID(param1:String) : void{}
      
      private function __returnWebSiteInfoHandler(param1:LoadPlayerWebsiteInfoAnalyze) : void{}
      
      private function loadImage(param1:String) : void{}
      
      private function __loadCompleteHandler(param1:Event) : void{}
      
      public function clearSprite() : void{}
      
      private function __loadIoErrorHandler(param1:IOErrorEvent) : void{}
      
      public function dispose() : void{}
   }
}
