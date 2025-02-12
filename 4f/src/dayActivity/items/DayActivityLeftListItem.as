package dayActivity.items
{
   import bagAndInfo.BagAndInfoManager;
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.ComponentSetting;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import consortion.ConsortionModelManager;
   import cryptBoss.CryptBossManager;
   import dayActivity.ActivityData;
   import dayActivity.DayActivityControl;
   import ddt.manager.BattleGroudManager;
   import ddt.manager.CheckWeaponManager;
   import ddt.manager.GameInSocketOut;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import ddt.utils.CheckMoneyUtils;
   import ddt.utils.HelperUIModuleLoad;
   import ddtBuried.BuriedManager;
   import farm.FarmModelController;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   import giftSystem.GiftManager;
   import gypsyShop.ctrl.GypsyShopManager;
   import gypsyShop.model.GypsyNPCModel;
   import horse.HorseManager;
   import labyrinth.LabyrinthControl;
   import league.LeagueManager;
   import littleGame.LittleControl;
   import petsBag.PetsBagManager;
   import ringStation.RingStationManager;
   import trainer.controller.WeakGuildManager;
   import worldboss.WorldBossManager;
   
   public class DayActivityLeftListItem extends Component implements Disposeable
   {
       
      
      private var _txt1:FilterFrameText;
      
      private var _txt2:FilterFrameText;
      
      private var _line:Bitmap;
      
      private var _str:String;
      
      private var _overCount:int;
      
      private var _total:int;
      
      private var _money:int;
      
      private var _data:ActivityData;
      
      private var _lastCreatTime:int = 0;
      
      private var _backGround:Component;
      
      private var _startTime:int;
      
      private var _endTime:int;
      
      private var _activityType:int;
      
      private var alertFrame:BaseAlerFrame;
      
      public function DayActivityLeftListItem(param1:Boolean, param2:ActivityData){super();}
      
      private function initView(param1:Boolean, param2:ActivityData) : void{}
      
      protected function jumpHander(param1:MouseEvent) : void{}
      
      public function setTxt2(param1:int) : void{}
      
      private function onFrameResponse(param1:FrameEvent) : void{}
      
      protected function onCheckComplete() : void{}
      
      private function toDungeon() : void{}
      
      override public function dispose() : void{}
   }
}
