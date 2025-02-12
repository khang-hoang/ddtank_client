package carnivalActivity
{
   import carnivalActivity.view.RookieRankTip;
   import ddt.manager.TimeManager;
   
   public class CarnivalActivityControl
   {
      
      private static var _instance:CarnivalActivityControl;
       
      
      public var currentType:int;
      
      public var currentChildType:int;
      
      public var actBeginTime:Number;
      
      public var actEndTime:Number;
      
      public var getBeginTime:Number;
      
      public var getEndTime:Number;
      
      public var lastClickTime:int;
      
      public function CarnivalActivityControl(){super();}
      
      public static function get instance() : CarnivalActivityControl{return null;}
      
      public function canGetAward() : Boolean{return false;}
      
      public function rookieRankCanGetAward() : Boolean{return false;}
   }
}
