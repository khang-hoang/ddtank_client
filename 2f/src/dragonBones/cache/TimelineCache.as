package dragonBones.cache
{
   import dragonBones.core.ICacheUser;
   
   public class TimelineCache
   {
       
      
      public var name:String;
      
      public var frameCacheList:Vector.<FrameCache>;
      
      public var currentFrameCache:FrameCache;
      
      public function TimelineCache(){super();}
      
      public function addFrame() : void{}
      
      public function update(param1:int) : void{}
      
      public function bindCacheUser(param1:ICacheUser) : void{}
   }
}
