package bones.display
{
   import bones.BoneMovieFactory;
   import bones.loader.BonesLoaderEvent;
   import bones.loader.BonesLoaderManager;
   import com.pickgliss.utils.StarlingObjectUtils;
   import dragonBones.animation.WorldClock;
   import dragonBones.fast.FastArmature;
   import dragonBones.fast.FastBone;
   import dragonBones.fast.animation.FastAnimationState;
   import dragonBones.objects.AnimationData;
   import dragonBones.objects.ArmatureData;
   import dragonBones.objects.BoneData;
   import road7th.StarlingMain;
   import road7th.data.DictionaryData;
   import starling.display.DisplayObject;
   import starling.display.Image;
   import starling.display.Sprite;
   import starling.events.Event;
   import starling.filters.FragmentFilter;
   
   public class BoneMovieFastStarling extends Sprite
   {
       
      
      private var _direction:int = 1;
      
      private var _armature:FastArmature = null;
      
      private var _armatureData:ArmatureData = null;
      
      private var _styleName:String;
      
      private var _loadComplete:Boolean = true;
      
      private var _movie:DisplayObject;
      
      private var _defaultBoneActionType:String;
      
      private var _deafultImage:Image;
      
      private var _argsData:DictionaryData;
      
      private var defaultFilter:FragmentFilter = null;
      
      public function BoneMovieFastStarling(param1:String = ""){super();}
      
      public function setArmature(param1:FastArmature, param2:ArmatureData = null) : BoneMovieFastStarling{return null;}
      
      public function loadWait() : void{}
      
      public function gotoAndPlay(param1:String, param2:Number = -1, param3:Number = -1, param4:Number = NaN) : FastAnimationState{return null;}
      
      public function play(param1:String = "") : void{}
      
      public function stop() : void{}
      
      public function getBoneByName(param1:String) : FastBone{return null;}
      
      public function getBoneDataByName(param1:String) : BoneData{return null;}
      
      public function get boneMovieName() : String{return null;}
      
      public function get boneMovieLabels() : Vector.<String>{return null;}
      
      public function get currentLabel() : String{return null;}
      
      public function get armature() : FastArmature{return null;}
      
      public function set direction(param1:int) : void{}
      
      public function get direction() : int{return 0;}
      
      public function get styleName() : String{return null;}
      
      public function stopClock() : void{}
      
      public function startClock() : void{}
      
      override public function set filter(param1:FragmentFilter) : void{}
      
      private function clearArmature() : void{}
      
      public function get loadComplete() : Boolean{return false;}
      
      private function __onLoaderComplete(param1:BonesLoaderEvent) : void{}
      
      public function getValueByAttribute(param1:String) : String{return null;}
      
      override public function dispose() : void{}
   }
}
