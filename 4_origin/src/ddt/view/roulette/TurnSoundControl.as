package ddt.view.roulette
{
   import ddt.manager.SoundManager;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class TurnSoundControl extends EventDispatcher
   {
       
      
      private var _timer:Timer;
      
      private var _isPlaySound:Boolean = false;
      
      private var _oneArray:Array;
      
      private var _threeArray:Array;
      
      private var _number:int = 0;
      
      public function TurnSoundControl(param1:IEventDispatcher = null)
      {
         _oneArray = ["127","128","129","130","131"];
         _threeArray = ["130","131","133","132","135","134","129","128","127","132","135","134","129","128","127"];
         super(param1);
         init();
         initEvent();
      }
      
      private function init() : void
      {
         _timer = new Timer(6000);
         _timer.stop();
      }
      
      private function initEvent() : void
      {
         _timer.addEventListener("timer",_timerOne);
         _timer.addEventListener("timerComplete",_timerComplete);
      }
      
      private function _timerOne(param1:TimerEvent) : void
      {
         SoundManager.instance.stop("124");
         SoundManager.instance.play("124");
      }
      
      private function _timerComplete(param1:TimerEvent) : void
      {
      }
      
      public function playSound() : void
      {
         if(!_isPlaySound)
         {
            _isPlaySound = true;
            _timer.delay = 6000;
            _timer.reset();
            _timer.start();
            SoundManager.instance.play("124");
         }
      }
      
      public function playOneStep() : void
      {
         var _loc1_:String = _oneArray[_number];
         SoundManager.instance.play(_loc1_);
         _number = _number >= 4?0:Number(_number + 1);
      }
      
      public function playThreeStep(param1:int) : void
      {
         var _loc2_:String = _threeArray[param1];
         SoundManager.instance.play(_loc2_);
      }
      
      public function stop() : void
      {
         _isPlaySound = false;
         _timer.stop();
         SoundManager.instance.stop("124");
      }
      
      public function dispose() : void
      {
         if(_timer)
         {
            _timer.stop();
            _timer.removeEventListener("timer",_timerOne);
            _timer.removeEventListener("timerComplete",_timerComplete);
            _timer = null;
         }
         _oneArray = null;
         _threeArray = null;
      }
   }
}
