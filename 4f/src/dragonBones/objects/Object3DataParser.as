package dragonBones.objects
{
   import dragonBones.utils.DBDataUtil;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public final class Object3DataParser
   {
      
      private static var tempDragonBonesData:DragonBonesData;
       
      
      public function Object3DataParser(){super();}
      
      public static function parseSkeletonData(param1:Object, param2:Boolean = false, param3:Dictionary = null) : DragonBonesData{return null;}
      
      private static function parseArmatureData(param1:Object, param2:DragonBonesData, param3:uint, param4:Boolean, param5:Boolean, param6:Dictionary) : ArmatureData{return null;}
      
      private static function parseBoneData(param1:Object, param2:Boolean) : BoneData{return null;}
      
      private static function parseRectangleData(param1:Object) : RectangleData{return null;}
      
      private static function parseEllipseData(param1:Object) : EllipseData{return null;}
      
      private static function parseSlotData(param1:Object) : SlotData{return null;}
      
      private static function parseSkinData(param1:Object, param2:DragonBonesData) : SkinData{return null;}
      
      private static function parseSkinSlotData(param1:Object, param2:DragonBonesData) : SlotData{return null;}
      
      private static function parseDisplayData(param1:Object, param2:DragonBonesData) : DisplayData{return null;}
      
      static function parseAnimationData(param1:Object, param2:ArmatureData, param3:uint, param4:Boolean) : AnimationData{return null;}
      
      private static function parseSlotTimeline(param1:Object, param2:int, param3:uint, param4:Boolean) : SlotTimeline{return null;}
      
      private static function parseSlotFrame(param1:Object, param2:uint, param3:Boolean) : SlotFrame{return null;}
      
      private static function parseTransformTimeline(param1:Object, param2:int, param3:uint, param4:Boolean) : TransformTimeline{return null;}
      
      private static function parseMainFrame(param1:Object, param2:uint) : Frame{return null;}
      
      private static function parseTransformFrame(param1:Object, param2:uint, param3:Boolean) : TransformFrame{return null;}
      
      private static function parseTimeline(param1:Object, param2:Timeline) : void{}
      
      private static function parseFrame(param1:Object, param2:Frame, param3:uint) : void{}
      
      private static function parseTransform(param1:Object, param2:DBTransform, param3:Point = null) : void{}
      
      private static function parseColorTransform(param1:Object, param2:ColorTransform) : void{}
      
      private static function getBoolean(param1:Object, param2:String, param3:Boolean) : Boolean{return false;}
      
      private static function getNumber(param1:Object, param2:String, param3:Number) : Number{return 0;}
   }
}
