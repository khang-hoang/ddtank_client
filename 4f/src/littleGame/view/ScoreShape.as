package littleGame.view
{
   import com.pickgliss.ui.core.Disposeable;
   import ddt.ddt_internal;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import littleGame.LittleGameManager;
   
   use namespace ddt_internal;
   
   public class ScoreShape extends Bitmap implements Disposeable
   {
      
      ddt_internal static const size:int = 22;
       
      
      private var _style:int;
      
      public function ScoreShape(param1:int = 0){super(null,null,null);}
      
      public function setScore(param1:int) : void{}
      
      public function dispose() : void{}
   }
}
