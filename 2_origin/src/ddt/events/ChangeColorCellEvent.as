package ddt.events
{
   import bagAndInfo.cell.BagCell;
   import flash.events.Event;
   
   public class ChangeColorCellEvent extends Event
   {
      
      public static const CLICK:String = "changeColorCellClickEvent";
      
      public static const SETCOLOR:String = "setColor";
       
      
      private var _data:BagCell;
      
      public function ChangeColorCellEvent(param1:String, param2:BagCell, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         _data = param2;
      }
      
      public function get data() : BagCell
      {
         return _data;
      }
   }
}
