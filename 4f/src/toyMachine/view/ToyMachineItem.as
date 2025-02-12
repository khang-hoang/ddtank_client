package toyMachine.view
{
   import bagAndInfo.cell.BagCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.events.ComponentEvent;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.EquipType;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.loader.LoaderCreate;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.TimeManager;
   import ddt.utils.CheckMoneyUtils;
   import ddt.utils.HelperDataModuleLoad;
   import ddt.utils.PositionUtils;
   import ddt.view.caddyII.CaddyModel;
   import ddt.view.caddyII.LookTrophy;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.media.SoundTransform;
   import flash.utils.Timer;
   import kingBless.KingBlessManager;
   import road7th.comm.PackageIn;
   import trainer.view.NewHandContainer;
   
   public class ToyMachineItem extends Sprite implements Disposeable
   {
      
      private static var GrappleSilvelOne:int = ServerConfigManager.instance.getToyMachinePrice()[0];
      
      private static var GrappleSilvelTen:int = ServerConfigManager.instance.getToyMachinePrice()[1];
      
      private static var GrappleGoldOne:int = ServerConfigManager.instance.getToyMachinePrice()[2];
      
      private static var GrappleGoldTen:int = ServerConfigManager.instance.getToyMachinePrice()[3];
      
      private static var FreeCount:int = 10;
       
      
      private var _index:int;
      
      private var _rewardBtn:BaseButton;
      
      private var _machineBg:ScaleFrameImage;
      
      private var _tipsInfo:ScaleFrameImage;
      
      private var _grappleOneBtn:BaseButton;
      
      private var _grappleTenBtn:BaseButton;
      
      private var _countDown:FilterFrameText;
      
      private var _showPrize:LookTrophy;
      
      private var _grappleMovie:MovieClip;
      
      private var _timeSprite:Sprite;
      
      private var _freeCountBg:Image;
      
      private var _freeCountText:FilterFrameText;
      
      private var _freeCount:int = 0;
      
      private var _freeTime:Date;
      
      private var _freeTimeNum:Number;
      
      private var _time:Timer;
      
      private var _money:int;
      
      private var _rewardInfo:Array;
      
      private var _tenFlag:Boolean = false;
      
      private var _bigEgg:MovieClip;
      
      private var _smallEgg:MovieClip;
      
      private var _randIndex:int;
      
      private var _yinX1Text:FilterFrameText;
      
      private var _yinX10Text:FilterFrameText;
      
      private var _jinX1Text:FilterFrameText;
      
      private var _jinX10Text:FilterFrameText;
      
      public function ToyMachineItem(param1:int){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      public function setItemInfo(param1:Date, param2:int = 0) : void{}
      
      private function updateInfo() : void{}
      
      private function beginCountDown(param1:Boolean) : void{}
      
      protected function __onUpdateCountDown(param1:TimerEvent) : void{}
      
      private function transSecond(param1:Number) : String{return null;}
      
      protected function __onGrappleOneClick(param1:MouseEvent) : void{}
      
      protected function __onGrappleTenClick(param1:MouseEvent) : void{}
      
      private function __alertAllBack(param1:FrameEvent) : void{}
      
      private function sendGetReward() : void{}
      
      public function getReward(param1:PackageIn) : void{}
      
      private function grappleMovie() : void{}
      
      protected function __onMovieFrame(param1:Event) : void{}
      
      private function addRewardToMovie() : void{}
      
      private function setGrappleMovieSoundVolume(param1:int) : void{}
      
      private function __onCloseGrappleMovie(param1:MouseEvent) : void{}
      
      protected function __onRewardClick(param1:MouseEvent) : void{}
      
      private function lookTrophy() : void{}
      
      private function onshowPrizeDispose(param1:ComponentEvent) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
