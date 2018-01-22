package hall.player
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Sprite;
   import flash.geom.Point;
   import hall.player.vo.PlayerPetsInfo;
   
   public class HallPlayerView extends Sprite
   {
      
      public static var initFlag:Boolean;
      
      public static var petsDisInfo:PlayerPetsInfo;
      
      public static var pointsArray:Array = [Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,-1),new Point(0,2),new Point(0,0),new Point(0,-1),new Point(0,2)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(-3,-1),new Point(-3,1),new Point(-3,0),new Point(-3,-1),new Point(-3,1)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(-1,-1),new Point(-1,0),new Point(-1,-1),new Point(-1,0),new Point(-1,1)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(-3,-1),new Point(-3,2),new Point(-3,0),new Point(-3,-1),new Point(-3,2)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,-1),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(5,-10),new Point(5,-10),new Point(5,-10),new Point(5,-10),new Point(5,-10),new Point(5,-10),new Point(5,-10)]),Vector.<Point>([new Point(5,-10),new Point(5,-10),new Point(5,-10),new Point(5,-10),new Point(5,-10),new Point(5,-10),new Point(5,-10)]),Vector.<Point>([new Point(5,-10),new Point(5,-10),new Point(5,-10),new Point(5,-10),new Point(5,-10),new Point(5,-10),new Point(5,-10)]),Vector.<Point>([new Point(2,-5),new Point(2,-5),new Point(2,-5),new Point(2,-5),new Point(1,-5),new Point(1,-4),new Point(1,-4)])];
      
      public static var horsePicCherishPointsArray:Array = [Vector.<Point>([new Point(0,0),new Point(0,0),new Point(-3,-1),new Point(-3,1),new Point(-3,0),new Point(-3,-1),new Point(-3,1)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(-3,-1),new Point(-3,1),new Point(-3,0),new Point(-3,-1),new Point(-3,1)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,-1),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(-3,-1),new Point(-3,1),new Point(-3,0),new Point(-3,-1),new Point(-3,1)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(-3,-1),new Point(-3,1),new Point(-3,0),new Point(-3,-1),new Point(-3,1)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(-3,1),new Point(-3,0),new Point(-3,1),new Point(-3,0),new Point(-3,1)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(-3,-1),new Point(-3,1),new Point(-3,0),new Point(-3,-1),new Point(-3,1)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(-3,-1),new Point(-3,1),new Point(-3,0),new Point(-3,-1),new Point(-3,1)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(-3,-1),new Point(-3,1),new Point(-3,0),new Point(-3,-1),new Point(-3,1)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(-3,-1),new Point(-3,1),new Point(-3,0),new Point(-3,-1),new Point(-3,1)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(-3,-1),new Point(-3,1),new Point(-3,0),new Point(-3,-1),new Point(-3,1)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,-1),new Point(0,1),new Point(0,0),new Point(0,-1),new Point(0,1)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,-1),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,-1),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,-1),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,-1),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(16,0),new Point(16,0),new Point(16,0),new Point(16,0),new Point(16,-1),new Point(16,0),new Point(16,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,-1),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,-1),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,-1),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(6,0),new Point(6,0),new Point(6,0),new Point(6,0),new Point(6,0),new Point(6,0),new Point(6,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(5,-11),new Point(5,-11),new Point(5,-11),new Point(5,-11),new Point(5,-11),new Point(5,-11),new Point(5,-11)]),Vector.<Point>([new Point(3,-9),new Point(3,-9),new Point(3,-9),new Point(3,-9),new Point(3,-9),new Point(3,-9),new Point(3,-9)]),Vector.<Point>([new Point(0,0),new Point(-18,-10),new Point(-25,-11),new Point(-30,-12),new Point(-32,-12),new Point(-30,-11),new Point(-24,-10)]),Vector.<Point>([new Point(0,-9),new Point(0,-9),new Point(0,-9),new Point(0,-9),new Point(0,-9),new Point(0,-9),new Point(0,-9)]),Vector.<Point>([new Point(5,0),new Point(5,-2),new Point(5,-2),new Point(5,-2),new Point(5,-2),new Point(5,-2),new Point(5,-2)]),Vector.<Point>([new Point(0,0),new Point(5,0),new Point(5,0),new Point(5,0),new Point(5,0),new Point(5,0),new Point(5,-2)]),Vector.<Point>([new Point(5,-11),new Point(5,-13),new Point(5,-13),new Point(5,-13),new Point(5,-13),new Point(5,-13),new Point(5,-13)]),Vector.<Point>([new Point(5,0),new Point(5,-2),new Point(5,-2),new Point(5,-2),new Point(5,-2),new Point(5,-2),new Point(5,-2)]),null,null,Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0)]),Vector.<Point>([new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0),new Point(0,0)])];
       
      
      private var _bg:Sprite;
      
      private var _touchArea:Sprite;
      
      public function HallPlayerView(param1:Sprite)
      {
         super();
         _bg = param1;
         _touchArea = new Sprite();
         _bg.addChild(_touchArea);
         petsDisInfo = ComponentFactory.Instance.creatCustomObject("hall.petsInfo");
         initFlag = true;
      }
      
      public function dispose() : void
      {
         initFlag = false;
         if(_touchArea)
         {
            ObjectUtils.disposeAllChildren(_touchArea);
            _touchArea = null;
         }
         if(_bg)
         {
            ObjectUtils.disposeAllChildren(_bg);
            _bg = null;
         }
         ObjectUtils.disposeAllChildren(this);
         if(this.parent)
         {
            this.parent.removeChild(this);
         }
      }
      
      public function get touchArea() : Sprite
      {
         return _touchArea;
      }
   }
}
