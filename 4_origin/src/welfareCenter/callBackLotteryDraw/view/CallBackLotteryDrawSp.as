package welfareCenter.callBackLotteryDraw.view
{
   import baglocked.BaglockedManager;
   import com.greensock.TweenLite;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ArrayUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.CEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.TimeManager;
   import ddt.utils.CheckMoneyUtils;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import welfareCenter.callBackLotteryDraw.CallBackLotteryDrawController;
   import welfareCenter.callBackLotteryDraw.CallBackLotteryDrawManager;
   import welfareCenter.callBackLotteryDraw.LotteryDrawModel;
   
   public class CallBackLotteryDrawSp extends Sprite implements Disposeable
   {
       
      
      private var _nextCDTimeTf:FilterFrameText;
      
      private var _cardShowMC:MovieClip;
      
      private var _cardShuffleMC:MovieClip;
      
      private var _cardOpenItemArr:Array;
      
      private var _clickCardOpenItem:CallBackCardOpenItem;
      
      private var _startDrawBtn:SimpleBitmapButton;
      
      private var _manager:CallBackLotteryDrawManager;
      
      private var _model:LotteryDrawModel;
      
      private var _timer:Timer;
      
      private var _leftSec:int;
      
      private var _buyBtnArr:Array;
      
      private var _buyBtnClickIndex:int = -1;
      
      private var _maskSp:Sprite;
      
      private var _bg:Bitmap;
      
      private var _radomAwardArr:Array;
      
      public function CallBackLotteryDrawSp()
      {
         super();
         initView();
         initEvent();
      }
      
      private function initView() : void
      {
         _bg = UICreatShortcut.creatAndAdd("callbacklotterydraw.pic1",this);
         _manager = CallBackLotteryDrawManager.instance;
         _model = _manager.callBackLotteryDrawModel;
         _nextCDTimeTf = UICreatShortcut.creatAndAdd("callbacklotterydraw.nextCDTimeTf",this);
         _startDrawBtn = UICreatShortcut.creatAndAdd("callbacklotterydraw.startDrawBtn",this);
         _startDrawBtn.visible = false;
         _maskSp = new Sprite();
         if(_model.currPhaseHasGetCount > 0)
         {
            _radomAwardArr = _model.awardArr;
         }
         else
         {
            _radomAwardArr = _model.awardArr.concat();
            ArrayUtils.disorder(_radomAwardArr);
         }
         playCardShow();
         onInfoChange(null);
      }
      
      private function onInfoChange(param1:Event) : void
      {
         _leftSec = _manager.getCallBackLeftSec();
         if(_leftSec > 0)
         {
            if(_timer)
            {
               _timer.reset();
               _timer.delay = 1000;
               _timer.repeatCount = _leftSec;
               _timer.addEventListener("timer",onTimerTick);
               _timer.start();
            }
            else
            {
               _timer = new Timer(1000,_leftSec);
               _timer.addEventListener("timer",onTimerTick);
               _timer.start();
            }
         }
         updateNextCDTimeTf();
      }
      
      private function onTimerTick(param1:TimerEvent) : void
      {
         _leftSec = Number(_leftSec) - 1;
         if(_leftSec <= 0)
         {
            _leftSec = 0;
            _timer.removeEventListener("timer",onTimerTick);
            _timer.stop();
         }
         updateNextCDTimeTf();
      }
      
      private function updateNextCDTimeTf() : void
      {
         var _loc1_:Array = TimeManager.getHHMMSSArr(_leftSec);
         if(_loc1_)
         {
            _nextCDTimeTf.text = LanguageMgr.GetTranslation("callbacklotterdraw.nextCDTimeTxt") + _loc1_.join(":");
         }
         else
         {
            _nextCDTimeTf.text = LanguageMgr.GetTranslation("callbacklotterdraw.nextCDTimeTxt") + "00:00:00";
         }
      }
      
      private function playCardShow() : void
      {
         _cardShowMC = ComponentFactory.Instance.creat("callbacklotterydraw.cardShow");
         PositionUtils.setPos(_cardShowMC,"callbacklotterydraw.cardShow.pos");
         addChild(_cardShowMC);
         _cardShowMC.addEventListener("enterFrame",onCardShowEnterFrame);
      }
      
      private function onCardShowEnterFrame(param1:Event) : void
      {
         var _loc5_:* = null;
         var _loc2_:* = null;
         var _loc10_:int = 0;
         var _loc9_:* = null;
         var _loc6_:* = null;
         var _loc3_:* = null;
         var _loc7_:* = null;
         var _loc4_:* = null;
         var _loc8_:int = _cardShowMC.currentFrame;
         if(_loc8_ == 5)
         {
            _cardShowMC.gotoAndStop(5);
            _loc5_ = _radomAwardArr[2];
            _loc9_ = CallBackLotteryDrawController.instance.getCardShowFont(_loc5_,"callbacklotterydraw");
            _loc9_.x = -5;
            _loc9_.y = 18;
            _cardShowMC["c3"].addChild(_loc9_);
            _cardShowMC.play();
         }
         else if(_loc8_ == 10)
         {
            _cardShowMC.gotoAndStop(10);
            _loc10_ = 1;
            while(_loc10_ < 6)
            {
               if(_loc10_ != 3)
               {
                  _loc6_ = "c" + _loc10_;
                  _loc5_ = _radomAwardArr[_loc10_ - 1];
                  _loc3_ = CallBackLotteryDrawController.instance.getCardShowFont(_loc5_,"callbacklotterydraw");
                  _loc3_.x = -5;
                  _loc3_.y = 18;
                  _cardShowMC[_loc6_].addChild(_loc3_);
               }
               _loc10_++;
            }
            _cardShowMC.play();
         }
         else if(_loc8_ == _cardShowMC.totalFrames)
         {
            _cardShowMC.stop();
            _cardShowMC.removeEventListener("enterFrame",onCardShowEnterFrame);
            _startDrawBtn.visible = true;
            if(_model.currPhaseHasGetCount > 0)
            {
               _startDrawBtn.enable = false;
               _buyBtnArr = [];
               _loc10_ = 1;
               while(_loc10_ < 6)
               {
                  _loc7_ = "c" + _loc10_;
                  _loc5_ = _model.awardArr[_loc10_ - 1];
                  if(_loc5_["IsCanGet"])
                  {
                     _loc4_ = UICreatShortcut.creatAndAdd("callbacklotterydraw.buyBtn",_cardShowMC[_loc7_]);
                     _loc4_.addEventListener("click",onBtnClick);
                     _buyBtnArr.push(_loc4_);
                  }
                  else
                  {
                     _buyBtnArr.push(null);
                     UICreatShortcut.creatAndAdd("callbacklotterydraw.pic7",_cardShowMC[_loc7_]);
                  }
                  _loc10_++;
               }
            }
         }
      }
      
      private function playCardShuffle() : void
      {
         ObjectUtils.disposeObject(_cardShowMC);
         _cardShuffleMC = ComponentFactory.Instance.creat("callbacklotterydraw.cardShuffle");
         PositionUtils.setPos(_cardShuffleMC,"callbacklotterydraw.cardShuffle.pos");
         addChild(_cardShuffleMC);
         _cardShuffleMC.addEventListener("enterFrame",onCardShuffleEnterFrame);
      }
      
      private function onCardShuffleEnterFrame(param1:Event) : void
      {
         var _loc2_:int = _cardShuffleMC.currentFrame;
         if(_loc2_ == _cardShuffleMC.totalFrames)
         {
            _cardShuffleMC.removeEventListener("enterFrame",onCardShuffleEnterFrame);
            _cardShuffleMC.parent.removeChild(_cardShuffleMC);
            onCardShuffleOver();
         }
      }
      
      private function onCardShuffleOver() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         _cardOpenItemArr = [];
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            _loc1_ = new CallBackCardOpenItem(_loc2_,47 + _loc2_ * 123,85);
            addChild(_loc1_);
            _cardOpenItemArr.push(_loc1_);
            _loc2_++;
         }
      }
      
      private function onClickCardOpenItem(param1:CEvent) : void
      {
         _clickCardOpenItem = param1.data as CallBackCardOpenItem;
         var _loc4_:int = 0;
         var _loc3_:* = _cardOpenItemArr;
         for each(var _loc2_ in _cardOpenItemArr)
         {
            _loc2_.mouseEnabled = false;
         }
      }
      
      private function onCardOpenPlayOver(param1:Event) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = _cardOpenItemArr;
         for each(var _loc2_ in _cardOpenItemArr)
         {
            if(_loc2_ != _clickCardOpenItem)
            {
               _loc2_.playCardOpen();
            }
         }
         TweenLite.delayedCall(_loc2_.getMCTotalFrames() + 5,onAllCardOpenPlayOver,null,true);
      }
      
      private function onAllCardOpenPlayOver() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = _cardOpenItemArr;
         for each(var _loc1_ in _cardOpenItemArr)
         {
            _loc1_.mouseEnabled = true;
            _loc1_.mouseChildren = true;
         }
      }
      
      private function initEvent() : void
      {
         _startDrawBtn.addEventListener("click",onBtnClick);
         CallBackLotteryDrawManager.instance.addEventListener("click_card_open_item",onClickCardOpenItem);
         CallBackLotteryDrawManager.instance.addEventListener("click_card_open_play_over",onCardOpenPlayOver);
         CallBackLotteryDrawManager.instance.addEventListener("event_info_change",onInfoChange);
         CallBackLotteryDrawManager.instance.addEventListener("event_op_back_buy",onBuy);
      }
      
      private function removeEvent() : void
      {
         _startDrawBtn.removeEventListener("click",onBtnClick);
         _cardShowMC && _cardShowMC.removeEventListener("enterFrame",onCardShowEnterFrame);
         _cardShuffleMC && _cardShuffleMC.removeEventListener("enterFrame",onCardShuffleEnterFrame);
         CallBackLotteryDrawManager.instance.removeEventListener("click_card_open_item",onClickCardOpenItem);
         CallBackLotteryDrawManager.instance.removeEventListener("click_card_open_play_over",onCardOpenPlayOver);
         CallBackLotteryDrawManager.instance.removeEventListener("event_info_change",onInfoChange);
         CallBackLotteryDrawManager.instance.removeEventListener("event_op_back_buy",onBuy);
         TweenLite.killTweensOf(onAllCardOpenPlayOver);
         _timer && _timer.removeEventListener("timer",onTimerTick);
         _timer && _timer.stop();
         if(_buyBtnArr)
         {
            var _loc3_:int = 0;
            var _loc2_:* = _buyBtnArr;
            for each(var _loc1_ in _buyBtnArr)
            {
               _loc1_ && _loc1_.removeEventListener("click",onBtnClick);
            }
         }
      }
      
      private function onBtnClick(param1:MouseEvent) : void
      {
         evt = param1;
         SoundManager.instance.playButtonSound();
         var target:* = evt.target;
         if(target == _startDrawBtn)
         {
            _startDrawBtn.enable = false;
            playCardShuffle();
         }
         else
         {
            onAlertFrameResponse = function(param1:FrameEvent):void
            {
               if(param1.responseCode == 3 || param1.responseCode == 2)
               {
                  CheckMoneyUtils.instance.checkMoney(false,newPrice,onCheckComplete);
               }
               _payAlert.removeEventListener("response",onAlertFrameResponse);
               ObjectUtils.disposeObject(_payAlert);
            };
            onCheckComplete = function():void
            {
               _buyBtnClickIndex = index;
               LayerManager.Instance.addToLayer(_maskSp,3,true,2);
               SocketManager.Instance.out.buyCallLotteryDrawGood(0,award["Index"],CheckMoneyUtils.instance.isBind);
            };
            var index:int = _buyBtnArr.indexOf(target);
            var award:Object = _model.awardArr[index];
            if(PlayerManager.Instance.Self.bagLocked)
            {
               BaglockedManager.Instance.show();
               return;
            }
            var newPrice:int = award["Cost"] * award["LimitCount"] / 100;
            var msg:String = LanguageMgr.GetTranslation("callbacklotterdraw.buyGoodTip",newPrice,award["InventoryItemInfo"].Name);
            var _payAlert:BaseAlerFrame = AlertManager.Instance.simpleAlert(LanguageMgr.GetTranslation("AlertDialog.Info"),msg,LanguageMgr.GetTranslation("ok"),LanguageMgr.GetTranslation("cancel"),false,false,false,2,null,"SimpleAlert",50,true);
            _payAlert.enterEnable = false;
            _payAlert.addEventListener("response",onAlertFrameResponse);
         }
      }
      
      private function onBuy(param1:CEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = param1.data;
         if(_loc3_.index == _buyBtnClickIndex)
         {
            if(_loc3_.res)
            {
               _loc2_ = _buyBtnArr[_buyBtnClickIndex];
               _loc2_.visible = false;
               UICreatShortcut.creatAndAdd("callbacklotterydraw.pic7",_loc2_.parent);
            }
            _maskSp.parent.removeChild(_maskSp);
         }
      }
      
      public function dispose() : void
      {
         _manager.checkCallBackActiveOpen();
         removeEvent();
         ObjectUtils.disposeAllChildren(this);
         _nextCDTimeTf = null;
         _cardShowMC = null;
         _cardShuffleMC = null;
         _cardOpenItemArr = null;
         _clickCardOpenItem = null;
         _startDrawBtn = null;
         _manager = null;
         _model = null;
         _timer = null;
         _buyBtnArr = null;
         _maskSp = null;
         _bg = null;
      }
   }
}
