package room.view.roomView
{
   import bagAndInfo.info.PlayerInfoViewControl;
   import battleGroud.BattleGroudControl;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.text.GradientText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import consortion.view.selfConsortia.Badge;
   import ddt.data.player.SelfInfo;
   import ddt.manager.ChatManager;
   import ddt.manager.CheckWeaponManager;
   import ddt.manager.GameInSocketOut;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import ddt.utils.PositionUtils;
   import ddt.view.academyCommon.academyIcon.AcademyIcon;
   import ddt.view.character.CharactoryFactory;
   import ddt.view.character.RoomCharacter;
   import ddt.view.common.LevelIcon;
   import ddt.view.common.MarriedIcon;
   import ddt.view.common.VipLevelIcon;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import gameCommon.GameControl;
   import room.RoomControl;
   import room.RoomManager;
   import room.model.RoomInfo;
   import room.view.SingleRoomRightPropView;
   import vip.VipController;
   
   public class SingleRoomView extends BaseAlerFrame
   {
      
      public static const ENCOUNTER:int = 1;
       
      
      protected var _roomInfo:RoomInfo;
      
      protected var _bg:Bitmap;
      
      protected var _singleRoomRightPropView:SingleRoomRightPropView;
      
      protected var _nameText:FilterFrameText;
      
      protected var _vipName:GradientText;
      
      protected var _guildTitle:FilterFrameText;
      
      protected var _guildName:FilterFrameText;
      
      protected var _player:RoomCharacter;
      
      protected var _selfInfo:SelfInfo;
      
      protected var _levelIcon:LevelIcon;
      
      protected var _vipIcon:VipLevelIcon;
      
      protected var _marriedIcon:MarriedIcon;
      
      protected var _academyIcon:AcademyIcon;
      
      protected var _iconContainer:VBox;
      
      protected var _badge:Badge;
      
      protected var _model:ScaleFrameImage;
      
      protected var _model2:ScaleFrameImage;
      
      protected var _battleRemainTimesText:FilterFrameText;
      
      protected var _battleRemainTimesLabel:Bitmap;
      
      protected var _explain:FilterFrameText;
      
      protected var _cancelBtn:SimpleBitmapButton;
      
      protected var _timerText:FilterFrameText;
      
      protected var _waiting:Bitmap;
      
      protected var _chatBtn:SimpleBitmapButton;
      
      protected var _timer:Timer;
      
      private var _singBattleState:int;
      
      private var _isCloseOrEscClick:Boolean = false;
      
      private var _type:int;
      
      private var _cancelBtnBg:Bitmap;
      
      private var _startBtn:SimpleBitmapButton;
      
      private var _cancelMatchBtn:SimpleBitmapButton;
      
      private var _1v1Btn:SelectedCheckButton;
      
      private var _1v1Txt:FilterFrameText;
      
      private var _2v2Btn:SelectedCheckButton;
      
      private var _2v2Txt:FilterFrameText;
      
      private var _3v3Btn:SelectedCheckButton;
      
      private var _3v3Txt:FilterFrameText;
      
      private var _4v4Btn:SelectedCheckButton;
      
      private var _4v4Txt:FilterFrameText;
      
      private var _BtnGroup:SelectedButtonGroup;
      
      private var _survival:Bitmap;
      
      protected var _isCancelWait:Boolean = true;
      
      public function SingleRoomView(param1:int = 6){super();}
      
      override protected function init() : void{}
      
      protected function createRightView() : void{}
      
      private function initTitle() : void{}
      
      protected function __BtnGroupChange(param1:Event) : void{}
      
      protected function createLeftView() : void{}
      
      protected function initEvent() : void{}
      
      protected function __onStartMatch(param1:Event) : void{}
      
      protected function __onStart(param1:MouseEvent) : void{}
      
      public function startTime() : void{}
      
      private function changeState(param1:int) : void{}
      
      protected function __chatClick(param1:MouseEvent) : void{}
      
      protected function removeEvent() : void{}
      
      protected function __onStartLoad(param1:Event) : void{}
      
      protected function __onCancel(param1:MouseEvent) : void{}
      
      protected function __onCancelMatch(param1:MouseEvent) : void{}
      
      protected function __timer(param1:TimerEvent) : void{}
      
      public function show() : void{}
      
      public function update() : void{}
      
      override public function dispose() : void{}
      
      public function set isCloseOrEscClick(param1:Boolean) : void{}
   }
}
