package vip.view
{
   import baglocked.BaglockedManager;
   import com.pickgliss.effect.IEffect;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.events.PlayerPropertyEvent;
   import ddt.manager.BossBoxManager;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.LeavePageManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.TimeManager;
   import ddt.manager.VipIntegralShopManager;
   import ddt.utils.PositionUtils;
   import ddt.view.bossbox.AwardsViewII;
   import ddt.view.bossbox.VipInfoTipBox;
   import ddtBuried.BuriedManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import road7th.data.DictionaryData;
   import vip.VipController;
   
   public class GiveYourselfOpenView extends Sprite implements Disposeable
   {
      
      public static const VIP_LEVEL1:String = "112112";
      
      public static const VIP_LEVEL2:String = "112113";
      
      public static const VIP_LEVEL3:String = "112114";
      
      public static const VIP_LEVEL4:String = "112115";
      
      public static const VIP_LEVEL5:String = "112116";
      
      public static const VIP_LEVEL6:String = "112117";
      
      public static const VIP_LEVEL7:String = "112118";
      
      public static const VIP_LEVEL8:String = "112119";
      
      public static const VIP_LEVEL9:String = "112120";
      
      public static const VIP_LEVEL10:String = "112204";
      
      public static const VIP_LEVEL11:String = "112205";
      
      public static const VIP_LEVEL12:String = "112206";
      
      public static var _vipChestsArr:Array = ["112112","112113","112114","112115","112116","112117","112118","112119","112120","112204","112205","112206"];
      
      public static var millisecondsPerDay:int = 86400000;
      
      public static var vip_reward_arr:Array;
      
      private static const ONE_MONTH_PAY:int = ServerConfigManager.instance.VIPRenewalPrice[0];
      
      private static const THREE_MONTH_PAY:int = ServerConfigManager.instance.VIPRenewalPrice[1];
      
      private static const HALF_YEAR_PAY:int = ServerConfigManager.instance.VIPRenewalPrice[2];
      
      private static const VIP_VALIDITY:int = 24;
       
      
      private var _BG:MutipleImage;
      
      protected var _showPayMoneyBG:Image;
      
      protected var _openVipBtn:BaseButton;
      
      protected var _renewalVipBtn:BaseButton;
      
      protected var _rewardBtn:BaseButton;
      
      private var _rewardEffet:IEffect;
      
      protected var _money:FilterFrameText;
      
      protected var _isSelf:Boolean;
      
      private var _halfYearBtn:SelectedButton;
      
      private var _threeMonthBtn:SelectedButton;
      
      private var _oneMonthBtn:SelectedButton;
      
      protected var _vipPrivilegeTxt:VipPrivilegeTxt;
      
      private var _vipPrivilegeTxtBg:Image;
      
      private var _openVipTimeBtnGroup:SelectedButtonGroup;
      
      private var _selectedBtnImage:Image;
      
      public var discountCode:int;
      
      private var _halfYearTxt:FilterFrameText;
      
      private var _threeMonthTxt:FilterFrameText;
      
      private var _oneMonthTxt:FilterFrameText;
      
      private var awards:AwardsViewII;
      
      private var alertFrame:BaseAlerFrame;
      
      private var _vipInfoTipBox:VipInfoTipBox;
      
      private var _confirmFrame:BaseAlerFrame;
      
      private var _moneyConfirm:BaseAlerFrame;
      
      protected var days:int = 0;
      
      protected var payNum:int = 0;
      
      protected var time:String = "";
      
      public function GiveYourselfOpenView(param1:int = 0){super();}
      
      public static function getVipinfo() : Array{return null;}
      
      private function _init() : void{}
      
      private function initView() : void{}
      
      private function initContent() : void{}
      
      private function addTextAndBtn() : void{}
      
      protected function showOpenOrRenewal() : void{}
      
      protected function rewardBtnCanUse() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function __reward(param1:MouseEvent) : void{}
      
      private function __alertHandler(param1:FrameEvent) : void{}
      
      private function __responseVipInfoTipHandler(param1:FrameEvent) : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      private function showAwards(param1:ItemTemplateInfo) : void{}
      
      private function __sendReward(param1:Event) : void{}
      
      private function __propertyChange(param1:PlayerPropertyEvent) : void{}
      
      private function __upPayNum(param1:Event) : void{}
      
      protected function __openVip(param1:MouseEvent) : void{}
      
      private function __moneyConfirmHandler(param1:FrameEvent) : void{}
      
      private function __confirm(param1:FrameEvent) : void{}
      
      private function upVipDiscount() : void{}
      
      protected function sendVip() : void{}
      
      protected function send() : void{}
      
      protected function upPayMoneyText() : void{}
      
      private function _getStrArr(param1:DictionaryData) : Array{return null;}
      
      private function getVIPInfoTip(param1:DictionaryData) : Array{return null;}
      
      public function dispose() : void{}
   }
}
