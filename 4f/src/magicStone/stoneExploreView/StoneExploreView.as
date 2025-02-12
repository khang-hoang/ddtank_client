package magicStone.stoneExploreView
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.command.QuickBuyFrame;
   import ddt.data.BagInfo;
   import ddt.data.player.SelfInfo;
   import ddt.events.CrazyTankSocketEvent;
   import ddt.manager.ChatManager;
   import ddt.manager.GameInSocketOut;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import gameCommon.GameControl;
   import magicStone.MagicStoneControl;
   import room.RoomManager;
   import trainer.view.NewHandContainer;
   
   public class StoneExploreView extends Frame
   {
      
      private static var index:int = 0;
       
      
      private var _BG:ScaleBitmapImage;
      
      private var _ordinaryBG:Bitmap;
      
      private var _eliteBG:Bitmap;
      
      private var _startOrdinaryBtn:BaseButton;
      
      private var _startEliteBtn:BaseButton;
      
      private var _ordinaryTxt:FilterFrameText;
      
      private var _eliteTxt:FilterFrameText;
      
      private var _helpTxt:FilterFrameText;
      
      private var _paopaoOrdinaryBg:Bitmap;
      
      private var _paopaoOrdinaryTxt:FilterFrameText;
      
      private var _scOrdinaryBtn:SelectedCheckButton;
      
      private var _paopaoEliteBg:Bitmap;
      
      private var _paopaoEliteTxt:FilterFrameText;
      
      private var _scEliteBtn:SelectedCheckButton;
      
      private var _clickDate:Number = 0;
      
      private var _selfInfo:SelfInfo;
      
      private var _quick:QuickBuyFrame;
      
      public function StoneExploreView(){super();}
      
      private function initView() : void{}
      
      private function addEvents() : void{}
      
      private function removeEvents() : void{}
      
      private function _magicStoneExploreGuilde() : void{}
      
      private function __startLoading(param1:Event) : void{}
      
      private function __gameStart(param1:CrazyTankSocketEvent) : void{}
      
      private function __startOrdinaryBtnClick(param1:MouseEvent) : void{}
      
      private function __startEliteBtnClick(param1:MouseEvent) : void{}
      
      private function checkBagStone() : Boolean{return false;}
      
      private function setBtnEnable() : void{}
      
      private function __scOrdinaryCheckBoxClick(param1:MouseEvent) : void{}
      
      private function __scEliteCheckBoxClick(param1:MouseEvent) : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      public function checkCanStartGame() : Boolean{return false;}
      
      override public function dispose() : void{}
   }
}
