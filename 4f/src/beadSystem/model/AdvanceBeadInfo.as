package beadSystem.model
{
   import flash.events.EventDispatcher;
   import road7th.data.DictionaryData;
   
   public class AdvanceBeadInfo extends EventDispatcher
   {
       
      
      public var advancedTempId:int;
      
      public var runeName:String;
      
      public var advanceDesc:String;
      
      public var mainMaterials:String;
      
      public var auxiliaryMaterials:String;
      
      public var quality:int;
      
      public var maxLevelTempRunId:int;
      
      public function AdvanceBeadInfo(){super();}
      
      public function getAllBead() : Array{return null;}
      
      public function verificationMaterials(param1:int, param2:int) : Boolean{return false;}
   }
}
