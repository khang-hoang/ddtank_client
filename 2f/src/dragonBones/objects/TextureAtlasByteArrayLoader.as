package dragonBones.objects
{
   import flash.display.Loader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class TextureAtlasByteArrayLoader extends Loader
   {
      
      private static const loaderContext:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain);
       
      
      public function TextureAtlasByteArrayLoader(){super();}
      
      override public function loadBytes(param1:ByteArray, param2:LoaderContext = null) : void{}
   }
}
