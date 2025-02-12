package wonderfulActivity.items
{
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import ddt.manager.TimeManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import road7th.utils.DateUtils;
   import times.utils.timerManager.TimerJuggler;
   import times.utils.timerManager.TimerManager;
   import wasteRecycle.WasteRecycleController;
   import wasteRecycle.WasteRecycleManager;
   import wonderfulActivity.views.IRightView;
   
   public class WasteRecycleItem extends Sprite implements IRightView
   {
       
      
      private var _bg:Bitmap;
      
      private var _openBtn:SimpleBitmapButton;
      
      private var _timeText:FilterFrameText;
      
      private var _activityTime:Number;
      
      private var _timer:TimerJuggler;
      
      public function WasteRecycleItem()
      {
         super();
      }
      
      public function init() : void
      {
         _bg = UICreatShortcut.creatAndAdd("wonderfulactivity.wasteRecycleBg",this);
         _openBtn = UICreatShortcut.creatAndAdd("wonderfulactivity.wasteRecycleBtn",this);
         _timeText = UICreatShortcut.creatAndAdd("wonderfulactivity.wasteRecycleText",this);
         PositionUtils.setPos(this,"wonderfulactivity.wasteRecycleViewPos");
         _openBtn.addEventListener("click",__onOpen);
         var _loc1_:Number = TimeManager.Instance.Now().getTime();
         var _loc3_:Number = WasteRecycleManager.Instance.endDate.getTime();
         _activityTime = _loc3_ - _loc1_;
         var _loc2_:Array = DateUtils.dateTimeRemainArr(_activityTime / 1000);
         _timeText.text = LanguageMgr.GetTranslation("tank.timeRemain.msg1",_loc2_[0],_loc2_[1],_loc2_[2]);
         _timer = TimerManager.getInstance().addTimerJuggler(60000,0);
         _timer.addEventListener("timer",__onTimer,false,0,true);
         _timer.start();
      }
      
      private function __onTimer(param1:Event) : void
      {
         var _loc2_:* = null;
         _activityTime = _activityTime - 60000;
         if(_activityTime > 0)
         {
            _loc2_ = DateUtils.dateTimeRemainArr(_activityTime / 1000);
            _timeText.text = LanguageMgr.GetTranslation("tank.timeRemain.msg1",_loc2_[0],_loc2_[1],_loc2_[2]);
         }
         else
         {
            _timeText.text = LanguageMgr.GetTranslation("treasureHunting.over");
         }
      }
      
      private function __onOpen(param1:MouseEvent) : void
      {
         SoundManager.instance.playButtonSound();
         WasteRecycleController.instance.showView();
      }
      
      public function content() : Sprite
      {
         return this;
      }
      
      public function setState(param1:int, param2:int) : void
      {
      }
      
      public function dispose() : void
      {
         _timer.stop();
         _timer.removeEventListener("timer",__onTimer);
         TimerManager.getInstance().removeTimerJuggler(_timer.id);
         _openBtn.removeEventListener("click",__onOpen);
         ObjectUtils.disposeAllChildren(this);
         ObjectUtils.disposeObject(this);
         _bg = null;
         _openBtn = null;
         _timeText = null;
         _timer = null;
      }
   }
}
