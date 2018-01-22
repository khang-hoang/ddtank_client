package dragonBones.objects
{
   public final class BoneData
   {
       
      
      public var name:String;
      
      public var parent:String;
      
      public var length:Number;
      
      public var global:DBTransform;
      
      public var transform:DBTransform;
      
      public var inheritScale:Boolean;
      
      public var inheritRotation:Boolean;
      
      public function BoneData(){super();}
      
      public function dispose() : void{}
   }
}
