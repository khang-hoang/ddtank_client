package calendar.view
{
   import calendar.CalendarManager;
   import calendar.CalendarModel;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import flash.display.DisplayObject;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class CalendarGrid extends Sprite implements Disposeable
   {
       
      
      private var _dayCells:Vector.<DayCell>;
      
      private var _model:CalendarModel;
      
      private var _monthField:FilterFrameText;
      
      private var _enMonthField:FilterFrameText;
      
      private var _dateField:FilterFrameText;
      
      private var _todyField:FilterFrameText;
      
      private var _back:DisplayObject;
      
      private var _front:DisplayObject;
      
      private var _backGrid:Shape;
      
      private var _title:DisplayObject;
      
      private var _enYearField:FilterFrameText;
      
      private var _signField:FilterFrameText;
      
      private var _signFieldNumber:FilterFrameText;
      
      public function CalendarGrid(param1:CalendarModel){super();}
      
      private function configUI() : void{}
      
      private function drawLayer() : void{}
      
      private function addEvent() : void{}
      
      private function __todayChanged(param1:Event) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
