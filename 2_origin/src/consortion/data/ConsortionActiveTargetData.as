package consortion.data
{
   public final class ConsortionActiveTargetData
   {
       
      
      public var targetLv:int = 0;
      
      public var targetId:int = 0;
      
      public var conditionValue:int = 0;
      
      public var compareType:int = 0;
      
      private var _processValue:int = 0;
      
      public function ConsortionActiveTargetData()
      {
         super();
      }
      
      public function get processValue() : int
      {
         return _processValue;
      }
      
      public function set processValue(param1:int) : void
      {
         _processValue = param1;
      }
   }
}