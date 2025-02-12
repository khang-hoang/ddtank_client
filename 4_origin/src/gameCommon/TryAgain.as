package gameCommon
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.cmd.CmdCheckBagLockedPSWNeeds;
   import ddt.events.GameEvent;
   import ddt.manager.GameInSocketOut;
   import ddt.manager.LanguageMgr;
   import ddt.manager.LeavePageManager;
   import ddt.manager.SoundManager;
   import ddt.utils.CheckMoneyUtils;
   import ddt.view.DoubleSelectedItem;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Matrix;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import gameCommon.model.MissionAgainInfo;
   import room.RoomManager;
   
   [Event(name="timeOut",type="ddt.events.GameEvent")]
   [Event(name="tryagain",type="ddt.events.GameEvent")]
   [Event(name="giveup",type="ddt.events.GameEvent")]
   public class TryAgain extends Sprite implements Disposeable
   {
       
      
      private var _back:DisplayObject;
      
      private var _tryagain:BaseButton;
      
      private var _giveup:BaseButton;
      
      private var _titleField:FilterFrameText;
      
      private var _valueField:FilterFrameText;
      
      private var _valueBack:DisplayObject;
      
      private var _timer:Timer;
      
      private var _numDic:Dictionary;
      
      private var _markshape:Shape;
      
      private var _container:Sprite;
      
      private var _buffNote:DisplayObject;
      
      protected var _isShowNum:Boolean;
      
      protected var _info:MissionAgainInfo;
      
      protected var _selectedItem:DoubleSelectedItem;
      
      public function TryAgain(param1:MissionAgainInfo, param2:Boolean = true)
      {
         _numDic = new Dictionary();
         _info = param1;
         _isShowNum = param2;
         super();
         _timer = new Timer(1000,10);
         if(_isShowNum)
         {
            creatNums();
         }
         configUI();
         addEvent();
      }
      
      public function show() : void
      {
         if(!RoomManager.Instance.current)
         {
            return;
         }
         if(RoomManager.Instance.current.selfRoomPlayer.isViewer)
         {
            switch(int(GameControl.Instance.TryAgain))
            {
               case 0:
                  __giveup(null);
                  break;
               case 1:
                  tryagain(false);
                  break;
               case 2:
                  timeOut();
            }
         }
         else
         {
            _timer.start();
         }
      }
      
      private function configUI() : void
      {
         drawBlack();
         _container = new Sprite();
         addChild(_container);
         _back = ComponentFactory.Instance.creatBitmap("asset.game.tryagain.back");
         _container.addChild(_back);
         _tryagain = ComponentFactory.Instance.creatComponentByStylename("GameTryAgain");
         if(RoomManager.Instance.current)
         {
            _tryagain.enable = RoomManager.Instance.current.selfRoomPlayer.isHost;
         }
         _container.addChild(_tryagain);
         _giveup = ComponentFactory.Instance.creatComponentByStylename("GameGiveUp");
         if(RoomManager.Instance.current)
         {
            _giveup.enable = RoomManager.Instance.current.selfRoomPlayer.isHost;
         }
         _container.addChild(_giveup);
         _titleField = ComponentFactory.Instance.creatComponentByStylename("GameTryAgainTitle");
         _container.addChild(_titleField);
         _titleField.htmlText = LanguageMgr.GetTranslation("tnak.game.tryagain.title",_info.host);
         if(RoomManager.Instance.current && RoomManager.Instance.current.type == 15)
         {
            _titleField.htmlText = LanguageMgr.GetTranslation("tnak.game.tryagain.titleII",_info.host);
         }
         _valueBack = ComponentFactory.Instance.creatBitmap("asset.game.tryagain.text");
         _container.addChild(_valueBack);
         _valueField = ComponentFactory.Instance.creatComponentByStylename("GameTryAgainValue");
         _container.addChild(_valueField);
         _markshape = new Shape();
         _markshape.y = 60;
         if(_isShowNum && RoomManager.Instance.current && !RoomManager.Instance.current.selfRoomPlayer.isViewer)
         {
            drawMark(_timer.repeatCount);
         }
         _container.addChild(_markshape);
         _container.x = StageReferance.stageWidth - _container.width >> 1;
         _container.y = StageReferance.stageHeight - _container.height >> 1;
         _selectedItem = new DoubleSelectedItem();
         _selectedItem.x = 268;
         _selectedItem.y = 184;
         _container.addChild(_selectedItem);
         if(RoomManager.Instance.current && RoomManager.Instance.current.selfRoomPlayer.isHost && _info.hasLevelAgain)
         {
            drawLevelAgainBuff();
            _valueField.htmlText = LanguageMgr.GetTranslation("tnak.game.tryagain.value",0);
         }
         else
         {
            _valueField.htmlText = LanguageMgr.GetTranslation("tnak.game.tryagain.value",_info.value);
         }
      }
      
      private function drawLevelAgainBuff() : void
      {
         _buffNote = addChild(ComponentFactory.Instance.creat("asset.core.payBuffAsset72.note"));
      }
      
      private function drawBlack() : void
      {
         var _loc1_:Graphics = graphics;
         _loc1_.clear();
         _loc1_.beginFill(0,0.4);
         _loc1_.drawRect(0,0,2000,1000);
         _loc1_.endFill();
      }
      
      private function creatNums() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < 10)
         {
            _loc1_ = ComponentFactory.Instance.creatBitmapData("asset.game.mark.Blue" + _loc2_);
            _numDic["Blue" + _loc2_] = _loc1_;
            _loc2_++;
         }
      }
      
      private function addEvent() : void
      {
         _tryagain.addEventListener("click",__tryagainClick);
         _giveup.addEventListener("click",__giveup);
         _timer.addEventListener("timer",__mark);
         _timer.addEventListener("timerComplete",__timeComplete);
         GameControl.Instance.addEventListener("missionAgain",__missionAgain);
      }
      
      private function __missionAgain(param1:GameEvent) : void
      {
         var _loc2_:int = param1.data;
         switch(int(_loc2_))
         {
            case 0:
               __giveup(null);
               break;
            case 1:
               tryagain(_selectedItem.isBind);
               break;
            case 2:
               timeOut();
         }
      }
      
      private function timeOut() : void
      {
         dispatchEvent(new GameEvent("timeOut",null));
      }
      
      private function __timeComplete(param1:TimerEvent) : void
      {
         switch(int(GameControl.Instance.TryAgain))
         {
            case 0:
               __giveup(null);
               break;
            case 1:
               tryagain(_selectedItem.isBind);
               break;
            case 2:
               timeOut();
         }
      }
      
      private function drawMark(param1:int) : void
      {
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc6_:int = 0;
         var _loc2_:Graphics = _markshape.graphics;
         _loc2_.clear();
         var _loc4_:String = param1.toString();
         if(param1 == 10)
         {
            _loc6_ = 0;
            while(_loc6_ < _loc4_.length)
            {
               _loc5_ = "Blue" + _loc4_.substr(_loc6_,1);
               _loc3_ = _numDic[_loc5_];
               _loc2_.beginBitmapFill(_loc3_,new Matrix(1,0,0,1,_markshape.width));
               _loc2_.drawRect(_markshape.width,0,_loc3_.width,_loc3_.height);
               _loc2_.endFill();
               _loc6_++;
            }
            _markshape.x = (_back.width - _loc3_.width >> 1) - 20;
         }
         else
         {
            _loc3_ = _numDic["Blue" + _loc4_];
            _loc2_.beginBitmapFill(_loc3_);
            _loc2_.drawRect(0,0,_loc3_.width,_loc3_.height);
            _loc2_.endFill();
            _markshape.x = _back.width - _loc3_.width >> 1;
         }
      }
      
      private function __mark(param1:TimerEvent) : void
      {
         SoundManager.instance.play("014");
         if(_isShowNum)
         {
            drawMark(_timer.repeatCount - _timer.currentCount);
         }
      }
      
      protected function __tryagainClick(param1:MouseEvent) : void
      {
         if(param1)
         {
            SoundManager.instance.play("008");
         }
         if(new CmdCheckBagLockedPSWNeeds().excute(3))
         {
            return;
         }
         if(GameControl.Instance.Current.selfGamePlayer.hasLevelAgain > 0)
         {
            GameInSocketOut.sendMissionTryAgain(1,true,_selectedItem.isBind);
            return;
         }
         if(RoomManager.Instance.current && RoomManager.Instance.current.selfRoomPlayer.isHost)
         {
            CheckMoneyUtils.instance.checkMoney(_selectedItem.isBind,_info.value,onCheckComplete);
         }
         else
         {
            tryagain(_selectedItem.isBind);
         }
      }
      
      protected function onCheckComplete() : void
      {
         GameInSocketOut.sendMissionTryAgain(1,true,CheckMoneyUtils.instance.isBind);
      }
      
      private function __onResponse(param1:FrameEvent) : void
      {
         SoundManager.instance.play("008");
         var _loc2_:BaseAlerFrame = param1.target as BaseAlerFrame;
         _loc2_.removeEventListener("response",__onResponse);
         _loc2_.dispose();
         if(param1.responseCode == 2 || param1.responseCode == 3)
         {
            LeavePageManager.leaveToFillPath();
         }
         if(RoomManager.Instance.current.selfRoomPlayer.isHost)
         {
            GameInSocketOut.sendMissionTryAgain(0,true);
         }
      }
      
      protected function tryagain(param1:Boolean = true) : void
      {
         dispatchEvent(new GameEvent("tryagain",param1));
      }
      
      private function __giveup(param1:MouseEvent) : void
      {
         if(param1)
         {
            SoundManager.instance.play("008");
         }
         dispatchEvent(new GameEvent("giveup",null));
      }
      
      private function removeEvent() : void
      {
         _tryagain.removeEventListener("click",__tryagainClick);
         _giveup.removeEventListener("click",__giveup);
         _timer.removeEventListener("timer",__mark);
         _timer.removeEventListener("timerComplete",__timeComplete);
         GameControl.Instance.removeEventListener("missionAgain",__missionAgain);
      }
      
      public function setLabyrinthTryAgain() : void
      {
         _titleField.htmlText = LanguageMgr.GetTranslation("tnak.game.tryagain.titleII",_info.host);
      }
      
      public function dispose() : void
      {
         removeEvent();
         var _loc3_:int = 0;
         var _loc2_:* = _numDic;
         for(var _loc1_ in _numDic)
         {
            ObjectUtils.disposeObject(_numDic[_loc1_]);
            delete _numDic[_loc1_];
         }
         ObjectUtils.disposeObject(_selectedItem);
         _selectedItem = null;
         ObjectUtils.disposeObject(_buffNote);
         _buffNote = null;
         ObjectUtils.disposeObject(_markshape);
         _markshape = null;
         ObjectUtils.disposeObject(_valueField);
         _valueField = null;
         ObjectUtils.disposeObject(_valueBack);
         _valueBack = null;
         ObjectUtils.disposeObject(_titleField);
         _titleField = null;
         ObjectUtils.disposeObject(_giveup);
         _giveup = null;
         ObjectUtils.disposeObject(_tryagain);
         _tryagain = null;
         ObjectUtils.disposeObject(_back);
         _back = null;
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
