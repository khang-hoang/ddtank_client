package petsBag.cmd
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import ddt.data.EquipType;
   import ddt.data.PetExperience;
   import ddt.data.analyze.PetconfigAnalyzer;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import pet.data.PetInfo;
   import petsBag.PetsBagManager;
   import petsBag.view.PetFoodNumberSelectFrame;
   
   public class CmdShowPetFoodNumberSelectFrame
   {
       
      
      private var _info:InventoryItemInfo;
      
      public function CmdShowPetFoodNumberSelectFrame(){super();}
      
      public function excute(param1:InventoryItemInfo) : void{}
      
      protected function __onFoodAmountResponse(param1:FrameEvent) : void{}
      
      private function needMaxFood(param1:int, param2:int) : int{return 0;}
   }
}
