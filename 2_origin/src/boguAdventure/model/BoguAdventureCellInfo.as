package boguAdventure.model
{
   public class BoguAdventureCellInfo
   {
      
      public static const MINE:int = -1;
      
      public static const SPACE:int = -2;
      
      public static const SIGN:int = 1;
      
      public static const OPEN:int = 2;
      
      public static const NOT_OPEN:int = 3;
       
      
      public var state:int;
      
      public var result:int;
      
      public var aroundMineCount:int;
      
      public var index:int;
      
      public function BoguAdventureCellInfo()
      {
         super();
      }
   }
}
