package bones.display
{
   import dragonBones.Armature;
   import dragonBones.Bone;
   import dragonBones.animation.AnimationState;
   import dragonBones.objects.ArmatureData;
   import dragonBones.objects.BoneData;
   
   public interface IBoneMovie
   {
       
      
      function setArmature(param1:Armature, param2:ArmatureData = null) : IBoneMovie;
      
      function loadWait() : void;
      
      function gotoAndPlay(param1:String, param2:Number = -1, param3:Number = -1, param4:Number = NaN, param5:int = 0, param6:String = null, param7:String = "sameLayerAndGroup", param8:Boolean = true, param9:Boolean = true) : AnimationState;
      
      function play(param1:String = "") : void;
      
      function stop() : void;
      
      function changeBone(param1:String, param2:Bone) : void;
      
      function getBoneByName(param1:String) : Bone;
      
      function getBoneDataByName(param1:String) : BoneData;
      
      function get boneMovieName() : String;
      
      function get boneMovieLabels() : Vector.<String>;
      
      function get currentLabel() : String;
      
      function get armature() : Armature;
      
      function set direction(param1:int) : void;
      
      function get direction() : int;
      
      function get styleName() : String;
      
      function getValueByAttribute(param1:String) : String;
      
      function get loadComplete() : Boolean;
      
      function startClock() : void;
      
      function stopClock() : void;
      
      function set onLoadComplete(param1:Function) : void;
      
      function dispose() : void;
   }
}
