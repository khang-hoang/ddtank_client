package par.particals
{
   import flash.display.DisplayObject;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import par.ShapeManager;
   import par.lifeeasing.AbstractLifeEasing;
   import road7th.math.randRange;
   
   public class Particle
   {
       
      
      public var x:Number;
      
      public var y:Number;
      
      public var alpha:Number;
      
      public var color:Number;
      
      public var scale:Number;
      
      public var rotation:Number;
      
      public var life:Number;
      
      public var age:Number;
      
      public var size:Number;
      
      public var v:Number;
      
      public var angle:Number;
      
      public var gv:Number;
      
      public var motionV:Number;
      
      public var weight:Number;
      
      public var spin:Number;
      
      public var image:DisplayObject;
      
      public var info:ParticleInfo;
      
      public function Particle(param1:ParticleInfo){super();}
      
      public function initialize() : void{}
      
      public function update(param1:Number) : void{}
      
      public function get matrixTransform() : Matrix{return null;}
      
      public function get colorTransform() : ColorTransform{return null;}
   }
}
