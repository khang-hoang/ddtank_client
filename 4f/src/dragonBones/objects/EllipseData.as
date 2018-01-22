package dragonBones.objects
{
   import flash.geom.Point;
   
   public final class EllipseData implements IAreaData
   {
       
      
      public var name:String;
      
      public var width:Number;
      
      public var height:Number;
      
      public var transform:DBTransform;
      
      public var pivot:Point;
      
      public function EllipseData(){super();}
      
      public function dispose() : void{}
   }
}
