package vip.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MovieImage;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.text.GradientText;
   import com.pickgliss.utils.DisplayUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.OpitionEnum;
   import ddt.events.PlayerPropertyEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.view.PlayerPortraitView;
   import ddt.view.common.VipLevelIcon;
   import ddt.view.tips.OneLineTip;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import vip.VipController;
   
   public class VipFrameHead extends Sprite implements Disposeable
   {
      
      private static var eachLevelEXP:Array = [0,150,350,700,1250,2050,3050,4250,5650];
       
      
      private var _topBG:DisplayObject;
      
      private var _selfName:FilterFrameText;
      
      private var _vipName:GradientText;
      
      private var _vipIcon:VipLevelIcon;
      
      private var _ClockImg:Bitmap;
      
      private var _dueTime:FilterFrameText;
      
      private var _vipLevelProgress:VipLevelProgress;
      
      private var _noticeOnVip12LoginSelectedBtn:SelectedButton;
      
      private var _noticeOnVip12LoginText:FilterFrameText;
      
      private var _vipHelpBtn:TextButton;
      
      private var _vipRuleDescriptionBtn:TextButton;
      
      private var _selfLevel:FilterFrameText;
      
      private var _nextLevel:FilterFrameText;
      
      private var _dueDataWord:FilterFrameText;
      
      private var _dueData:FilterFrameText;
      
      private var _DueTipSprite:Sprite;
      
      private var _DueTip:OneLineTip;
      
      private var _portrait:PlayerPortraitView;
      
      private var _isVipRechargeShow:Boolean = false;
      
      private var _isShowReward:Boolean = false;
      
      private var _descriptionFrame:Frame;
      
      private var _frameBg:Scale9CornerImage;
      
      private var _okBtn:TextButton;
      
      private var _contenttxt:MovieImage;
      
      private var _attestBtn:ScaleFrameImage;
      
      private var _getIntegralBtn:BaseButton;
      
      private var _helpFrame:VIPHelpFrame;
      
      public function VipFrameHead(param1:Boolean = false, param2:Boolean = true){super();}
      
      private function init() : void{}
      
      private function creatGetIntegralBtn() : void{}
      
      private function addTipSprite() : void{}
      
      private function addEvent() : void{}
      
      protected function __onGetIntegralClick(param1:MouseEvent) : void{}
      
      protected function onSelectedChange(param1:Event) : void{}
      
      private function __helpHandler(param1:MouseEvent) : void{}
      
      private function __helpFrameRespose(param1:FrameEvent) : void{}
      
      private function __closeHelpFrame(param1:MouseEvent) : void{}
      
      private function disposeHelpFrame() : void{}
      
      private function removeEvent() : void{}
      
      protected function vipStateChange(param1:Event) : void{}
      
      private function __showDueTip(param1:MouseEvent) : void{}
      
      private function __hideDueTip(param1:MouseEvent) : void{}
      
      private function __showHelpFrame(param1:MouseEvent) : void{}
      
      protected function __responseHandler(param1:FrameEvent) : void{}
      
      private function __propertyChange(param1:PlayerPropertyEvent) : void{}
      
      private function upView() : void{}
      
      private function grayOrLightVIP() : void{}
      
      public function dispose() : void{}
   }
}
