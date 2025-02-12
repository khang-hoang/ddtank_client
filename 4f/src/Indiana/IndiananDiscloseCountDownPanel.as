package Indiana
{
   import Indiana.analyzer.IndianaShopItemInfo;
   import Indiana.model.IndianaShowData;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.image.NumberImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.TimeManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.TextEvent;
   import times.utils.timerManager.TimerJuggler;
   import times.utils.timerManager.TimerManager;
   
   public class IndiananDiscloseCountDownPanel extends Sprite implements Disposeable
   {
       
      
      private var _coutDown:MovieClip;
      
      private var _isMeImag:Bitmap;
      
      private var _line:MutipleImage;
      
      private var _hasNum:FilterFrameText;
      
      private var _linkNum:FilterFrameText;
      
      private var _secondNum01:NumberImage;
      
      private var _secondNum02:NumberImage;
      
      private var _minuteNum01:NumberImage;
      
      private var _minuteNum02:NumberImage;
      
      private var _hourNum01:NumberImage;
      
      private var _hourNum02:NumberImage;
      
      private var _info:IndianaShopItemInfo;
      
      private var _timer:TimerJuggler;
      
      private var _countDownDate:Number = 0;
      
      private var _endtimer:Date;
      
      private var _showdata:IndianaShowData;
      
      private var countDownComplete:Boolean = false;
      
      private var baseAlerFrame:BaseAlerFrame;
      
      public function IndiananDiscloseCountDownPanel(){super();}
      
      private function initView() : void{}
      
      public function setInfo(param1:IndianaShopItemInfo) : void{}
      
      private function initEvent() : void{}
      
      public function stopTime() : void{}
      
      private function __linkHandler(param1:TextEvent) : void{}
      
      private function removeEvent() : void{}
      
      private function __TimerHander(param1:Event) : void{}
      
      private function alert() : void{}
      
      private function __frameEvent(param1:FrameEvent) : void{}
      
      private function setDownValue(param1:int, param2:int, param3:int) : void{}
      
      private function __TimerCompleteHander(param1:Event) : void{}
      
      public function dispose() : void{}
   }
}
