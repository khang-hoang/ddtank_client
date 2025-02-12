package church.view.weddingRoomList.frame
{
   import church.controller.ChurchRoomListController;
   import church.model.ChurchRoomListModel;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedIconButton;
   import com.pickgliss.ui.controls.TextInput;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.image.ScaleLeftRightImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.text.TextArea;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.ChurchRoomInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.LeavePageManager;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SoundManager;
   import ddt.utils.FilterWordManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import store.HelpFrame;
   
   public class WeddingRoomCreateView extends BaseAlerFrame
   {
       
      
      private var _controller:ChurchRoomListController;
      
      private var _model:ChurchRoomListModel;
      
      private var _bgLeftTop:ScaleBitmapImage;
      
      private var _bgLeftBottom:ScaleBitmapImage;
      
      private var _bgRight:Scale9CornerImage;
      
      private var _alertInfo:AlertInfo;
      
      private var _roomCreateRoomNameTitle:Bitmap;
      
      private var _roomCreateIntro:Bitmap;
      
      private var _roomCreateTimeTitle:Bitmap;
      
      private var _roomCreateIntroMaxChBg:Bitmap;
      
      private var _txtCreateRoomName:FilterFrameText;
      
      private var _chkCreateRoomPassword:SelectedIconButton;
      
      private var _chkCreateRoomIsGuest:SelectedIconButton;
      
      private var _txtCreateRoomPassword:TextInput;
      
      private var _roomCreateNormalSelectedBtn:SelectedButton;
      
      private var _roomNormalMoneyTxt:FilterFrameText;
      
      private var _roomCreateTimeLuxurySelectedBtn:SelectedButton;
      
      private var _roomTimeLuxuryMoneyTxt:FilterFrameText;
      
      private var _roomCreateTimeGroup:SelectedButtonGroup;
      
      private var _roomCreateIntroMaxChLabel:FilterFrameText;
      
      private var _txtRoomCreateIntro:TextArea;
      
      private var _flower:Bitmap;
      
      private var _bg1:ScaleBitmapImage;
      
      private var _selectedIconButtonTxt1:FilterFrameText;
      
      private var _selectedIconButtonTxt2:FilterFrameText;
      
      private var _discountIcon:ScaleLeftRightImage;
      
      private var _discountIconII:ScaleLeftRightImage;
      
      private var _discountTxt:FilterFrameText;
      
      private var _discountTxtII:FilterFrameText;
      
      private var _help:BaseButton;
      
      public function WeddingRoomCreateView(){super();}
      
      public function setController(param1:ChurchRoomListController, param2:ChurchRoomListModel) : void{}
      
      protected function initialize() : void{}
      
      private function setView() : void{}
      
      private function removeView() : void{}
      
      private function setEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function __onClickHelpHandler(param1:MouseEvent) : void{}
      
      private function onIsGuest(param1:MouseEvent) : void{}
      
      private function onIsGuest1(param1:MouseEvent) : void{}
      
      private function onIsGuest2(param1:MouseEvent) : void{}
      
      private function onRoomPasswordCheck(param1:MouseEvent) : void{}
      
      private function onFrameResponse(param1:FrameEvent) : void{}
      
      private function createRoomConfirm() : void{}
      
      private function checkRoom() : Boolean{return false;}
      
      private function onIntroChange(param1:Event) : void{}
      
      public function show() : void{}
      
      override public function dispose() : void{}
   }
}
