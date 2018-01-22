package game.animations
{
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class StrHighSpeedLinearTween extends BaseStageTween
   {
       
      
      private var _speed:int = 8;
      
      public function StrHighSpeedLinearTween(param1:TweenObject = null)
      {
         super(param1);
      }
      
      override public function update(param1:DisplayObject) : Point
      {
         if(!_prepared)
         {
            return null;
         }
         var _loc2_:Point = new Point(param1.x,param1.y);
         var _loc3_:Point = new Point(target.x - param1.x,target.y - param1.y);
         if(_loc3_.length >= _speed)
         {
            _loc3_.normalize(_speed);
            _loc2_.x = _loc2_.x + _loc3_.x;
            _loc2_.y = _loc2_.y + _loc3_.y;
         }
         else
         {
            _loc2_ = target;
            _isFinished = true;
         }
         return _loc2_;
      }
      
      override protected function get propertysNeed() : Array
      {
         return ["target","speed"];
      }
   }
}
