package funnyGames.cubeGame.event
{
   import flash.events.Event;
   
   public class CubeGameEvent extends Event
   {
      
      public static const GAME_START:String = "gameStart";
      
      public static const CUBE_DEATH:String = "cubeDeath";
      
      public static const CUBE_DELETE:String = "cubeDelete";
      
      public static const CUBE_GENERATE:String = "cubeGenerate";
      
      public static const CUBE_RANDOM:String = "cubeRandom";
      
      public static const GAME_RESULT:String = "gameResult";
      
      public static const FIRE:String = "fire";
      
      public static const DESTROY:String = "destroy";
      
      public static const RANK:String = "rank";
      
      public static const COOLDOWN:String = "cooldown";
      
      public static const MINI_MAP:String = "miniMap";
      
      public static const CLEAR_MAP:String = "clearMap";
       
      
      private var _data:Object;
      
      public function CubeGameEvent(param1:String, param2:Object = null, param3:Boolean = false, param4:Boolean = false)
      {
         this._data = param2;
         super(param1,param3,param4);
      }
      
      public function get data() : Object
      {
         return this._data;
      }
   }
}
