package goldmine.views
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.image.NumberImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.text.GradientText;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.CEvent;
   import ddt.manager.GameInSocketOut;
   import ddt.manager.LanguageMgr;
   import ddt.manager.LeavePageManager;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import goldmine.GoldmineManager;
   import goldmine.model.GoldmineModel;
   import road7th.utils.MovieClipWrapper;
   import times.utils.timerManager.TimerJuggler;
   import times.utils.timerManager.TimerManager;
   
   public class GoldmineMainFrame extends Frame
   {
       
      
      private var _dateStartMonth1:NumberImage;
      
      private var _dateStartMonth2:NumberImage;
      
      private var _datePoint1:Bitmap;
      
      private var _dateStartDay1:NumberImage;
      
      private var _dateStartDay2:NumberImage;
      
      private var _dateIcon:Bitmap;
      
      private var _dateEndMonth1:NumberImage;
      
      private var _dateEndMonth2:NumberImage;
      
      private var _datePoint2:Bitmap;
      
      private var _dateEndDay1:NumberImage;
      
      private var _dateEndDay2:NumberImage;
      
      private var _infoText:Bitmap;
      
      private var _infoWord:FilterFrameText;
      
      private var _mineBtn:BaseButton;
      
      private var _mineTimesText:FilterFrameText;
      
      private var _nextScoreLeft:GradientText;
      
      private var _nextScoreRight:GradientText;
      
      private var _nextScoreText:FilterFrameText;
      
      private var _blackBg:Bitmap;
      
      private var _smallMine:MovieClip;
      
      private var _middleMine:MovieClip;
      
      private var _bigMine:MovieClip;
      
      private var _mineTextList:Vector.<NumberImage>;
      
      private var _smallMineText:NumberImage;
      
      private var _middleMineText:NumberImage;
      
      private var _bigMineText:NumberImage;
      
      private var _mineLight:Bitmap;
      
      private var _mineBaseBtm:Bitmap;
      
      private var _shineMc:MovieClip;
      
      private var _timeRemainTimer:TimerJuggler;
      
      private var _model:GoldmineModel;
      
      private var _lightPos:Vector.<Point>;
      
      private var _shinePos:Vector.<Point>;
      
      private var _btmPos:Vector.<Point>;
      
      private var _mineMc:Vector.<MovieClip>;
      
      private var _index:int = -1;
      
      private var _lastScore:int = 0;
      
      private var _clickNum:Number = 0;
      
      private var currentIndex:int = 0;
      
      private var _filter:Array;
      
      public function GoldmineMainFrame()
      {
         _filter = ComponentFactory.Instance.creatFilters("lightFilter");
         super();
      }
      
      override protected function init() : void
      {
         super.init();
         initData();
         initView();
         addEvent();
      }
      
      private function initData() : void
      {
         if(_model == null)
         {
            _model = GoldmineManager.Instance.model;
         }
         _lightPos = new Vector.<Point>();
         var _loc7_:Point = ComponentFactory.Instance.creat("goldmineMainFrame.lightPos1");
         var _loc6_:Point = ComponentFactory.Instance.creat("goldmineMainFrame.lightPos2");
         var _loc5_:Point = ComponentFactory.Instance.creat("goldmineMainFrame.lightPos3");
         _lightPos.push(_loc7_);
         _lightPos.push(_loc6_);
         _lightPos.push(_loc5_);
         _btmPos = new Vector.<Point>();
         var _loc8_:Point = ComponentFactory.Instance.creat("goldmineMainFrame.btmMcPos1");
         var _loc9_:Point = ComponentFactory.Instance.creat("goldmineMainFrame.btmMcPos2");
         var _loc2_:Point = ComponentFactory.Instance.creat("goldmineMainFrame.btmMcPos3");
         _btmPos.push(_loc8_);
         _btmPos.push(_loc9_);
         _btmPos.push(_loc2_);
         _shinePos = new Vector.<Point>();
         var _loc4_:Point = ComponentFactory.Instance.creat("goldmineMainFrame.shinePos1");
         var _loc3_:Point = ComponentFactory.Instance.creat("goldmineMainFrame.shinePos2");
         var _loc1_:Point = ComponentFactory.Instance.creat("goldmineMainFrame.shinePos3");
         _shinePos.push(_loc4_);
         _shinePos.push(_loc3_);
         _shinePos.push(_loc1_);
      }
      
      private function initView() : void
      {
         _dateStartMonth1 = ComponentFactory.Instance.creatComponentByStylename("goldmineMainFrame.dateStartMonthNum1");
         addToContent(_dateStartMonth1);
         _dateStartMonth2 = ComponentFactory.Instance.creatComponentByStylename("goldmineMainFrame.dateStartMonthNum2");
         addToContent(_dateStartMonth2);
         _datePoint1 = ComponentFactory.Instance.creatBitmap("asset.goldmine.numpoint");
         PositionUtils.setPos(_datePoint1,"goldmineMainFrame.pointPos1");
         addToContent(_datePoint1);
         _dateStartDay1 = ComponentFactory.Instance.creatComponentByStylename("goldmineMainFrame.dateStartDayNum1");
         addToContent(_dateStartDay1);
         _dateStartDay2 = ComponentFactory.Instance.creatComponentByStylename("goldmineMainFrame.dateStartDayNum2");
         addToContent(_dateStartDay2);
         var _loc4_:int = GoldmineManager.Instance.dateStart.month + 1;
         _dateStartMonth1.count = _loc4_ < 10?0:1;
         _dateStartMonth2.count = _loc4_ % 10;
         var _loc2_:int = GoldmineManager.Instance.dateStart.date;
         _dateStartDay1.count = _loc2_ < 10?0:int(_loc2_ / 10);
         _dateStartDay2.count = _loc2_ % 10;
         _dateIcon = ComponentFactory.Instance.creatBitmap("asset.goldmine.numTo");
         addToContent(_dateIcon);
         _dateEndMonth1 = ComponentFactory.Instance.creatComponentByStylename("goldmineMainFrame.dateEndMonthNum1");
         addToContent(_dateEndMonth1);
         _dateEndMonth2 = ComponentFactory.Instance.creatComponentByStylename("goldmineMainFrame.dateEndMonthNum2");
         addToContent(_dateEndMonth2);
         _datePoint2 = ComponentFactory.Instance.creatBitmap("asset.goldmine.numpoint");
         PositionUtils.setPos(_datePoint2,"goldmineMainFrame.pointPos2");
         addToContent(_datePoint2);
         _dateEndDay1 = ComponentFactory.Instance.creatComponentByStylename("goldmineMainFrame.dateEndDayNum1");
         addToContent(_dateEndDay1);
         _dateEndDay2 = ComponentFactory.Instance.creatComponentByStylename("goldmineMainFrame.dateEndDayNum2");
         addToContent(_dateEndDay2);
         var _loc3_:int = GoldmineManager.Instance.dateEnd.month + 1;
         _dateEndMonth1.count = _loc3_ < 10?0:1;
         _dateEndMonth2.count = _loc3_ % 10;
         var _loc1_:int = GoldmineManager.Instance.dateEnd.date;
         _dateEndDay1.count = _loc1_ < 10?0:int(_loc1_ / 10);
         _dateEndDay2.count = _loc1_ % 10;
         _infoText = ComponentFactory.Instance.creatBitmap("asset.goldmineInfoImg");
         addToContent(_infoText);
         _infoWord = ComponentFactory.Instance.creatComponentByStylename("GoldmineInfoWord");
         _infoWord.text = LanguageMgr.GetTranslation("goldmine.infoWord",_model.goldArr[0],_model.goldArr[1],_model.goldArr[2],_model.goldArr[3],_model.goldArr[4]);
         addToContent(_infoWord);
         _mineBtn = ComponentFactory.Instance.creat("goldmineMainFrame.mineBtn");
         addToContent(_mineBtn);
         _mineTimesText = ComponentFactory.Instance.creatComponentByStylename("goldmineMainFrame.mineTimesText");
         addToContent(_mineTimesText);
         _nextScoreLeft = ComponentFactory.Instance.creatComponentByStylename("goldmineMainFrame.nextScoreLeftText");
         addToContent(_nextScoreLeft);
         _smallMineText = ComponentFactory.Instance.creatComponentByStylename("goldmineMainFrame.smallMineNum");
         addToContent(_smallMineText);
         _middleMineText = ComponentFactory.Instance.creatComponentByStylename("goldmineMainFrame.middleMineNum");
         addToContent(_middleMineText);
         _bigMineText = ComponentFactory.Instance.creatComponentByStylename("goldmineMainFrame.bigMineNum");
         addToContent(_bigMineText);
         _mineTextList = new Vector.<NumberImage>();
         _mineTextList.push(_smallMineText,_middleMineText,_bigMineText);
         _blackBg = ComponentFactory.Instance.creatBitmap("asset.goldmine.blackBg");
         _blackBg.visible = false;
         addToContent(_blackBg);
         _mineLight = ComponentFactory.Instance.creat("asset.goldmine.lightBg");
         _mineLight.visible = false;
         addToContent(_mineLight);
         _mineBaseBtm = ComponentFactory.Instance.creat("asset.goldmine.bottomBg");
         _mineBaseBtm.visible = false;
         addToContent(_mineBaseBtm);
         _shineMc = ClassUtils.CreatInstance("asset.goldmine.shineMc");
         _shineMc.mouseEnabled = false;
         _shineMc.visible = false;
         addToContent(_shineMc);
         _smallMine = ClassUtils.CreatInstance("asset.goldmine.mineSmall");
         _smallMine.mouseEnabled = false;
         _smallMine.gotoAndStop(1);
         PositionUtils.setPos(_smallMine,"goldmineMainFrame.smallPos");
         addToContent(_smallMine);
         _middleMine = ClassUtils.CreatInstance("asset.goldmine.mineMiddle");
         _middleMine.mouseEnabled = false;
         _middleMine.gotoAndStop(1);
         PositionUtils.setPos(_middleMine,"goldmineMainFrame.middlePos");
         addToContent(_middleMine);
         _bigMine = ClassUtils.CreatInstance("asset.goldmine.mineBig");
         _bigMine.mouseEnabled = false;
         _bigMine.gotoAndStop(1);
         PositionUtils.setPos(_bigMine,"goldmineMainFrame.bigPos");
         addToContent(_bigMine);
         _mineMc = new Vector.<MovieClip>();
         _mineMc.push(_smallMine);
         _mineMc.push(_bigMine);
         _mineMc.push(_middleMine);
         updateView();
      }
      
      public function updateView() : void
      {
         _mineTimesText.text = String(_model.currentTimes);
         if(_model.usedTimes < _model.maxTimes)
         {
            var _loc1_:* = true;
            _bigMineText.visible = _loc1_;
            _loc1_ = _loc1_;
            _middleMineText.visible = _loc1_;
            _smallMineText.visible = _loc1_;
            _smallMineText.count = _model.mineSmall;
            _middleMineText.count = _model.mineMiddle;
            _bigMineText.count = _model.mineBig;
         }
         if(_model.nextScoreNeed <= 0)
         {
            _nextScoreLeft.text = LanguageMgr.GetTranslation("goldmine.fullMineTime");
         }
         else
         {
            _nextScoreLeft.text = LanguageMgr.GetTranslation("goldmine.nextScoreLeft",_model.nextScoreNeed);
         }
      }
      
      private function addEvent() : void
      {
         _smallMine.addEventListener("rollOver",__onMouseRollover);
         _smallMine.addEventListener("rollOut",__onMouseRollout);
         _middleMine.addEventListener("rollOver",__onMouseRollover);
         _middleMine.addEventListener("rollOut",__onMouseRollout);
         _bigMine.addEventListener("rollOver",__onMouseRollover);
         _bigMine.addEventListener("rollOut",__onMouseRollout);
         GoldmineManager.Instance.addEventListener("goldmine_use",__onUseGoldmine);
         _mineBtn.addEventListener("click",__onClickMineBtn);
         this.addEventListener("response",__response);
      }
      
      private function __onClickMineBtn(param1:MouseEvent) : void
      {
         var _loc3_:* = null;
         var _loc2_:* = null;
         SoundManager.instance.playButtonSound();
         var _loc4_:Number = new Date().time;
         if(_loc4_ - _clickNum < 1000)
         {
            MessageTipManager.getInstance().show(LanguageMgr.GetTranslation("ddt.storeIIStrength.startStrengthClickTimerMsg"));
            return;
         }
         _clickNum = _loc4_;
         if(_model.usedTimes >= _model.maxTimes)
         {
            MessageTipManager.getInstance().show(LanguageMgr.GetTranslation("goldmine.emptyTxt"));
         }
         else if(_model.currentTimes > 0)
         {
            if(PlayerManager.Instance.Self.bagLocked)
            {
               BaglockedManager.Instance.show();
               return;
            }
            _loc3_ = AlertManager.Instance.simpleAlert(LanguageMgr.GetTranslation("AlertDialog.Info"),LanguageMgr.GetTranslation("goldmine.comfirmTxt",_model.goldNeedArr[_model.usedTimes]),LanguageMgr.GetTranslation("shop.PresentFrame.OkBtnText"),LanguageMgr.GetTranslation("shop.PresentFrame.CancelBtnText"),false,true,false,2);
            _loc3_.moveEnable = false;
            _loc3_.addEventListener("response",__onMineResponse);
         }
         else
         {
            _loc2_ = AlertManager.Instance.simpleAlert(LanguageMgr.GetTranslation("AlertDialog.Info"),LanguageMgr.GetTranslation("goldmine.noTimesTxt"),LanguageMgr.GetTranslation("tank.view.common.BellowStripViewII.supply"),LanguageMgr.GetTranslation("shop.PresentFrame.CancelBtnText"),false,true,false,2);
            _loc2_.moveEnable = false;
            _loc2_.addEventListener("response",__poorManResponse);
         }
      }
      
      private function __onMineResponse(param1:FrameEvent) : void
      {
         var _loc3_:* = null;
         var _loc2_:BaseAlerFrame = param1.currentTarget as BaseAlerFrame;
         _loc2_.removeEventListener("response",__onMineResponse);
         _loc2_.dispose();
         if(param1.responseCode == 2 || param1.responseCode == 3)
         {
            if(PlayerManager.Instance.Self.Money >= _model.goldNeedArr[_model.usedTimes])
            {
               GameInSocketOut.sendGoldmineUse();
            }
            else
            {
               _loc3_ = AlertManager.Instance.simpleAlert(LanguageMgr.GetTranslation("AlertDialog.Info"),LanguageMgr.GetTranslation("store.view.transfer.StoreIITransferBG.point"),LanguageMgr.GetTranslation("tank.view.common.BellowStripViewII.supply"),LanguageMgr.GetTranslation("shop.PresentFrame.CancelBtnText"),false,true,false,2);
               _loc3_.moveEnable = false;
               _loc3_.addEventListener("response",__poorManResponse);
            }
         }
      }
      
      private function __timeRemainHandler(param1:Event) : void
      {
         if(_index < 0)
         {
            return;
         }
         _mineLight.visible = true;
         _mineLight.x = _lightPos[currentIndex].x;
         _mineLight.y = _lightPos[currentIndex].y;
         currentIndex = (currentIndex + 1) % _lightPos.length;
      }
      
      private function __timeComHandler(param1:Event) : void
      {
         if(_index < 0)
         {
            return;
         }
         _timeRemainTimer.removeEventListener("timer",__timeRemainHandler);
         _timeRemainTimer.removeEventListener("timerComplete",__timeComHandler);
         _mineBaseBtm.visible = true;
         _mineBaseBtm.x = _btmPos[_index].x;
         _mineBaseBtm.y = _btmPos[_index].y;
         _mineLight.x = _lightPos[_index].x;
         _mineLight.y = _lightPos[_index].y;
         _mineMc[_index].visible = true;
         _mineMc[_index].addEventListener("enterFrame",__onMineHandler);
         _mineMc[_index].gotoAndPlay(1);
      }
      
      private function __onMineHandler(param1:Event) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(_index < 0)
         {
            return;
         }
         if(_mineMc[_index].currentFrame == _mineMc[_index].totalFrames)
         {
            _mineMc[_index].removeEventListener("enterFrame",__onMineHandler);
            _mineMc[_index].gotoAndStop(1);
            _mineMc[_index].alpha = 0.3;
            _mineTextList[_index].alpha = 0.3;
            _mineLight.visible = false;
            _mineBaseBtm.visible = false;
            _shineMc.visible = true;
            _blackBg.visible = true;
            _shineMc.x = _shinePos[1].x;
            _shineMc.y = _shinePos[1].y;
            _shineMc.play();
            _loc2_ = ClassUtils.CreatInstance("asset.goldmine.mineAction" + _index);
            _loc3_ = new MovieClipWrapper(_loc2_,true,true);
            _loc3_.addEventListener("complete",__onPlayActionComplete);
            addChild(_loc3_.movie);
            PositionUtils.setPos(_loc3_.movie,_mineMc[1]);
         }
      }
      
      private function __onPlayActionComplete(param1:Event) : void
      {
         var _loc2_:MovieClipWrapper = param1.currentTarget as MovieClipWrapper;
         _loc2_.removeEventListener("complete",__onPlayActionComplete);
         _mineMc[_index].alpha = 1;
         _mineTextList[_index].alpha = 1;
         _shineMc.gotoAndStop(1);
         _shineMc.visible = false;
         _blackBg.visible = false;
         _index = -1;
         currentIndex = 0;
         MessageTipManager.getInstance().show(LanguageMgr.GetTranslation("goldmine.getRewardTxt",_lastScore));
         this.mouseChildren = true;
         this.mouseEnabled = true;
         _model.currentTimes--;
         _model.usedTimes++;
         updateView();
      }
      
      private function __poorManResponse(param1:FrameEvent) : void
      {
         SoundManager.instance.play("008");
         var _loc2_:BaseAlerFrame = param1.currentTarget as BaseAlerFrame;
         _loc2_.removeEventListener("response",__poorManResponse);
         if(param1.responseCode == 2 || param1.responseCode == 3)
         {
            LeavePageManager.leaveToFillPath();
         }
         ObjectUtils.disposeObject(_loc2_);
      }
      
      private function __onMouseRollout(param1:MouseEvent) : void
      {
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         _loc2_.filters = null;
      }
      
      private function __onMouseRollover(param1:MouseEvent) : void
      {
         var _loc2_:Sprite = param1.currentTarget as Sprite;
         if(_loc2_.filters != _filter)
         {
            _loc2_.filters = _filter;
         }
      }
      
      private function removeEvent() : void
      {
         _smallMine.removeEventListener("rollOver",__onMouseRollover);
         _smallMine.removeEventListener("rollOut",__onMouseRollout);
         _middleMine.removeEventListener("rollOver",__onMouseRollover);
         _middleMine.removeEventListener("rollOut",__onMouseRollout);
         _bigMine.removeEventListener("rollOver",__onMouseRollover);
         _bigMine.removeEventListener("rollOut",__onMouseRollout);
         GoldmineManager.Instance.removeEventListener("goldmine_use",__onUseGoldmine);
         this.removeEventListener("response",__response);
         if(_mineBtn != null)
         {
            _mineBtn.removeEventListener("click",__onClickMineBtn);
         }
      }
      
      private function __onUseGoldmine(param1:CEvent) : void
      {
         var _loc2_:Object = param1.data;
         if(_loc2_ is Array)
         {
            if(_loc2_[0] < 0)
            {
               MessageTipManager.getInstance().show("数据异常");
               return;
            }
            _index = int(_loc2_[0]);
            if(_index < 0)
            {
               return;
            }
            _lastScore = int(_loc2_[1]);
            this.mouseEnabled = false;
            this.mouseChildren = false;
            _timeRemainTimer = TimerManager.getInstance().addTimerJuggler(200,_lightPos.length * 2 + _index + 1);
            _timeRemainTimer.addEventListener("timer",__timeRemainHandler);
            _timeRemainTimer.addEventListener("timerComplete",__timeComHandler);
            _timeRemainTimer.start();
         }
      }
      
      private function __response(param1:FrameEvent) : void
      {
         SoundManager.instance.playButtonSound();
      }
      
      override protected function onResponse(param1:int) : void
      {
         GoldmineManager.Instance.dispatchEvent(new CEvent("goldmine_closeview"));
      }
      
      override public function dispose() : void
      {
         removeEvent();
         ObjectUtils.removeChildAllChildren(this);
         _infoText = null;
         _infoWord = null;
         _mineBtn = null;
         _mineLight = null;
         _mineBaseBtm = null;
         _blackBg = null;
         _shineMc = null;
         _smallMine = null;
         _middleMine = null;
         _bigMine = null;
         _smallMineText = null;
         _middleMineText = null;
         _bigMineText = null;
         _mineTimesText = null;
         _nextScoreLeft = null;
         _dateStartMonth1 = null;
         _dateStartMonth2 = null;
         _datePoint1 = null;
         _dateStartDay1 = null;
         _dateStartDay2 = null;
         _dateIcon = null;
         _dateEndMonth1 = null;
         _dateEndMonth2 = null;
         _datePoint1 = null;
         _dateEndDay1 = null;
         _dateEndDay2 = null;
         _lightPos = null;
         _shinePos = null;
         _btmPos = null;
         _mineMc = null;
         _filter = null;
         _mineTextList = null;
         super.dispose();
      }
   }
}
