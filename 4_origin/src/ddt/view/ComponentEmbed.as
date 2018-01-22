package ddt.view
{
   import HappyRecharge.HappyRechargeSpecialItemTip;
   import bagAndInfo.bag.ring.RingSystemSkillTips;
   import bagAndInfo.info.PlayerInfoView;
   import bagAndInfo.tips.CallPropTxtTip;
   import bagAndInfo.tips.CharacterPropTxtTip;
   import beadSystem.controls.DrillItem;
   import beadSystem.tips.BeadBtnTip;
   import beadSystem.tips.BeadUpgradeTip;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.ListPanel;
   import com.pickgliss.ui.controls.OutMainListPanel;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedIconButton;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.controls.alert.SimpleAlert;
   import com.pickgliss.ui.controls.alert.SimpleAlertWithNotShowAgain;
   import com.pickgliss.ui.controls.cell.SimpleDropListCell;
   import com.pickgliss.ui.controls.cell.SimpleListCellFactory;
   import com.pickgliss.ui.controls.cell.TextButtonListCellAdapter;
   import com.pickgliss.ui.image.CloneImage;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.image.MovieImage;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.image.ScaleNumberFrameImage;
   import com.pickgliss.ui.image.ScaleUpDownImage;
   import com.pickgliss.ui.image.ScorllThumbScaleBitmap;
   import com.pickgliss.ui.image.TiledImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import ddt.view.academyCommon.academyIcon.AcademyIconTip;
   import ddt.view.caddyII.BLESSView;
   import ddt.view.caddyII.CaddyAwardListFrame;
   import ddt.view.caddyII.CaddyViewII;
   import ddt.view.caddyII.badLuck.BadLuckView;
   import ddt.view.caddyII.badLuck.BlessLuckView;
   import ddt.view.caddyII.bead.BeadViewII;
   import ddt.view.caddyII.celebration.CelebrationBoxView;
   import ddt.view.caddyII.offerPack.OfferItem;
   import ddt.view.caddyII.offerPack.OfferPackViewII;
   import ddt.view.caddyII.reader.ReadAwardsView;
   import ddt.view.chat.ChatFriendListItem;
   import ddt.view.common.SexIcon;
   import ddt.view.tips.BuffTip;
   import ddt.view.tips.CardBoxTipPanel;
   import ddt.view.tips.CardsTipPanel;
   import ddt.view.tips.ChangeNumToolTip;
   import ddt.view.tips.ChatFaceTip;
   import ddt.view.tips.EquipmentCardsTips;
   import ddt.view.tips.FightBuffTip;
   import ddt.view.tips.FineSuitTips;
   import ddt.view.tips.FineSuitTipsItem;
   import ddt.view.tips.GoodTip;
   import ddt.view.tips.GradeLimitTip;
   import ddt.view.tips.GrooveTipPanel;
   import ddt.view.tips.GuildIconTip;
   import ddt.view.tips.HallBuildTip;
   import ddt.view.tips.KingBlessTip;
   import ddt.view.tips.LevelTip;
   import ddt.view.tips.MarriedTip;
   import ddt.view.tips.MultipleLineTip;
   import ddt.view.tips.PayBuffTip;
   import ddt.view.tips.PetSkillCellTip;
   import ddt.view.tips.PetTxtTip;
   import ddt.view.tips.PreviewTip;
   import ddt.view.tips.PropTxtTip;
   import ddt.view.tips.SmallPlayerTip;
   import ddt.view.tips.ToolPropTip;
   import ddt.view.tips.WordWrapLineTip;
   import ddtKingWay.view.DDTKingWayMainView;
   import game.view.propertyWaterBuff.PropertyWaterBuffTip;
   import gemstone.items.GemstoneLeftViewTip;
   import gemstone.items.GemstoneTip;
   import hall.tasktrack.HallTaskTrackListCell;
   import horse.amulet.HorseAmuletEquipTips;
   import latentEnergy.LatentEnergyPreTip;
   import login.view.RoleItem;
   import lotteryTicket.view.LotteryTicketCell;
   import magicHouse.magicCollection.MagicHouseCollectionItemTip;
   import magicHouse.magicCollection.MagicHouseTitleTip;
   import mark.MarkChipTip;
   import petsBag.view.PetFoodNumberSelectFrame;
   import redEnvelope.view.RedEnvelopeMainFrame;
   import shop.manager.ShopBuyManager;
   import shop.manager.ShopGiftsManager;
   import shop.view.ShopPresentClearingFrame;
   import times.TimesUpdateFrame;
   import times.view.TimesThumbnailPointTip;
   import trainer.view.LevelRewardFrame;
   import trainer.view.SystemOpenPromptFrame;
   import treasure.view.TreasureMain;
   import vip.view.VIPPrivilegeFrame;
   
   public class ComponentEmbed
   {
       
      
      public function ComponentEmbed()
      {
         super();
         BaseButton;
         SimpleBitmapButton;
         BaseAlerFrame;
         SimpleAlert;
         MovieImage;
         Image;
         ScaleBitmapImage;
         ScorllThumbScaleBitmap;
         FilterFrameText;
         MutipleImage;
         TiledImage;
         ScaleFrameImage;
         SelectedButton;
         SelectedIconButton;
         Scale9CornerImage;
         ScaleUpDownImage;
         SimpleListCellFactory;
         TextButtonListCellAdapter;
         GoodTip;
         PlayerInfoView;
         LevelTip;
         ListPanel;
         ToolPropTip;
         ChangeNumToolTip;
         SmallPlayerTip;
         PropTxtTip;
         PetTxtTip;
         ChatFaceTip;
         BuffTip;
         MarriedTip;
         MultipleLineTip;
         WordWrapLineTip;
         RoleItem;
         GuildIconTip;
         PetFoodNumberSelectFrame;
         CaddyViewII;
         BLESSView;
         BeadViewII;
         OfferPackViewII;
         OfferItem;
         AcademyIconTip;
         SimpleDropListCell;
         FriendDropListCell;
         CardsTipPanel;
         GrooveTipPanel;
         LevelRewardFrame;
         ShopBuyManager;
         ShopGiftsManager;
         SexIcon;
         ShopPresentClearingFrame;
         CardBoxTipPanel;
         OutMainListPanel;
         FightBuffTip;
         TimesThumbnailPointTip;
         CloneImage;
         ChatFriendListItem;
         ReadAwardsView;
         BadLuckView;
         BlessLuckView;
         PayBuffTip;
         PetSkillCellTip;
         PreviewTip;
         DrillItem;
         CharacterPropTxtTip;
         VIPPrivilegeFrame;
         EquipmentCardsTips;
         HallBuildTip;
         KingBlessTip;
         GradeLimitTip;
         BeadBtnTip;
         BeadUpgradeTip;
         GemstoneTip;
         GemstoneLeftViewTip;
         SystemOpenPromptFrame;
         CaddyAwardListFrame;
         PropertyWaterBuffTip;
         LatentEnergyPreTip;
         CelebrationBoxView;
         TimesUpdateFrame;
         HallTaskTrackListCell;
         FineSuitTips;
         FineSuitTipsItem;
         HappyRechargeSpecialItemTip;
         RingSystemSkillTips;
         ScaleNumberFrameImage;
         MagicHouseCollectionItemTip;
         MagicHouseTitleTip;
         CallPropTxtTip;
         TreasureMain;
         RedEnvelopeMainFrame;
         SimpleAlertWithNotShowAgain;
         LotteryTicketCell;
         HorseAmuletEquipTips;
         DDTKingWayMainView;
      }
   }
}
