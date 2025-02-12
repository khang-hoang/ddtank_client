package DDPlay
{
   import baglocked.BaglockedManager;
   import com.greensock.TweenLite;
   import com.greensock.easing.Back;
   import com.greensock.easing.Linear;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.BagEvent;
   import ddt.events.CrazyTankSocketEvent;
   import ddt.manager.ChatManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import invite.InviteManager;
   import road7th.comm.PackageIn;
   
   public class DDPlayView extends Frame
   {
       
      
      private var _bg:Bitmap;
      
      private var _boguTypePoints:Array;
      
      private var _sixBogu1:MovieClip;
      
      private var _sixBogu2:MovieClip;
      
      private var _sixBogu3:MovieClip;
      
      private var _boguMaskSp1:MovieClip;
      
      private var _boguMaskSp2:MovieClip;
      
      private var _boguMaskSp3:MovieClip;
      
      private var _boguMask1:MovieClip;
      
      private var _boguMask2:MovieClip;
      
      private var _boguMask3:MovieClip;
      
      private var _tripleMc:MovieClip;
      
      private var _fivefoldMc:MovieClip;
      
      private var _tenfoldMc:MovieClip;
      
      private var _triple:Bitmap;
      
      private var _fivefold:Bitmap;
      
      private var _tenfold:Bitmap;
      
      private var _lights:MovieClip;
      
      private var _shine1:MovieClip;
      
      private var _shine2:MovieClip;
      
      private var _shine3:MovieClip;
      
      private var _titleLight:MovieClip;
      
      private var _finallyLight:MovieClip;
      
      private var _finallyFireWork:MovieClip;
      
      private var _upBtn:SimpleBitmapButton;
      
      private var _stopUpBtn:SimpleBitmapButton;
      
      private var _selectedTxt:SelectedCheckButton;
      
      private var _exchangeBtn:BaseButton;
      
      private var timer:Timer;
      
      private var _explameTxt:FilterFrameText;
      
      private var _coinsTxt:FilterFrameText;
      
      private var _scoreTxt:FilterFrameText;
      
      private var _exchangeFrame:DDPlayExchangeFrame;
      
      private var isPlaying:Boolean;
      
      private var _multiple:int;
      
      private var tw1:TweenLite;
      
      private var tw2:TweenLite;
      
      private var tw3:TweenLite;
      
      private const fastest:Number = 0.3;
      
      private const startSpeed:Number = 0.4;
      
      private const tempSpeed:Number = 0.05;
      
      private var fastestLast1:int = 3;
      
      private var fastestLast2:int = 5;
      
      private var fastestLast3:int = 8;
      
      private var tSpeed1:Number = 0.4;
      
      private var tSpeed2:Number = 0.4;
      
      private var tSpeed3:Number = 0.4;
      
      public function DDPlayView(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function sendPkg() : void{}
      
      private function removeEvent() : void{}
      
      private function __updateScore(param1:CrazyTankSocketEvent) : void{}
      
      private function __start(param1:CrazyTankSocketEvent) : void{}
      
      private function _timerHandler(param1:TimerEvent) : void{}
      
      private function __response(param1:FrameEvent) : void{}
      
      private function _bagUpdate(param1:BagEvent) : void{}
      
      private function __scoreExchange(param1:MouseEvent) : void{}
      
      private function doUpHonor(param1:MouseEvent) : void{}
      
      private function stopDoUpHonor(param1:MouseEvent) : void{}
      
      private function __checkBoxClick(param1:MouseEvent) : void{}
      
      private function refreshShow() : void{}
      
      private function startLottery(param1:int = 1, param2:int = 2, param3:int = 3) : void{}
      
      private function reSetBogu() : void{}
      
      private function _sixBogu1Com(param1:int) : void{}
      
      private function _sixBogu2Com(param1:int) : void{}
      
      private function _sixBogu3Com(param1:int) : void{}
      
      private function __lotteryCom() : void{}
      
      public function show() : void{}
      
      override public function dispose() : void{}
   }
}
