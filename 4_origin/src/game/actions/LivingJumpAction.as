package game.actions
{
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Point;
   import game.animations.PhysicalObjFocusAnimation;
   import game.objects.GameLiving;
   import gameCommon.actions.BaseAction;
   
   public class LivingJumpAction extends BaseAction
   {
       
      
      private var _living:GameLiving;
      
      protected var _target:Point;
      
      private var _speed:int;
      
      private var _firstExcuted:Boolean = true;
      
      private var _jumpType:int;
      
      private var _moveMovie:MovieClip;
      
      private var _state:int = 0;
      
      private var _times:int = 0;
      
      private var _g:Number = 0.04;
      
      private var _tempSpeed:Number = 0;
      
      private var _ax:Number;
      
      private var _ay:Number;
      
      public function LivingJumpAction(param1:GameLiving, param2:Point, param3:int, param4:int = 0)
      {
         _living = param1;
         _target = param2;
         _speed = param3;
         _jumpType = param4;
         super();
      }
      
      override public function connect(param1:BaseAction) : Boolean
      {
         var _loc2_:LivingJumpAction = param1 as LivingJumpAction;
         if(_loc2_ && _loc2_._target.y > _target.y)
         {
            return true;
         }
         return false;
      }
      
      override public function prepare() : void
      {
         if(_isPrepare)
         {
            return;
         }
         _isPrepare = true;
         if(_living.isLiving)
         {
            _living.startMoving();
            if(_jumpType == 1)
            {
               _living.actionMovie.addEventListener("enterFrame",__checkMoveMovie);
            }
            if(_jumpType == 4)
            {
               prepareJump();
            }
         }
         else
         {
            finish();
         }
      }
      
      private function __checkMoveMovie(param1:Event) : void
      {
         if(_living.actionMovie.numChildren > 0 && _living.actionMovie.getChildAt(0) && _living.actionMovie.getChildAt(0) is MovieClip)
         {
            _living.actionMovie.removeEventListener("enterFrame",__checkMoveMovie);
            _moveMovie = _living.actionMovie.getChildAt(0) as MovieClip;
            _moveMovie.gotoAndStop(4);
            _moveMovie.addFrameScript(4,stopMovie);
            _moveMovie.addFrameScript(_moveMovie.totalFrames - 1,doActionStand);
         }
      }
      
      private function stopMovie() : void
      {
         _moveMovie.stop();
      }
      
      private function contuineMovie() : void
      {
         if(_moveMovie)
         {
            _moveMovie.addFrameScript(4,null);
            if(_moveMovie.currentFrame < _moveMovie.totalFrames)
            {
               _moveMovie.gotoAndStop(_moveMovie.currentFrame + 1);
            }
            _moveMovie.nextFrame();
         }
      }
      
      private function doActionStand() : void
      {
         _moveMovie.addFrameScript(_moveMovie.totalFrames - 1,null);
         _living.actionMovie.doAction("stand");
      }
      
      override public function execute() : void
      {
         if(_jumpType == 0)
         {
            jumpBass();
         }
         else if(_jumpType == 1)
         {
            jumpAmortize();
         }
         else if(_jumpType == 2)
         {
            jumpContinuous();
         }
         else if(_jumpType == 3)
         {
            if(_living.info.pos.x >= _target.x)
            {
               _living.info.direction = -1;
            }
            else
            {
               _living.info.direction = 1;
            }
            jumpWalk();
         }
         else if(_jumpType == 4)
         {
            jump();
         }
      }
      
      private function jumpAmortize() : void
      {
         if(_state > 4)
         {
            _times = Number(_times) + 1;
            _tempSpeed = _times * _times * _g * 50;
            setPoint(-_tempSpeed);
            if(_living.info.pos.y - _target.y >= 0)
            {
               _living.info.pos = _target;
               _times = -1;
               contuineMovie();
               _state = Number(_state) + 1;
               if(_state > 12)
               {
                  _state = 0;
                  executeAtOnce();
               }
            }
            else if(_moveMovie)
            {
               _moveMovie.gotoAndStop(6);
            }
         }
         else if(_living.info.pos.y - _target.y < -(_speed * 2))
         {
            _state = _state + 1;
            _times = 0;
            if(_moveMovie)
            {
               _moveMovie.gotoAndStop(5);
            }
         }
         else
         {
            _tempSpeed = _speed * 1.5 - _times * _g;
            if(_tempSpeed < _speed / 2)
            {
               _tempSpeed = _speed / 2;
            }
            setPoint(_tempSpeed);
         }
      }
      
      private function jumpContinuous() : void
      {
         _speed = 20;
         if(_state == 25)
         {
            _times = Number(_times) - 1;
            setPoint(-_speed / 2);
            if(_times <= 3)
            {
               _state = 0;
               _times = 0;
               if(_living.info.pos.y <= _target.y)
               {
                  executeAtOnce();
               }
            }
         }
         else if(_state == 24)
         {
            _times = Number(_times) + 1;
            setPoint(_speed + 1);
            if(_times >= 5)
            {
               _state = 25;
            }
         }
         else
         {
            _state = Number(_state) + 1;
         }
      }
      
      private function setPoint(param1:Number) : void
      {
         _living.info.pos = new Point(_target.x,_living.info.pos.y - param1);
         _living.map.animateSet.addAnimation(new PhysicalObjFocusAnimation(_living,25,-150));
      }
      
      private function setPoint2(param1:Number) : void
      {
         _living.info.pos = new Point(_living.info.pos.x - param1,_living.info.pos.y);
         _living.map.animateSet.addAnimation(new PhysicalObjFocusAnimation(_living,25,-150));
      }
      
      private function setPoint3() : void
      {
         _living.info.pos = new Point(_living.info.pos.x + _ax,_living.info.pos.y + _ay);
         _living.map.animateSet.addAnimation(new PhysicalObjFocusAnimation(_living,25,-150));
      }
      
      private function jumpBass() : void
      {
         if(_living.info.pos.y - _target.y <= _speed)
         {
            executeAtOnce();
         }
         else
         {
            setPoint(_speed);
         }
      }
      
      private function jumpWalk() : void
      {
         setPoint2(_speed);
         if(_speed < 0)
         {
            if(_living.info.pos.x >= _target.x)
            {
               executeAtOnce();
            }
         }
         else if(_living.info.pos.x <= _target.x)
         {
            executeAtOnce();
         }
      }
      
      private function jump() : void
      {
         if(Point.distance(_living.info.pos,_target) <= 10)
         {
            executeAtOnce();
         }
         else
         {
            setPoint3();
         }
      }
      
      private function prepareJump() : void
      {
         var _loc3_:Point = _living.info.pos;
         var _loc2_:Point = _target;
         var _loc6_:int = Point.distance(_loc3_,_loc2_);
         var _loc1_:Number = _loc6_ / _speed;
         var _loc5_:Number = _loc2_.x - _loc3_.x;
         var _loc4_:Number = _loc2_.y - _loc3_.y;
         _ax = _loc5_ / _loc1_;
         _ay = _loc4_ / _loc1_;
      }
      
      override public function executeAtOnce() : void
      {
         super.executeAtOnce();
         _living.info.pos = _target;
         if(_living.actionMovie)
         {
            if(_living.actionMovie.currentAction == "stand")
            {
               _living.info.doDefaultAction();
            }
         }
         finish();
      }
      
      private function finish() : void
      {
         _living.stopMoving();
         _isFinished = true;
      }
   }
}
