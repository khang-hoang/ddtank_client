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
      
      public function IMFriendPhotoCell()
      {
         super();
         buttonMode = false;
         _load = new Loader();
         _load.contentLoaderInfo.addEventListener("complete",__loadCompleteHandler);
         _load.contentLoaderInfo.addEventListener("ioError",__loadIoErrorHandler);
         _loaderContext = new LoaderContext(true);
         _photoFrame = ComponentFactory.Instance.creatBitmap("asset.playerTip.PhotoFrame");
         _name = ComponentFactory.Instance.creatComponentByStylename("playerTip.PhotoNameTxt");
         addChild(_name);
         _mask = new Shape();
         _mask.graphics.beginFill(0,0);
         _mask.graphics.drawRect(0,0,54,55);
         _mask.graphics.endFill();
         if(PathManager.CommnuntyMicroBlog() && PathManager.CommnuntySinaSecondMicroBlog())
         {
            buttonMode = true;
            addEvents();
         }
      }
      
      private function addEvents() : void
      {
         addEventListener("click",__photoClick);
      }
      
      private function __photoClick(param1:MouseEvent) : void
      {
         var _loc2_:* = null;
         if(_websiteInfo["personWeb"] != null)
         {
            SoundManager.instance.play("008");
            if(ExternalInterface.available && !DesktopManager.Instance.isDesktop)
            {
               _loc2_ = "function redict () {window.open(\"" + _websiteInfo["personWeb"] + "\", \"_blank\")}";
               ExternalInterface.call(_loc2_);
            }
            else
            {
               navigateToURL(new URLRequest(encodeURI(_websiteInfo["personWeb"])),"_blank");
            }
         }
      }
      
      public function set userID(param1:String) : void
      {
         var _loc2_:BaseLoader = LoadResourceManager.Instance.createLoader(PathManager.solveWebPlayerInfoPath(param1),6);
         _loc2_.loadErrorMessage = LanguageMgr.GetTranslation("ddt.loader.LoadingBuddyListFailure");
         _loc2_.analyzer = new LoadPlayerWebsiteInfoAnalyze(__returnWebSiteInfoHandler);
         LoadResourceManager.Instance.startLoad(_loc2_);
         if(_name)
         {
            _name.text = "";
         }
      }
      
      private function __returnWebSiteInfoHandler(param1:LoadPlayerWebsiteInfoAnalyze) : void
      {
         _websiteInfo = param1.info;
         if(_websiteInfo["tinyHeadUrl"] != null && _websiteInfo["tinyHeadUrl"] != "")
         {
            loadImage(_websiteInfo["tinyHeadUrl"]);
         }
         if(_websiteInfo["userName"] != null && _websiteInfo["userName"])
         {
            if(_name)
            {
               _name.text = _websiteInfo["userName"];
            }
         }
      }
      
      private function loadImage(param1:String) : void
      {
         _url = new URLRequest(param1);
         _load.load(_url,_loaderContext);
      }
      
      private function __loadCompleteHandler(param1:Event) : void
      {
         addChild(_load.content);
         _load.content.x = 4;
         _load.content.y = 5;
         _load.content.mask = _mask;
         addChild(_photoFrame);
         addChild(_mask);
      }
      
      public function clearSprite() : void
      {
         while(this.numChildren)
         {
            this.removeChildAt(0);
         }
         this.graphics.clear();
      }
      
      private function __loadIoErrorHandler(param1:IOErrorEvent) : void
      {
      }
      
      public function dispose() : void
      {
         removeEventListener("click",__photoClick);
         if(_load && _load.contentLoaderInfo)
         {
            _load.contentLoaderInfo.addEventListener("complete",__loadCompleteHandler);
            _load.contentLoaderInfo.addEventListener("ioError",__loadIoErrorHandler);
         }
         if(_mask && _mask.parent)
         {
            _mask.graphics.clear();
            _mask.parent.removeChild(_mask);
         }
         _mask = null;
         clearSprite();
         if(_name)
         {
            _name.dispose();
            _name = null;
         }
         if(_photoFrame && _photoFrame.parent)
         {
            _photoFrame.parent.removeChild(_photoFrame);
         }
         _photoFrame = null;
         _url = null;
         _load = null;
         _loaderContext = null;
         _websiteInfo = null;
         if(this.parent)
         {
            this.parent.removeChild(this);
         }
      }
   }
}
