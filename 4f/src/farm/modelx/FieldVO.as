package farm.modelx
{
   import ddt.manager.ItemManager;
   import ddt.manager.TimeManager;
   
   public class FieldVO
   {
       
      
      public var fieldID:int;
      
      public var seedID:int;
      
      public var plantTime:Date;
      
      public var AccelerateTime:int;
      
      public var fieldValidDate:int;
      
      public var payTime:Date;
      
      public var gainCount:int;
      
      public var autoSeedID:int;
      
      public var autoFertilizerID:int;
      
      public var autoSeedIDCount:int;
      
      public var autoFertilizerCount:int;
      
      public var isAutomatic:Boolean;
      
      public var automaticTime:Date;
      
      public function FieldVO(){super();}
      
      public function get isGrow() : Boolean{return false;}
      
      public function get realNeedTime() : int{return 0;}
      
      public function get plantGrownPhase() : int{return 0;}
      
      public function get isDig() : Boolean{return false;}
   }
}
