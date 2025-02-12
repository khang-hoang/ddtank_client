package godsRoads.view
{
   import bagAndInfo.BagAndInfoManager;
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.events.ListItemEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.ListPanel;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import consortion.view.selfConsortia.ConsortionBankBagView;
   import ddt.bagStore.BagStore;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.BattleGroudManager;
   import ddt.manager.CheckWeaponManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.StateManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import godsRoads.GodRoadsController;
   import godsRoads.data.GodsRoadsMissionInfo;
   import godsRoads.data.GodsRoadsMissionVo;
   import godsRoads.data.GodsRoadsStepVo;
   import godsRoads.data.GodsRoadsVo;
   import godsRoads.manager.GodsRoadsManager;
   import godsRoads.model.GodsRoadsModel;
   import hallIcon.model.ActivityEnterGrapType;
   import labyrinth.LabyrinthManager;
   import quest.TaskManager;
   import ringStation.RingStationManager;
   import wantstrong.WantStrongControl;
   
   public class GodsRoadsView extends Frame
   {
       
      
      private var _view:Sprite;
      
      private var _model:GodsRoadsModel;
      
      private var _listPanel:ListPanel;
      
      private var _data:GodsRoadsVo;
      
      private var _currentLv:int;
      
      private var _currentMissionID:int;
      
      private var _currentStep:GodsRoadsStepVo;
      
      private var _missionContentTxt:FilterFrameText;
      
      private var _missionProgressTxt:FilterFrameText;
      
      private var _missionStatusTxt:FilterFrameText;
      
      private var _contentTxt:FilterFrameText;
      
      private var _progressTxt:FilterFrameText;
      
      private var _statusTxt:FilterFrameText;
      
      private var _stepProgressTxt:FilterFrameText;
      
      private var _stepProgressNum:FilterFrameText;
      
      private var _smallBtn:BaseButton;
      
      private var _bigBtn:BaseButton;
      
      private var _stepIsOpen:Boolean = false;
      
      private var _btnArr:Vector.<GodsRoadsFlag>;
      
      private var _missionAwardsView:Sprite;
      
      private var _stepAwardsView:Sprite;
      
      public function GodsRoadsView(){super();}
      
      public function initView() : void{}
      
      private function initBtn() : void{}
      
      public function changeSteps(param1:int, param2:int = 0) : void{}
      
      public function updateView(param1:GodsRoadsModel, param2:int = 0, param3:int = 0) : void{}
      
      private function flushStepAwards() : void{}
      
      private function initEvent() : void{}
      
      private function __response(param1:FrameEvent) : void{}
      
      private function getMissionAwards(param1:MouseEvent) : void{}
      
      private function getStepAwards(param1:MouseEvent) : void{}
      
      private function __itemClick(param1:ListItemEvent) : void{}
      
      private function __linkFunc(param1:TextEvent) : void{}
      
      override public function dispose() : void{}
   }
}
