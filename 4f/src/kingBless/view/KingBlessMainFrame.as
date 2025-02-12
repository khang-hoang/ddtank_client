package kingBless.view
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.image.ScaleLeftRightImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.LeavePageManager;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.FilterWordManager;
   import ddt.utils.PositionUtils;
   import ddtBuried.BuriedManager;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import kingBless.KingBlessManager;
   import shop.view.ShopPresentClearingFrame;
   
   public class KingBlessMainFrame extends Frame
   {
       
      
      private var _awardIconBtnBg:Bitmap;
      
      private var _monthBtnBg:Bitmap;
      
      private var _bottomBg:Bitmap;
      
      private var _txtBg:Bitmap;
      
      private var _oneMonthBtn:SelectedButton;
      
      private var _threeMonthBtn:SelectedButton;
      
      private var _sixMonthBtn:SelectedButton;
      
      private var _selectedButtonGroup:SelectedButtonGroup;
      
      private var _openFriendBtn:SimpleBitmapButton;
      
      private var _openBtn:SimpleBitmapButton;
      
      private var _awardIconList:Vector.<Image>;
      
      private var _awardNameTxtList:Vector.<FilterFrameText>;
      
      private var _tipTxt:FilterFrameText;
      
      private var _descTxt:FilterFrameText;
      
      private var _vbox:VBox;
      
      private var _scrollPanel:ScrollPanel;
      
      private var _nameList:Array;
      
      private var _descList:Array;
      
      private var _tipList:Array;
      
      private var _tipNoOpenTxt:String;
      
      private var _needMoneyList:Array;
      
      private var _needMoneyArray:Array;
      
      private var _openTimeDescList:Array;
      
      private var _giveFriendOpenFrame:ShopPresentClearingFrame;
      
      private var _discountIcon:ScaleLeftRightImage;
      
      private var _discountIcon1:ScaleLeftRightImage;
      
      private var _discountIcon2:ScaleLeftRightImage;
      
      private var _discountTxt:FilterFrameText;
      
      private var _discountTxt1:FilterFrameText;
      
      private var _discountTxt2:FilterFrameText;
      
      private var _halfYearTxt:FilterFrameText;
      
      private var _threeMonthTxt:FilterFrameText;
      
      private var _oneMonthTxt:FilterFrameText;
      
      private var _friendInfo:Object;
      
      private var payMoney:int;
      
      private var _isGive:Boolean;
      
      public function KingBlessMainFrame(){super();}
      
      private function initData() : void{}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function openHandler(param1:MouseEvent) : void{}
      
      private function judgeOpen() : Boolean{return false;}
      
      private function openConfirmFrame() : void{}
      
      private function __confirm(param1:FrameEvent) : void{}
      
      private function openFriendHandler(param1:MouseEvent) : void{}
      
      private function __responseHandler2(param1:FrameEvent) : void{}
      
      private function __presentBtnClick(param1:MouseEvent) : void{}
      
      private function refreshView(param1:Event) : void{}
      
      private function selectedButtonChange(param1:Event) : void{}
      
      private function refreshOpenBtn() : void{}
      
      private function refreshIconTipData() : void{}
      
      private function refreshShowTxt() : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      private function removeEvent() : void{}
      
      override public function dispose() : void{}
   }
}
