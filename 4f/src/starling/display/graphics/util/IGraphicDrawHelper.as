package starling.display.graphics.util
{
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import starling.core.RenderSupport;
   import starling.display.materials.IMaterial;
   
   public interface IGraphicDrawHelper
   {
       
      
      function initialize(param1:int) : void;
      
      function onDrawTriangles(param1:IMaterial, param2:RenderSupport, param3:VertexBuffer3D, param4:IndexBuffer3D, param5:Number = 1) : void;
   }
}
