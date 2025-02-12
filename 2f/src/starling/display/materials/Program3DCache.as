package starling.display.materials
{
   import flash.display3D.Context3D;
   import flash.display3D.Program3D;
   import flash.utils.Dictionary;
   import starling.display.shaders.IShader;
   
   class Program3DCache
   {
      
      private static const LAZY_CACHE_SIZE:uint = 8;
      
      private static var uid:int = 0;
      
      private static var uidByShaderTable:Dictionary = new Dictionary(true);
      
      private static var programByUIDTable:Object = {};
      
      private static var uidByProgramTable:Dictionary = new Dictionary(false);
      
      private static var numReferencesByProgramTable:Dictionary = new Dictionary();
      
      private static var cacheSize:uint;
       
      
      function Program3DCache(){super();}
      
      public static function getProgram3D(param1:Context3D, param2:IShader, param3:IShader) : Program3D{return null;}
      
      public static function releaseProgram3D(param1:Program3D, param2:Boolean = false) : void{}
      
      private static function flush() : void{}
   }
}
