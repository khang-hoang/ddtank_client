package game.animations
{
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class StrLinearTween extends BaseStageTween
   {
       
      
      private var _speed:int = 1;
      
      private var _duration:int = 0;
      
      public function StrLinearTween(param1:TweenObject = null){super(null);}
      
      override public function get type() : String{return null;}
      
      override public function update(param1:DisplayObject) : Point{return null;}
      
      public function set speed(param1:int) : void{}
      
      public function get speed() : int{return 0;}
      
      public function set duration(param1:int) : void{}
      
      public function get duration() : int{return 0;}
      
      override protected function get propertysNeed() : Array{return null;}
   }
}
