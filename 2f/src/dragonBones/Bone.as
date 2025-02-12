package dragonBones
{
   import dragonBones.animation.AnimationState;
   import dragonBones.animation.TimelineState;
   import dragonBones.core.DBObject;
   import dragonBones.events.FrameEvent;
   import dragonBones.events.SoundEvent;
   import dragonBones.events.SoundEventManager;
   import dragonBones.objects.BoneData;
   import dragonBones.objects.DBTransform;
   import dragonBones.objects.Frame;
   import dragonBones.utils.TransformUtil;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class Bone extends DBObject
   {
      
      private static const _soundManager:SoundEventManager = SoundEventManager.getInstance();
       
      
      public var applyOffsetTranslationToChild:Boolean = true;
      
      public var applyOffsetRotationToChild:Boolean = true;
      
      public var applyOffsetScaleToChild:Boolean = false;
      
      public var displayController:String;
      
      protected var _boneList:Vector.<Bone>;
      
      protected var _slotList:Vector.<Slot>;
      
      protected var _timelineStateList:Vector.<TimelineState>;
      
      var _tween:DBTransform;
      
      var _tweenPivot:Point;
      
      var _needUpdate:int;
      
      var _globalTransformForChild:DBTransform;
      
      var _globalTransformMatrixForChild:Matrix;
      
      private var _tempGlobalTransformForChild:DBTransform;
      
      private var _tempGlobalTransformMatrixForChild:Matrix;
      
      public function Bone(){super();}
      
      public static function initWithBoneData(param1:BoneData) : Bone{return null;}
      
      override public function dispose() : void{}
      
      public function contains(param1:DBObject) : Boolean{return false;}
      
      public function addChildBone(param1:Bone, param2:Boolean = false) : void{}
      
      public function removeChildBone(param1:Bone, param2:Boolean = false) : void{}
      
      public function addSlot(param1:Slot) : void{}
      
      public function removeSlot(param1:Slot) : void{}
      
      override protected function setArmature(param1:Armature) : void{}
      
      public function getBones(param1:Boolean = true) : Vector.<Bone>{return null;}
      
      public function getSlots(param1:Boolean = true) : Vector.<Slot>{return null;}
      
      public function invalidUpdate() : void{}
      
      override protected function calculateRelativeParentTransform() : void{}
      
      function update(param1:Boolean = false) : void{}
      
      function hideSlots() : void{}
      
      function arriveAtFrame(param1:Frame, param2:TimelineState, param3:AnimationState, param4:Boolean) : void{}
      
      function addState(param1:TimelineState) : void{}
      
      function removeState(param1:TimelineState) : void{}
      
      function removeAllStates() : void{}
      
      private function blendingTimeline() : void{}
      
      private function sortState(param1:TimelineState, param2:TimelineState) : int{return 0;}
      
      public function get childArmature() : Armature{return null;}
      
      public function get display() : Object{return null;}
      
      public function set display(param1:Object) : void{}
      
      public function get node() : DBTransform{return null;}
      
      override public function set visible(param1:Boolean) : void{}
      
      public function get slot() : Slot{return null;}
   }
}
