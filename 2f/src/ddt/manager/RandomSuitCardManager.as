package ddt.manager
{
   import ddt.CoreManager;
   import ddt.data.BuffInfo;
   import ddt.events.PkgEvent;
   import ddt.utils.Helpers;
   import road7th.comm.PackageIn;
   
   public class RandomSuitCardManager extends CoreManager
   {
      
      public static const RANDOM_SUIT_CARD_UPDATED:String = "rsc_random_suit_card_updated";
      
      private static var instance:RandomSuitCardManager;
       
      
      private var _beginDate:Date;
      
      private var _validTime:int;
      
      private var _beginTime:Number;
      
      private var _endTime:Number;
      
      public function RandomSuitCardManager(param1:inner){super();}
      
      public static function getInstance() : RandomSuitCardManager{return null;}
      
      public function setup() : void{}
      
      protected function onRandomSuit(param1:PkgEvent) : void{}
      
      public function quickUse(param1:Boolean) : void{}
      
      public function useCard(param1:int) : void{}
      
      public function remainTime() : String{return null;}
      
      public function isExist() : Boolean{return false;}
   }
}

class inner
{
    
   
   function inner(){super();}
}
