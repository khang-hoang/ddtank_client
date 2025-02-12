package panicBuying.views
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.SelectedButtonForArrange;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.container.SimpleTileList;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ShopItemInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.ShopManager;
   import ddt.manager.SoundManager;
   import ddt.manager.TimeManager;
   import ddt.utils.HelpFrameUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import panicBuying.PanicBuyingManager;
   import panicBuying.components.PanicBuyingItem;
   import panicBuying.data.PBuyingItemInfo;
   import road7th.utils.DateUtils;
   import wonderfulActivity.WonderfulActivityManager;
   import wonderfulActivity.data.GiftBagInfo;
   import wonderfulActivity.data.GiftConditionInfo;
   import wonderfulActivity.data.GiftRewardInfo;
   import wonderfulActivity.data.GmActivityInfo;
   import wonderfulActivity.event.WonderfulActivityEvent;
   
   public class PanicBuyingFrame extends Frame
   {
      
      private static const NUM:int = 3;
      
      private static const ITEM_COUNT:int = 6;
      
      public static const LEVEL:int = 0;
      
      public static const VIP:int = 1;
      
      public static const ENTIRE:int = 2;
      
      public static const INDIV:int = 3;
      
      public static const NEW_ENTIRE:int = 4;
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _vipBg:Bitmap;
      
      private var _dateBmp:Bitmap;
      
      private var _dateTxt:FilterFrameText;
      
      private var _remainBmp:Bitmap;
      
      private var _remainTxt:FilterFrameText;
      
      private var _tabGroup:SelectedButtonGroup;
      
      private var _hBox:Sprite;
      
      private var _levelRushBtn:SelectedButtonForArrange;
      
      private var _vipRushBtn:SelectedButtonForArrange;
      
      private var _entireRushBtn:SelectedButtonForArrange;
      
      private var _newEntireRushBtn:SelectedButtonForArrange;
      
      private var _indivRushBtn:SelectedButtonForArrange;
      
      private var _typeArr:Array;
      
      private var _tileList:SimpleTileList;
      
      private var _itemVec:Vector.<PanicBuyingItem>;
      
      private var _firstBtn:SimpleBitmapButton;
      
      private var _preBtn:SimpleBitmapButton;
      
      private var _nextBtn:SimpleBitmapButton;
      
      private var _lastBtn:SimpleBitmapButton;
      
      private var _pageBg:Scale9CornerImage;
      
      private var _pageTxt:FilterFrameText;
      
      private var _btnHelp:BaseButton;
      
      private var _helpSprite:Sprite;
      
      private var _helpScrollPanel:ScrollPanel;
      
      private var _helpTxt:FilterFrameText;
      
      private var _helpTxtWidth:int;
      
      private var _curType:int;
      
      private var _curPage:int;
      
      private var _xmlData:GmActivityInfo;
      
      private var _giftInfoDic:Dictionary;
      
      private var tmpFlag:int;
      
      public function PanicBuyingFrame(){super();}
      
      private function initView() : void{}
      
      private function initView2() : void{}
      
      private function refreshTab() : void{}
      
      private function addEvents() : void{}
      
      private function initTimer() : void{}
      
      private function timerHandler() : void{}
      
      public function getTimeDiff(param1:Date, param2:Date) : String{return null;}
      
      protected function __lastBtnClick(param1:MouseEvent) : void{}
      
      protected function __nextBtnClick(param1:MouseEvent) : void{}
      
      protected function __preBtnClick(param1:MouseEvent) : void{}
      
      protected function __firstBtnClick(param1:MouseEvent) : void{}
      
      protected function __changeHandler(param1:Event) : void{}
      
      private function update() : void{}
      
      private function setHelpTxt(param1:String) : void{}
      
      private function getGiftBagInCurPage(param1:int) : Array{return null;}
      
      private function getGiftBagTotal() : int{return 0;}
      
      private function dateTrim(param1:String) : String{return null;}
      
      private function updateFrameStyle() : void{}
      
      public function refreshActivity(param1:WonderfulActivityEvent = null) : void{}
      
      protected function __responseHandler(param1:FrameEvent) : void{}
      
      private function removeEvents() : void{}
      
      override public function dispose() : void{}
   }
}
