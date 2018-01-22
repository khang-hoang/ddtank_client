package
{
   import AvatarCollection.view.AvatarCollectionDelayConfirmFrame;
   import AvatarCollection.view.AvatarCollectionItemTip;
   import AvatarCollection.view.AvatarCollectionUnitListCell;
   import Indiana.IndianaMainView;
   import academy.AcademyController;
   import auctionHouse.controller.AuctionHouseController;
   import auctionHouse.view.AuctionDimCell;
   import auctionHouse.view.BagAuctionFrame;
   import bagAndInfo.amulet.EquipAmuletActivateGradeTips;
   import bagAndInfo.amulet.EquipAmuletActivatePhaseTips;
   import bagAndInfo.amulet.EquipAmuletMainFrame;
   import bagAndInfo.ddtKingGrade.DDTKingGradeFrame;
   import bagAndInfo.ddtKingGrade.DDTKingGradeTips;
   import bank.view.BankMainFrameView;
   import battleGroud.view.BattleGroundScrollPanelCell;
   import beadSystem.views.BeadInfoView;
   import beadSystem.views.PlayerBeadInfoView;
   import boguAdventure.view.BoguAdventureStateView;
   import campbattle.view.CampBattleView;
   import cardSystem.view.achievement.CardAchievementItem;
   import cardSystem.view.cardBag.CardBagListItem;
   import church.controller.ChurchRoomController;
   import church.controller.ChurchRoomListController;
   import church.view.invite.ChurchInvitePlayerItem;
   import church.view.weddingRoom.frame.WeddingRoomGuestListItemView;
   import civil.CivilController;
   import collectionTask.view.CollectionTaskMainView;
   import com.pickgliss.ui.FilterFrameTextWithTips;
   import consortiaDomain.view.ConsortiaDomainScene;
   import consortion.ConsortiaLevelTip;
   import consortion.ConsortionControl;
   import consortion.view.KeepPayTip;
   import consortion.view.guard.ConsortiaGuardState;
   import consortion.view.selfConsortia.BadgeTip;
   import consortion.view.selfConsortia.ConsortionInfoView;
   import consortion.view.selfConsortia.ConsortionUpGradeFrame;
   import consortion.view.selfConsortia.ConsortionWeekRewardItem;
   import consortion.view.selfConsortia.MemberItem;
   import consortionBattle.view.ConsBatScoreViewListCell;
   import consortionBattle.view.ConsortiaBattleMainView;
   import ddtKingFloat.views.DDTKingFloatBuyConfirmView;
   import ddtKingFloat.views.DDTKingFloatMainView;
   import demonChiYou.view.DemonChiYouSence;
   import dice.view.DiceSystem;
   import dragonBoat.view.DragonBoatShopFrame;
   import enchant.view.EnchantTips;
   import farm.viewx.FarmFriendListItem;
   import farm.viewx.FarmSwitchView;
   import farm.viewx.newPet.NewPetSkillPanel;
   import feedback.view.FeedbackReplyFrame;
   import feedback.view.FeedbackSubmitFrame;
   import fightLib.FightLibState;
   import fightLib.view.AwardCell;
   import fightLib.view.FightLibGameView;
   import floatParade.views.FloatParadeMainView;
   import game.view.TrainerGameView;
   import game.view.buff.tips.TrialBuffTip;
   import gameCommon.GameControl;
   import gameCommon.view.WebSpeedTip;
   import gameCommon.view.playerThumbnail.PlayerThumbnailTip;
   import gameStarling.view.GameView3D;
   import gameStarling.view.scene.GameViewScene;
   import godCardRaise.view.GodCardRaiseExchangeLeftCell;
   import guardCore.tips.GuardCoreBuffTips;
   import guardCore.view.GuardCoreTips;
   import guardCore.view.GuardCoreView;
   import happyLittleGame.LittileGameFrame;
   import happyLittleGame.cubesGame.CubeGameSceneView;
   import happyLittleGame.cubesGame.CubeGameStateView;
   import happyLittleGame.rank.SimpleGameRankFrame;
   import happyLittleGame.rank.items.SimpleGameRankItem;
   import horse.view.HorseSkillCellTip;
   import hotSpring.controller.HotSpringRoomListManager;
   import hotSpring.controller.HotSpringRoomManager;
   import invite.view.InviteListCell;
   import invite.view.NavButton;
   import kingBless.view.KingBlessBuffTipView;
   import littleGame.LittleGame;
   import littleGame.LittleHall;
   import magicStone.components.MagicStoneConfirmView;
   import magicStone.views.MagicStoneMainView;
   import magpieBridge.view.MagPieBridgeView;
   import mark.MarkMainFrame;
   import mark.mornUI.views.MarkChipTipUI;
   import mark.views.MarkLeftView;
   import mark.views.MarkOtherView;
   import mark.views.MarkRightView;
   import memoryGame.view.MemoryGameFrame;
   import mines.MinesMainFrame;
   import mines.view.DigShowView;
   import mines.view.DigView;
   import mines.view.EquipmentTip;
   import mines.view.HelpFrame;
   import mines.view.MinesBagView;
   import mines.view.ShopView;
   import mines.view.ToolView;
   import moneyTree.ui.MoneyTreeRmbConfirmAlert;
   import panicBuying.views.PanicBuyingTips;
   import petIsland.view.PetIslandMainView;
   import petsBag.view.PetAtlasBagFrame;
   import petsBag.view.item.PetAtlasTips;
   import petsBag.view.item.PetBenchBagTip;
   import pyramid.view.PyramidSystem;
   import quest.QuestStarListView;
   import redPackage.view.RedPackageGainListCell;
   import redPackage.view.RedPackageGainRecordListCell;
   import redPackage.view.RedPackageHelpCell;
   import room.view.RoomNotEnoughEnergyAlert;
   import room.view.RoomPlayerArea;
   import room.view.RoomPlayerItemIip;
   import room.view.chooseMap.PreviewAlertFrame;
   import room.view.roomView.SingleRoomView;
   import room.view.states.BattleRoomState;
   import room.view.states.ChallengeRoomState;
   import room.view.states.DungeonRoomState;
   import room.view.states.FreshmanRoomState;
   import room.view.states.MatchRoomState;
   import room.view.states.MissionRoomState;
   import room.view.states.TeamRoomState;
   import roomList.pvpRoomList.RoomListPlayerItem;
   import roomLoading.CampBattleLoadingState;
   import roomLoading.EncounterLoadingState;
   import roomLoading.RoomLoadingState;
   import roomLoading.SingleBattleMatchState;
   import signActivity.view.SignActivityFrame;
   import starling.scene.consortiaGuard.ConsortiaGuardScene;
   import stock.StockMainFrame;
   import stock.views.StockAccountView;
   import stock.views.StockAwardView;
   import stock.views.StockBuyFrame;
   import stock.views.StockBuySubmitFrame;
   import stock.views.StockHelpFrame;
   import stock.views.StockLoanFrame;
   import stock.views.StockMarketView;
   import stock.views.StockSellFrame;
   import stock.views.StockShopView;
   import store.fineStore.view.GhostTips;
   import store.newFusion.view.FusionNewUnitListCell;
   import store.view.embed.EmbedStoneTip;
   import store.view.exalt.ExaltTips;
   import store.view.strength.StrengthTips;
   import team.view.create.TeamCreateFrame;
   import team.view.im.TeamIMFrame;
   import team.view.main.TeamMainFrame;
   import team.view.rank.TeamRankFrame;
   import team.view.teamBattle.TeamBattleFrame;
   import texpSystem.view.TexpLevelPro;
   import texpSystem.view.TexpTip;
   import tofflist.TofflistController;
   import tofflist.view.TofflistTitleInfoTip;
   import totem.view.TotemActProConfirmFrame;
   import totem.view.TotemLeftView;
   import totem.view.TotemLeftWindowChapterIcon;
   import totem.view.TotemLeftWindowView;
   import totem.view.TotemMainView;
   import totem.view.TotemRightViewIconTxtCell;
   import totem.view.TotemRightViewTxtTxtCell;
   import treasureRoom.view.TreasureRoomView;
   import worldboss.WorldBossAwardController;
   import worldboss.view.WorldBossFightRoomState;
   
   public class CoreComponentEmbed
   {
       
      
      public function CoreComponentEmbed(){super();}
   }
}
