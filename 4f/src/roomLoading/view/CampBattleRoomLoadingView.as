package roomLoading.view
{
   import com.pickgliss.loader.LoadResourceManager;
   import ddt.data.BallInfo;
   import ddt.loader.MapLoader;
   import ddt.loader.StartupResourceLoader;
   import ddt.loader.TrainerLoader;
   import ddt.manager.BallManager;
   import ddt.manager.IMManager;
   import ddt.manager.MapManager;
   import ddt.manager.PathManager;
   import ddt.manager.PetSkillManager;
   import ddt.manager.PlayerManager;
   import gameCommon.LoadBombManager;
   import gameCommon.model.GameInfo;
   import gameCommon.model.GameNeedPetSkillInfo;
   import gameCommon.model.Player;
   import pet.data.PetInfo;
   import pet.data.PetSkillTemplateInfo;
   import room.RoomManager;
   import room.model.RoomPlayer;
   import trainer.controller.NewHandGuideManager;
   
   public class CampBattleRoomLoadingView extends RoomLoadingView
   {
       
      
      public function CampBattleRoomLoadingView(param1:GameInfo){super(null);}
      
      override protected function initLoadingItems() : void{}
   }
}
