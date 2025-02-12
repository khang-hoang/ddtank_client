package littleGame.data
{
   import com.pickgliss.ui.core.Disposeable;
   
   public class Node implements Disposeable
   {
       
      
      public var x:int;
      
      public var y:int;
      
      public var f:Number;
      
      public var g:Number;
      
      public var h:Number;
      
      public var walkable:Boolean;
      
      public var parent:Node;
      
      public var version:int = -1;
      
      public var links:Vector.<Node>;
      
      public function Node(param1:int, param2:int){super();}
      
      public function dispose() : void{}
      
      public function toString() : String{return null;}
   }
}
