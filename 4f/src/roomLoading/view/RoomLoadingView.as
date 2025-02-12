package roomLoading.view
{
   import bombKing.BombKingControl;
   import bombKing.BombKingManager;
   import com.greensock.TweenMax;
   import com.pickgliss.loader.LoadResourceManager;
   import com.pickgliss.loader.ModuleLoader;
   import com.pickgliss.manager.NoviceDataManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import consortion.ConsortionModelController;
   import ddt.data.BallInfo;
   import ddt.loader.MapLoader;
   import ddt.loader.StartupResourceLoader;
   import ddt.loader.TrainerLoader;
   import ddt.manager.BallManager;
   import ddt.manager.GameInSocketOut;
   import ddt.manager.IMManager;
   import ddt.manager.KeyboardShortcutsManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MapManager;
   import ddt.manager.PathManager;
   import ddt.manager.PetSkillManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.StateManager;
   import ddt.manager.TimeManager;
   import ddt.utils.PositionUtils;
   import drgnBoat.DrgnBoatManager;
   import escort.EscortManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TextEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   import gameCommon.BuffManager;
   import gameCommon.GameControl;
   import gameCommon.LoadBombManager;
   import gameCommon.model.GameInfo;
   import gameCommon.model.GameNeedPetSkillInfo;
   import gameCommon.model.Player;
   import horse.HorseManager;
   import horse.data.HorseSkillVo;
   import labyrinth.LabyrinthManager;
   import pet.data.PetInfo;
   import pet.data.PetSkillTemplateInfo;
   import road7th.data.DictionaryData;
   import room.RoomManager;
   import room.model.RoomPlayer;
   import sevenDouble.SevenDoubleManager;
   import trainer.controller.LevelRewardManager;
   import trainer.controller.NewHandGuideManager;
   import trainer.controller.WeakGuildManager;
   import worldboss.WorldBossManager;
   
   public class RoomLoadingView extends Sprite implements Disposeable
   {
      
      protected static const DELAY_TIME:int = 1000;
       
      
      protected var _bg:Bitmap;
      
      protected var _gameInfo:GameInfo;
      
      protected var _versus:RoomLoadingVersusItem;
      
      protected var _countDownTxt:RoomLoadingCountDownNum;
      
      protected var _battleField:RoomLoadingBattleFieldItem;
      
      protected var _tipsItem:RoomLoadingTipsItem;
      
      protected var _viewerItem:RoomLoadingViewerItem;
      
      protected var _dungeonMapItem:RoomLoadingDungeonMapItem;
      
      protected var _characterItems:Vector.<RoomLoadingCharacterItem>;
      
      protected var _countDownTimer:Timer;
      
      protected var _selfFinish:Boolean;
      
      protected var _trainerLoad:TrainerLoader;
      
      protected var _startTime:Number;
      
      protected var _chatViewBg:Image;
      
      protected var blueIdx:int = 1;
      
      protected var redIdx:int = 1;
      
      protected var blueCharacterIndex:int = 1;
      
      protected var redCharacterIndex:int = 1;
      
      protected var blueBig:RoomLoadingCharacterItem;
      
      protected var redBig:RoomLoadingCharacterItem;
      
      protected var _leaving:Boolean = false;
      
      protected var _amountOfFinishedPlayer:int = 0;
      
      protected var _hasLoadedFinished:DictionaryData;
      
      protected var _delayBeginTime:Number = 0;
      
      private var _cancelLink:FilterFrameText;
      
      protected var _unloadedmsg:String = "";
      
      public function RoomLoadingView(param1:GameInfo){super();}
      
      protected function init() : void{}
      
      private function addCancelLink() : void{}
      
      private function deleteCancelLink() : void{}
      
      private function __onCancelLinkClick(param1:TextEvent) : void{}
      
      protected function initLoadingItems() : void{}
      
      protected function laodingTrainer() : void{}
      
      protected function loadingPetSkillAsset() : void{}
      
      protected function loadingNeededMovies() : void{}
      
      protected function loadingBombAsset() : void{}
      
      protected function loadingPetAsset(param1:PetInfo) : void{}
      
      protected function loadingHorseAsset(param1:Array) : void{}
      
      private function setSurvivalCharacter(param1:Player, param2:RoomLoadingCharacterItem, param3:int) : void{}
      
      private function setSurvivalRoomItemPos(param1:RoomLoadingCharacterItem, param2:int) : void{}
      
      protected function __onLoadingFinished(param1:Event) : void{}
      
      protected function initCharacter(param1:Player, param2:RoomLoadingCharacterItem) : void{}
      
      protected function initRoomItem(param1:RoomLoadingCharacterItem) : void{}
      
      protected function leave() : void{}
      
      protected function __countDownTick(param1:TimerEvent) : void{}
      
      protected function __countDownComplete(param1:TimerEvent) : void{}
      
      protected function checkAnimationIsFinished() : Boolean{return false;}
      
      protected function checkProgress() : Boolean{return false;}
      
      protected function checkIsEnoughDelayTime() : Boolean{return false;}
      
      public function dispose() : void{}
   }
}
