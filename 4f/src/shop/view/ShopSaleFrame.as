package shop.view
{
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ShopItemInfo;
   import ddt.events.CrazyTankSocketEvent;
   import ddt.events.PkgEvent;
   import ddt.events.PlayerPropertyEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ShopManager;
   import ddt.manager.SocketManager;
   import ddt.manager.TimeManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import road7th.comm.PackageIn;
   import road7th.utils.DateUtils;
   import shop.ShopEvent;
   import shop.manager.ShopSaleManager;
   
   public class ShopSaleFrame extends Frame
   {
      
      private static const CELL_COUNT:int = 9;
      
      private static const MIN_PAGE:int = 1;
       
      
      private var _bg:Bitmap;
      
      private var _currentPage:int = 1;
      
      private var _maxPage:int;
      
      private var _timeText:FilterFrameText;
      
      private var _firstPage:BaseButton;
      
      private var _prePageBtn:BaseButton;
      
      private var _nextPageBtn:BaseButton;
      
      private var _endPageBtn:BaseButton;
      
      private var _currentPageTxt:FilterFrameText;
      
      private var currentPage:int = 1;
      
      private var _currentPageTxtBg:Scale9CornerImage;
      
      private var _cellGroup:SelectedButtonGroup;
      
      private var _cellList:Vector.<ShopSaleItemCell>;
      
      private var _cellContainer:Sprite;
      
      private var _moneyText:FilterFrameText;
      
      private var _surplusTime:Number;
      
      private var _timer:Timer;
      
      public function ShopSaleFrame(){super();}
      
      override protected function init() : void{}
      
      private function __pageBtnClick(param1:MouseEvent) : void{}
      
      public function updateSaleGoods() : void{}
      
      private function setTimeView() : void{}
      
      private function __onUpdateTime(param1:TimerEvent) : void{}
      
      private function activityEnd() : void{}
      
      private function transSecond(param1:Number) : String{return null;}
      
      private function __onUpdateMoney(param1:PlayerPropertyEvent) : void{}
      
      private function __updataLimitAreaCountHandler(param1:ShopEvent) : void{}
      
      private function __onUpdateLimitCount(param1:CrazyTankSocketEvent) : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      override public function dispose() : void{}
   }
}
