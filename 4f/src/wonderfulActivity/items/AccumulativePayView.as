package wonderfulActivity.items
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.controls.container.SimpleTileList;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SocketManager;
   import ddt.utils.PositionUtils;
   import ddt.view.tips.OneLineTip;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   import wonderfulActivity.WonderfulActivityManager;
   import wonderfulActivity.data.GiftRewardInfo;
   import wonderfulActivity.data.GmActivityInfo;
   import wonderfulActivity.data.SendGiftInfo;
   import wonderfulActivity.views.IRightView;
   
   public class AccumulativePayView extends Sprite implements IRightView
   {
      
      private static const LENGTH:int = 10;
      
      private static const LENGTH2:int = 8;
      
      private static const NUMBER:int = 5;
      
      private static const NUMBER2:int = 4;
      
      private static const PRIZE_LEN:int = 7;
       
      
      private var _content:Sprite;
      
      private var _bg:Bitmap;
      
      private var _title:Bitmap;
      
      private var _shadowBG:Bitmap;
      
      private var _progressBack1:ScaleBitmapImage;
      
      private var _progressBack2:ScaleBitmapImage;
      
      private var _itemList:SimpleTileList;
      
      private var _itemArr:Array;
      
      private var _prizeBG:Bitmap;
      
      private var _prizeList:HBox;
      
      private var _prizeArr:Array;
      
      private var _alreadyPayTxt:FilterFrameText;
      
      private var _alreadyPayValue:FilterFrameText;
      
      private var _nextPrizeNeedTxt:FilterFrameText;
      
      private var _nextPrizeNeedValue:FilterFrameText;
      
      private var _getPrizeBtn:SimpleBitmapButton;
      
      private var _progressList:SimpleTileList;
      
      private var _progressArr:Array;
      
      private var _tip:OneLineTip;
      
      private var activityData:Dictionary;
      
      private var activityInitData:Dictionary;
      
      private var actId:String;
      
      private var accPayValue:int;
      
      private var giftCurInfoDic:Dictionary;
      
      private var giftData:Array;
      
      private var index:int;
      
      public function AccumulativePayView(){super();}
      
      public function init() : void{}
      
      private function initView() : void{}
      
      private function initData() : void{}
      
      private function checkData() : Boolean{return false;}
      
      private function initEvent() : void{}
      
      private function progressBackOver(param1:MouseEvent) : void{}
      
      private function progressBackOut(param1:MouseEvent) : void{}
      
      private function showProgress(param1:int) : void{}
      
      private function showGift(param1:int) : void{}
      
      private function clearPrizeArr() : void{}
      
      private function __GetPrizeBtnClick(param1:MouseEvent) : void{}
      
      private function __itemBoxClick(param1:MouseEvent) : void{}
      
      private function removeEvents() : void{}
      
      public function dispose() : void{}
      
      public function content() : Sprite{return null;}
      
      public function setState(param1:int, param2:int) : void{}
   }
}
