package com.pickgliss.loader
{
   import cmodule.decry.CLibInit;
   import com.crypto.NewCrypto;
   import com.pickgliss.ui.ComponentSetting;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   
   public class ModuleLoader extends DisplayLoader
   {
      
      private static var loader:CLibInit = new CLibInit();
       
      
      private var _isEqual:Boolean;
      
      private var _name:String;
      
      private var _isSecondLoad:Boolean = false;
      
      public function ModuleLoader(param1:int, param2:String, param3:ApplicationDomain)
      {
         this.domain = param3;
         super(param1,param2);
      }
      
      public static function decry(param1:ByteArray) : ByteArray
      {
         var _loc3_:Object = loader.init();
         var _loc2_:ByteArray = _loc3_.decry(param1);
         return _loc2_;
      }
      
      public static function getDefinition(param1:String) : *
      {
         return getDefinitionByName(param1);
      }
      
      public static function hasDefinition(param1:String) : Boolean
      {
         return DisplayLoader.Context.applicationDomain.hasDefinition(param1);
      }
      
      override public function loadFromBytes(param1:ByteArray) : void
      {
         _starTime = getTimer();
         _displayLoader.contentLoaderInfo.addEventListener("complete",__onContentLoadComplete);
         analyMd5(param1);
      }
      
      override protected function __onDataLoadComplete(param1:Event) : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         removeEvent();
         unload();
         if(DisplayLoader.isDebug)
         {
            _displayLoader.contentLoaderInfo.addEventListener("complete",__onContentLoadComplete);
            if(_loader.data.length == 0)
            {
               return;
            }
            _loc3_ = _loader.data;
            _loc3_ = NewCrypto.decry(_loc3_);
            if(_loc3_[0] != 67 || _loc3_[1] != 87 || _loc3_[2] != 83)
            {
               _loc3_ = decry(_loc3_);
            }
            if(domain != null)
            {
               _displayLoader.loadBytes(_loc3_,DisplayLoader.Context);
            }
            else
            {
               _displayLoader.loadBytes(_loc3_,Context);
            }
         }
         else
         {
            _displayLoader.contentLoaderInfo.addEventListener("complete",__onContentLoadComplete);
            if(_loader.data.length == 0)
            {
               return;
            }
            _loc2_ = _loader.data;
            LoaderSavingManager.cacheFile(_url,_loc2_,false);
            analyMd5(_loc2_);
         }
      }
      
      public function analyMd5(param1:ByteArray) : void
      {
         var _loc3_:* = null;
         var _loc2_:String = getName();
         if(ComponentSetting.USEMD5 && (ComponentSetting.md5Dic[_loc2_] || hasHead(param1)))
         {
            if(compareMD5(param1,_loc2_))
            {
               try
               {
                  _loc3_ = new ByteArray();
                  param1.position = 37;
                  param1.readBytes(_loc3_);
                  handleModule(_loc3_);
               }
               catch(e:Error)
               {
                  if(ExternalInterface.available)
                  {
                     ExternalInterface.call("alert","出现问题了，点击确定重新加载！");
                  }
                  reload();
               }
            }
            else if(_isSecondLoad)
            {
               if(ExternalInterface.available)
               {
                  ExternalInterface.call("alert",_currentLoadPath + ":is old");
               }
            }
            else
            {
               reload();
            }
         }
         else
         {
            handleModule(param1);
         }
      }
      
      private function reload() : void
      {
         _url = _url.replace(ComponentSetting.FLASHSITE,ComponentSetting.BACKUP_FLASHSITE);
         _isLoading = false;
         startLoad(_url);
         _isSecondLoad = true;
      }
      
      private function getName() : String
      {
         var _loc2_:int = 0;
         var _loc1_:String = "";
         _loc2_ = 0;
         while(_loc2_ < ComponentSetting.MD5_OBJECT.length)
         {
            if(_url.indexOf(ComponentSetting.MD5_OBJECT[_loc2_]) != -1)
            {
               _loc1_ = _url.substring(_url.lastIndexOf("/") + 1,_url.indexOf(ComponentSetting.MD5_OBJECT[_loc2_]) + ComponentSetting.MD5_OBJECT[_loc2_].length);
            }
            _loc2_++;
         }
         return _loc1_.toLowerCase();
      }
      
      private function compareMD5(param1:ByteArray, param2:String) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeUTFBytes(ComponentSetting.md5Dic[param2]);
         _loc5_.position = 0;
         param1.position = 5;
         while(_loc5_.bytesAvailable > 0)
         {
            _loc3_ = _loc5_.readByte();
            _loc4_ = param1.readByte();
            if(_loc3_ != _loc4_)
            {
               return false;
            }
         }
         return true;
      }
      
      private function hasHead(param1:ByteArray) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes(ComponentSetting.swf_head);
         _loc2_.position = 0;
         param1.position = 0;
         while(_loc2_.bytesAvailable > 0)
         {
            _loc3_ = _loc2_.readByte();
            _loc4_ = param1.readByte();
            if(_loc3_ != _loc4_)
            {
               return false;
            }
         }
         return true;
      }
      
      private function handleModule(param1:ByteArray) : void
      {
         param1.position = 0;
         param1 = NewCrypto.decry(param1);
         if(param1[0] != 67 || param1[1] != 87 || param1[2] != 83)
         {
            param1 = decry(param1);
         }
         if(domain != null)
         {
            _displayLoader.loadBytes(param1,new LoaderContext(false,domain));
         }
         else
         {
            _displayLoader.loadBytes(param1,Context);
         }
      }
      
      override public function get type() : int
      {
         return 4;
      }
   }
}
