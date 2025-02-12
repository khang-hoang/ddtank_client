package bank.data
{
   import flash.events.Event;
   
   public class GameBankEvent extends Event
   {
      
      public static const BANK_RIGHT_VIEW_CHANGE:String = "bank_right_view_change";
      
      public static const BANK_RIGHT_VIEW_BACK:String = "bank_right_view_back";
      
      public static const BANK_LEFT_VIEW_LINE_SHOW:String = "bank_left_view_line_show";
      
      public static const BANK_SAVE_SUCCESS:String = "bank_save_success";
      
      public static const BANK_GET_SUCCESS:String = "bank_get_success";
      
      public static const BANK_LEFT_ITEM_CLICK:String = "bank_left_item_click";
       
      
      private var _data:Object;
      
      public function GameBankEvent(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         _data = param2;
      }
      
      public function get data() : Object
      {
         return _data;
      }
   }
}
