package dragonBones.core
{
   import starling.animation.IAnimatable;
   
   public interface IArmature extends IAnimatable
   {
       
      
      function getAnimation() : Object;
      
      function resetAnimation() : void;
   }
}
