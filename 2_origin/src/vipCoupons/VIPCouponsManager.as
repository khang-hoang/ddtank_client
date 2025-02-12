package vipCoupons
{
   import ddt.CoreManager;
   import ddt.events.CEvent;
   import flash.events.IEventDispatcher;
   
   public class VIPCouponsManager extends CoreManager
   {
      
      public static const OPENVIEW:String = "vipCouponesOpenView";
      
      public static const USE_VIPCOUPONS:String = "useVipCoupons";
      
      private static var _instance:VIPCouponsManager;
       
      
      private var _curCoupons:int = 0;
      
      private var _place:int;
      
      private var _bagType:int;
      
      private var _vipDiscountUseDate:Date = null;
      
      private var _vipDiscountValidity:Date = null;
      
      public function VIPCouponsManager(param1:IEventDispatcher = null)
      {
         super(param1);
      }
      
      public static function get instance() : VIPCouponsManager
      {
         if(_instance == null)
         {
            _instance = new VIPCouponsManager();
         }
         return _instance;
      }
      
      override protected function start() : void
      {
         dispatchEvent(new CEvent("vipCouponesOpenView",[_bagType,_place]));
      }
      
      public function get curCoupons() : int
      {
         return _curCoupons;
      }
      
      public function set curCoupons(param1:int) : void
      {
         _curCoupons = param1;
      }
      
      public function useVipCoupons(param1:int, param2:int) : void
      {
         _bagType = param1;
         _place = param2;
         dispatchEvent(new CEvent("useVipCoupons",[_bagType,_place]));
      }
      
      public function openShow(param1:int, param2:int) : void
      {
         _bagType = param1;
         _place = param2;
         show();
      }
   }
}
