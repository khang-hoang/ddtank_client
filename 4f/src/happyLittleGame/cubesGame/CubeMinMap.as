package happyLittleGame.cubesGame
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.text.TextField;
   import funnyGames.cubeGame.CubeGameManager;
   import funnyGames.cubeGame.event.CubeGameEvent;
   
   public class CubeMinMap extends Sprite implements Disposeable
   {
       
      
      private var _txt:TextField;
      
      private var _sp:Sprite;
      
      private var _height:uint;
      
      private var _lastArr:Array;
      
      public function CubeMinMap(){super();}
      
      private function freshMap(param1:CubeGameEvent) : void{}
      
      private function lastMap() : void{}
      
      public function dispose() : void{}
   }
}
