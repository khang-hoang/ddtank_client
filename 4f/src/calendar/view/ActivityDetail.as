package calendar.view
{
   import activeEvents.data.ActiveEventsInfo;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.TextInput;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.TimeManager;
   import ddt.utils.PositionUtils;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import times.utils.timerManager.TimerJuggler;
   import times.utils.timerManager.TimerManager;
   
   public class ActivityDetail extends Sprite implements Disposeable
   {
       
      
      private var _timeField:FilterFrameText;
      
      private var _awardField:FilterFrameText;
      
      private var _contentField:FilterFrameText;
      
      private var _timeTitle:FilterFrameText;
      
      private var _awardTitle:FilterFrameText;
      
      private var _contentTitle:FilterFrameText;
      
      private var _timeWidth:int;
      
      private var _awardWidth:int;
      
      private var _contentWidth:int;
      
      private var _time:DisplayObject;
      
      private var _award:DisplayObject;
      
      private var _content:DisplayObject;
      
      private var _input:DisplayObject;
      
      private var _lines:Vector.<DisplayObject>;
      
      private var _inputField:TextInput;
      
      private var _hasKey:int;
      
      private var _timer:TimerJuggler;
      
      private var _info:ActiveEventsInfo;
      
      public function ActivityDetail(){super();}
      
      private static function calculateLast(param1:Date, param2:Date) : String{return null;}
      
      private function configUI() : void{}
      
      private function __timer(param1:Event) : void{}
      
      private function startMark() : void{}
      
      public function setData(param1:ActiveEventsInfo) : void{}
      
      override public function get height() : Number{return 0;}
      
      public function getInputField() : TextInput{return null;}
      
      public function dispose() : void{}
   }
}
