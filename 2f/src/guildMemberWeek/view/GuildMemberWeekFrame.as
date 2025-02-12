package guildMemberWeek.view
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.player.SelfInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.LeavePageManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import guildMemberWeek.manager.GuildMemberWeekManager;
   import guildMemberWeek.view.mainFrame.GuildMemberWeekFrameLeft;
   import guildMemberWeek.view.mainFrame.GuildMemberWeekFrameRight;
   
   public class GuildMemberWeekFrame extends Frame
   {
       
      
      private var _helpBtn:BaseButton;
      
      private var _AddRankingBtn:BaseButton;
      
      private var _AddRankingSprite:Sprite;
      
      private var _AddRankingBg:Bitmap;
      
      private var _AddRankingReadyShow:DisplayObject;
      
      private var _runkingBG:ScaleFrameImage;
      
      private var _runkingSG:ScaleFrameImage;
      
      private var _AddRecordBG:ScaleFrameImage;
      
      private var _TenMBG:ScaleFrameImage;
      
      private var _panel:ScrollPanel;
      
      private var _upDataTimeTxt:FilterFrameText;
      
      private var _upExplainText:FilterFrameText;
      
      private var _dataTitleRankingText:FilterFrameText;
      
      private var _dataTitleNameText:FilterFrameText;
      
      private var _dataTitleContributeText:FilterFrameText;
      
      private var _dataTitleRankingGiftText:FilterFrameText;
      
      private var _dataTitleAddRankingGiftText:FilterFrameText;
      
      private var _ActivityStartTimeShowText:FilterFrameText;
      
      private var _ActivityEndTimeShowText:FilterFrameText;
      
      private var _ShowMyRankingText:FilterFrameText;
      
      private var _ShowMyContributeText:FilterFrameText;
      
      private var _AddRanking:GuildMemberWeekFrameRight;
      
      private var _TopTenShowSprite:GuildMemberWeekFrameLeft;
      
      private var _selfInfo:SelfInfo;
      
      public function GuildMemberWeekFrame(){super();}
      
      public function get TopTenShowSprite() : GuildMemberWeekFrameLeft{return null;}
      
      private function initView() : void{}
      
      public function upDataTimeTxt() : void{}
      
      private function initText() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function __onClickHelpHandler(param1:MouseEvent) : void{}
      
      private function __onClickAddRankingHandler(param1:MouseEvent) : void{}
      
      public function UpMyRanking() : void{}
      
      public function ClearRecord() : void{}
      
      public function UpRecord() : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      override public function dispose() : void{}
   }
}
