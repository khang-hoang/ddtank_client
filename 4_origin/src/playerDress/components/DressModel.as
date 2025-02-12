package playerDress.components
{
   import ddt.data.player.PlayerInfo;
   import flash.events.EventDispatcher;
   
   public class DressModel extends EventDispatcher
   {
      
      public static var DEFAULT_MAN_STYLE:String = "1101,2101,3101,4101,5101,6101,7001,13101,15001";
      
      public static var DEFAULT_WOMAN_STYLE:String = "1201,2201,3201,4201,5201,6201,7002,13201,15001";
      
      public static const DRESS_LEN:int = 8;
       
      
      public var model:PlayerInfo;
      
      public function DressModel()
      {
         super();
         model = new PlayerInfo();
      }
   }
}
