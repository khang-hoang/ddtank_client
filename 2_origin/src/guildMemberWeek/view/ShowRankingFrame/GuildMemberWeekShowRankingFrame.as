package guildMemberWeek.view.ShowRankingFrame
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.geom.Point;
   import guildMemberWeek.manager.GuildMemberWeekManager;
   import guildMemberWeek.view.mainFrame.GuildMemberWeekFrameLeft;
   
   public class GuildMemberWeekShowRankingFrame extends BaseAlerFrame
   {
       
      
      private var _runkingBG:ScaleFrameImage;
      
      private var _runkingSG:ScaleFrameImage;
      
      private var _dataTitleRankingText:FilterFrameText;
      
      private var _dataTitleNameText:FilterFrameText;
      
      private var _dataTitleContributeText:FilterFrameText;
      
      private var _dataTitleRankingGiftText:FilterFrameText;
      
      private var _dataTitleAddRankingGiftText:FilterFrameText;
      
      private var _ShowMyRankingText:FilterFrameText;
      
      private var _ShowMyContributeText:FilterFrameText;
      
      private var _TopTenShowSprite:GuildMemberWeekFrameLeft;
      
      public function GuildMemberWeekShowRankingFrame()
      {
         super();
         initView();
         initEvent();
         initText();
      }
      
      private function initView() : void
      {
         titleText = LanguageMgr.GetTranslation("guildMemberWeek.MainFrame.guildMemberWeek.title");
         _runkingBG = ComponentFactory.Instance.creat("asset.guildmemberweek.MainrunkingBG.png");
         _runkingSG = ComponentFactory.Instance.creat("asset.guildmemberweek.MainrunkingSG.png");
         _runkingSG.y = 415;
         _runkingSG.x = 100;
         _TopTenShowSprite = ComponentFactory.Instance.creatCustomObject("guildmemberweek.MainFrame.GuildMemberWeekFrameLeft");
         _dataTitleRankingText = ComponentFactory.Instance.creatComponentByStylename("guildmemberweek.mainFrame.dataTitleRankingTxt");
         _dataTitleNameText = ComponentFactory.Instance.creatComponentByStylename("guildmemberweek.mainFrame.dataTitleNameTxt");
         _dataTitleContributeText = ComponentFactory.Instance.creatComponentByStylename("guildmemberweek.mainFrame.dataTitleContributeTxt");
         _dataTitleRankingGiftText = ComponentFactory.Instance.creatComponentByStylename("guildmemberweek.mainFrame.dataTitleRankingGiftTxt");
         _dataTitleAddRankingGiftText = ComponentFactory.Instance.creatComponentByStylename("guildmemberweek.mainFrame.dataTitleAddRankingGiftTxt");
         _ShowMyRankingText = ComponentFactory.Instance.creatComponentByStylename("guildmemberweek.mainFrame.ShowMyRankingTxt");
         _ShowMyContributeText = ComponentFactory.Instance.creatComponentByStylename("guildmemberweek.mainFrame.ShowMyContributeTxt");
         _TopTenShowSprite.y = 53;
         var _loc1_:int = 12;
         _dataTitleRankingText.y = _loc1_;
         _dataTitleNameText.y = _loc1_;
         _dataTitleContributeText.y = _loc1_;
         _dataTitleRankingGiftText.y = _loc1_;
         _dataTitleAddRankingGiftText.y = _loc1_;
         var _loc2_:Point = PositionUtils.creatPoint("guildMemberWeek.ShowRankingPos");
         _loc1_ = _loc2_.y;
         var _loc3_:int = _loc2_.x;
         _ShowMyRankingText.x = _ShowMyRankingText.x + _loc3_;
         _ShowMyRankingText.y = _loc1_;
         _ShowMyContributeText.x = _ShowMyContributeText.x + _loc3_;
         _ShowMyContributeText.y = _loc1_;
         addToContent(_runkingBG);
         addToContent(_runkingSG);
         addToContent(_dataTitleRankingText);
         addToContent(_dataTitleNameText);
         addToContent(_dataTitleContributeText);
         addToContent(_dataTitleRankingGiftText);
         addToContent(_dataTitleAddRankingGiftText);
         addToContent(_ShowMyRankingText);
         addToContent(_ShowMyContributeText);
         addToContent(_TopTenShowSprite);
      }
      
      private function initText() : void
      {
         _dataTitleRankingText.text = LanguageMgr.GetTranslation("guildMemberWeek.MainDataLabel.RankingLabel");
         _dataTitleNameText.text = LanguageMgr.GetTranslation("guildMemberWeek.MainDataLabel.NameLabel");
         _dataTitleContributeText.text = LanguageMgr.GetTranslation("guildMemberWeek.MainDataLabel.ContributeLabel");
         _dataTitleRankingGiftText.text = LanguageMgr.GetTranslation("guildMemberWeek.MainDataLabel.RankingGiftLabel");
         _dataTitleAddRankingGiftText.text = LanguageMgr.GetTranslation("guildMemberWeek.MainDataLabel.AddRankingGiftLabel");
         UpMyRanking();
         _TopTenShowSprite.UpTop10data("Member");
         _TopTenShowSprite.UpTop10data("PointBook");
      }
      
      private function initEvent() : void
      {
         addEventListener("response",__responseHandler);
      }
      
      private function removeEvent() : void
      {
         removeEventListener("response",__responseHandler);
      }
      
      private function __responseHandler(param1:FrameEvent) : void
      {
         if(param1.responseCode == 0 || param1.responseCode == 1)
         {
            SoundManager.instance.play("008");
            GuildMemberWeekManager.instance.disposeAllFrame(true);
         }
      }
      
      public function UpMyRanking() : void
      {
         _ShowMyRankingText.text = String(GuildMemberWeekManager.instance.model.MyRanking);
         _ShowMyContributeText.text = String(GuildMemberWeekManager.instance.model.MyContribute);
      }
      
      override public function dispose() : void
      {
         removeEvent();
         ObjectUtils.disposeAllChildren(this);
         super.dispose();
         _runkingBG = null;
         _runkingSG = null;
         _dataTitleRankingText = null;
         _dataTitleNameText = null;
         _dataTitleContributeText = null;
         _dataTitleRankingGiftText = null;
         _dataTitleAddRankingGiftText = null;
         _ShowMyRankingText = null;
         _ShowMyContributeText = null;
         if(_TopTenShowSprite)
         {
            ObjectUtils.disposeAllChildren(_TopTenShowSprite);
         }
         _TopTenShowSprite = null;
      }
   }
}
