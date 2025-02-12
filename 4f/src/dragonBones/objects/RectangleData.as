package dragonBones.objects
{
   import flash.geom.Point;
   
   public final class RectangleData implements IAreaData
   {
       
      
      public var name:String;
      
      public var width:Number;
      
      public var height:Number;
      
      public var transform:DBTransform;
      
      public var pivot:Point;
      
      public function RectangleData(){super();}
      
      public function dispose() : void{}
   }
}
