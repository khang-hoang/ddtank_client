package ddt.manager
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   
   public class VipIntegralShopManager extends EventDispatcher
   {
      
      public static const VIPINTEGRAL_OPENVIEW:String = "vipintgralOpenView";
      
      private static var _instance:VipIntegralShopManager;
       
      
      public function VipIntegralShopManager(param1:IEventDispatcher = null){super(null);}
      
      public static function get Instance() : VipIntegralShopManager{return null;}
      
      public function show() : void{}
   }
}
