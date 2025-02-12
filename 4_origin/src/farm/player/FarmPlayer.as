package farm.player
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.text.GradientText;
   import com.pickgliss.utils.DisplayUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.SceneCharacterEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import ddt.view.chat.chatBall.ChatBallPlayer;
   import ddt.view.common.VipLevelIcon;
   import ddt.view.sceneCharacter.SceneCharacterDirection;
   import ddt.view.scenePathSearcher.SceneScene;
   import farm.player.vo.GiftPacksTips;
   import farm.player.vo.PlayerVO;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import vip.VipController;
   
   public class FarmPlayer extends FarmPlayerBase
   {
       
      
      private var _playerVO:PlayerVO;
      
      private var _currentWalkStartPoint:Point;
      
      private var _isShowName:Boolean = true;
      
      private var _isChatBall:Boolean = false;
      
      private var _spName:Sprite;
      
      private var _lblName:FilterFrameText;
      
      private var _vipName:GradientText;
      
      private var _vipIcon:VipLevelIcon;
      
      private var _sceneScene:SceneScene;
      
      private var _chatBallView:ChatBallPlayer;
      
      private var _chatTimer:Timer;
      
      private var _giftPacks:GiftPacksTips;
      
      private var _clickFlag:Boolean;
      
      public function FarmPlayer(param1:PlayerVO, param2:Function = null)
      {
         _playerVO = param1;
         _currentWalkStartPoint = _playerVO.playerPos;
         super(param1.playerInfo,param2);
         initialize();
      }
      
      private function initialize() : void
      {
         var _loc1_:int = 0;
         moveSpeed = _playerVO.playerMoveSpeed;
         if(_isShowName)
         {
            if(!_lblName)
            {
               _lblName = ComponentFactory.Instance.creat("farm.playerInfo.lblName");
            }
            _lblName.mouseEnabled = false;
            _lblName.text = playerVO && playerVO.playerInfo && playerVO.playerInfo.NickName?playerVO.playerInfo.NickName:"";
            _lblName.textColor = 6029065;
            if(!_spName)
            {
               _spName = new Sprite();
            }
            if(playerVO.playerInfo.IsVIP)
            {
               _vipName = VipController.instance.getVipNameTxt(-1,playerVO.playerInfo.typeVIP);
               _vipName.textSize = 16;
               _vipName.x = _lblName.x;
               _vipName.y = _lblName.y;
               _vipName.text = _lblName.text;
               _spName.addChild(_vipName);
               DisplayUtils.removeDisplay(_lblName);
            }
            else
            {
               _spName.addChild(_lblName);
               DisplayUtils.removeDisplay(_vipName);
            }
            if(playerVO.playerInfo.IsVIP && !_vipIcon)
            {
               _vipIcon = ComponentFactory.Instance.creatCustomObject("asset.farm.VipIcon");
               if(playerVO.playerInfo.typeVIP >= 2)
               {
                  _vipIcon.y = _vipIcon.y - 5;
               }
               _vipIcon.setInfo(playerVO.playerInfo,false);
            }
            if(_vipIcon)
            {
               _spName.addChild(_vipIcon);
               _lblName.x = _vipIcon.x + _vipIcon.width;
               if(_vipName)
               {
                  _vipName.x = _lblName.x;
               }
            }
            _spName.x = (playerWitdh - _spName.width) / 2 - playerWitdh / 2;
            _spName.y = -playerHeight;
            _spName.graphics.beginFill(0,0.5);
            _loc1_ = !!_vipIcon?_lblName.textWidth + _vipIcon.width:Number(_lblName.textWidth + 8);
            if(playerVO.playerInfo.IsVIP)
            {
               _loc1_ = !!_vipIcon?_vipName.width + _vipIcon.width + 8:Number(_vipName.width + 8);
               _spName.x = (playerWitdh - (_vipIcon.width + _vipName.width)) / 2 - playerWitdh / 2;
            }
            _spName.graphics.drawRoundRect(-4,0,_loc1_,22,5,5);
            _spName.graphics.endFill();
            addChildAt(_spName,0);
            _spName.visible = _isShowName;
         }
         else
         {
            ObjectUtils.disposeObject(_vipName);
            _vipName = null;
            ObjectUtils.disposeObject(_lblName);
            _lblName = null;
         }
         initEvent();
      }
      
      public function set isChatBall(param1:Boolean) : void
      {
         if(param1)
         {
            _isChatBall = param1;
            if(!_chatTimer)
            {
               _chatTimer = new Timer(8000);
            }
            __onTimerHandle(null);
            _chatTimer.addEventListener("timer",__onTimerHandle);
            _chatTimer.start();
            addGiftPacks();
         }
         else
         {
            deleteChatTimer();
         }
      }
      
      private function deleteChatTimer() : void
      {
         if(_chatTimer)
         {
            _chatTimer.stop();
            _chatTimer.reset();
            _chatTimer.removeEventListener("timer",__onTimerHandle);
            _chatTimer = null;
         }
      }
      
      public function get isChatBall() : Boolean
      {
         return _isChatBall;
      }
      
      private function addGiftPacks() : void
      {
         deleteGiftPacks();
         _giftPacks = new GiftPacksTips();
         PositionUtils.setPos(_giftPacks,"farm.player.getPacks");
         LayerManager.Instance.addToLayer(_giftPacks,3);
         _giftPacks.visible = false;
         addEventListener("click",__onClick);
      }
      
      protected function __onTimerHandle(param1:TimerEvent) : void
      {
         deleteChatBallView();
         _chatBallView = new ChatBallPlayer();
         _chatBallView.x = (playerWitdh - _chatBallView.width) / 2 - playerWitdh / 2;
         _chatBallView.y = -playerHeight + 40;
         addChildAt(_chatBallView,this.getChildIndex(character) + 1);
         _chatBallView.setText(LanguageMgr.GetTranslation("ddt.farms.playerSpeakInfo"),_playerVO.playerInfo.paopaoType);
      }
      
      private function initEvent() : void
      {
         addEventListener("characterDirectionChange",characterDirectionChange);
      }
      
      protected function __onClick(param1:MouseEvent) : void
      {
         if(_giftPacks)
         {
            SoundManager.instance.play("008");
            param1.stopImmediatePropagation();
            _giftPacks.visible = true;
            _giftPacks.addEventListener("click",__onGiftPacksClick);
            StageReferance.stage.addEventListener("click",__clearGiftPacks);
         }
      }
      
      protected function __clearGiftPacks(param1:MouseEvent) : void
      {
         _giftPacks.visible = false;
      }
      
      protected function __onGiftPacksClick(param1:MouseEvent) : void
      {
         SoundManager.instance.play("008");
         _giftPacks.removeEventListener("click",__onGiftPacksClick);
         _giftPacks.visible = false;
         if(PlayerManager.Instance.Self.bagLocked)
         {
            BaglockedManager.Instance.show();
            return;
         }
         var _loc2_:BaseAlerFrame = AlertManager.Instance.simpleAlert(LanguageMgr.GetTranslation("AlertDialog.Info"),LanguageMgr.GetTranslation("ddt.farms.playerGiftPacksText"),LanguageMgr.GetTranslation("ok"),LanguageMgr.GetTranslation("cancel"),true,true,true,2);
         _loc2_.addEventListener("response",__onResponse);
      }
      
      private function __onResponse(param1:FrameEvent) : void
      {
         SoundManager.instance.play("008");
         var _loc2_:BaseAlerFrame = param1.target as BaseAlerFrame;
         _loc2_.removeEventListener("response",__onResponse);
         _loc2_.dispose();
         if(param1.responseCode == 2 || param1.responseCode == 3)
         {
            SocketManager.Instance.out.giftPacks(_playerVO.playerInfo.ID);
         }
      }
      
      private function characterDirectionChange(param1:SceneCharacterEvent) : void
      {
         SoundManager.instance.play("008");
         _playerVO.scenePlayerDirection = sceneCharacterDirection;
         if(param1.data)
         {
            if(sceneCharacterDirection == SceneCharacterDirection.LT || sceneCharacterDirection == SceneCharacterDirection.RT)
            {
               if(sceneCharacterStateType == "natural")
               {
                  sceneCharacterActionType = "naturalWalkBack";
               }
            }
            else if(sceneCharacterDirection == SceneCharacterDirection.LB || sceneCharacterDirection == SceneCharacterDirection.RB)
            {
               if(sceneCharacterStateType == "natural")
               {
                  sceneCharacterActionType = "naturalWalkFront";
               }
            }
         }
         else if(sceneCharacterDirection == SceneCharacterDirection.LT || sceneCharacterDirection == SceneCharacterDirection.RT)
         {
            if(sceneCharacterStateType == "natural")
            {
               sceneCharacterActionType = "naturalStandBack";
            }
         }
         else if(sceneCharacterDirection == SceneCharacterDirection.LB || sceneCharacterDirection == SceneCharacterDirection.RB)
         {
            if(sceneCharacterStateType == "natural")
            {
               sceneCharacterActionType = "naturalStandFront";
            }
         }
      }
      
      public function updatePlayer() : void
      {
         refreshCharacterState();
         characterMirror();
         playerWalkPath();
         update();
      }
      
      public function refreshCharacterState() : void
      {
         if((sceneCharacterDirection == SceneCharacterDirection.LT || sceneCharacterDirection == SceneCharacterDirection.RT) && _tween.isPlaying)
         {
            sceneCharacterActionType = "naturalWalkBack";
         }
         else if((sceneCharacterDirection == SceneCharacterDirection.LB || sceneCharacterDirection == SceneCharacterDirection.RB) && _tween.isPlaying)
         {
            sceneCharacterActionType = "naturalWalkFront";
         }
         moveSpeed = _playerVO.playerMoveSpeed;
      }
      
      private function characterMirror() : void
      {
         if(!isDefaultCharacter)
         {
            this.character.scaleX = !!sceneCharacterDirection.isMirror?-1:1;
            this.character.x = !!sceneCharacterDirection.isMirror?playerWitdh / 2:Number(-playerWitdh / 2);
         }
         else
         {
            this.character.scaleX = 1;
            this.character.x = -playerWitdh / 2;
         }
         this.character.y = -playerHeight + 12;
      }
      
      private function playerWalkPath() : void
      {
         if(_walkPath != null && _walkPath.length > 0 && _playerVO.walkPath.length > 0 && _walkPath != _playerVO.walkPath)
         {
            fixPlayerPath();
         }
         if(_playerVO && _playerVO.walkPath && _playerVO.walkPath.length <= 0 && !_tween.isPlaying)
         {
            return;
         }
         playerWalk(_playerVO.walkPath);
      }
      
      override public function playerWalk(param1:Array) : void
      {
         var _loc2_:Number = NaN;
         if(_walkPath != null && _tween.isPlaying && _walkPath == _playerVO.walkPath)
         {
            return;
         }
         _walkPath = _playerVO.walkPath;
         if(_walkPath && _walkPath.length > 0)
         {
            _currentWalkStartPoint = _walkPath[0];
            sceneCharacterDirection = SceneCharacterDirection.getDirection(playerPoint,_currentWalkStartPoint);
            dispatchEvent(new SceneCharacterEvent("characterDirectionChange",true));
            _loc2_ = Point.distance(_currentWalkStartPoint,playerPoint);
            _tween.start(_loc2_ / _moveSpeed,"x",_currentWalkStartPoint.x,"y",_currentWalkStartPoint.y);
            _walkPath.shift();
         }
         else
         {
            dispatchEvent(new SceneCharacterEvent("characterDirectionChange",false));
         }
      }
      
      public function set setSceneCharacterDirectionDefault(param1:SceneCharacterDirection) : void
      {
         if(param1 == SceneCharacterDirection.LT || param1 == SceneCharacterDirection.RT)
         {
            if(sceneCharacterStateType == "natural")
            {
               sceneCharacterActionType = "naturalStandBack";
            }
         }
         else if(param1 == SceneCharacterDirection.LB || param1 == SceneCharacterDirection.RB)
         {
            if(sceneCharacterStateType == "natural")
            {
               sceneCharacterActionType = "naturalStandFront";
            }
         }
      }
      
      private function fixPlayerPath() : void
      {
         var _loc3_:int = 0;
         var _loc1_:* = null;
         if(_playerVO.currentWalkStartPoint == null)
         {
            return;
         }
         var _loc2_:* = -1;
         _loc3_ = 0;
         while(_loc3_ < _walkPath.length)
         {
            if(_walkPath[_loc3_].x == _playerVO.currentWalkStartPoint.x && _walkPath[_loc3_].y == _playerVO.currentWalkStartPoint.y)
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         if(_loc2_ > 0)
         {
            _loc1_ = _walkPath.slice(0,_loc2_);
            _playerVO.walkPath = _loc1_.concat(_playerVO.walkPath);
         }
      }
      
      private function deleteChatBallView() : void
      {
         if(_chatBallView)
         {
            _chatBallView.clear();
            if(_chatBallView.parent)
            {
               _chatBallView.parent.removeChild(_chatBallView);
            }
            _chatBallView.dispose();
         }
         _chatBallView = null;
      }
      
      private function deleteGiftPacks() : void
      {
         if(_giftPacks)
         {
            if(_giftPacks.parent)
            {
               _giftPacks.parent.removeChild(_giftPacks);
            }
            _giftPacks.dispose();
         }
         _giftPacks = null;
      }
      
      private function removeEvent() : void
      {
         removeEventListener("characterDirectionChange",characterDirectionChange);
         removeEventListener("click",__onClick);
         if(_giftPacks)
         {
            _giftPacks.removeEventListener("click",__onGiftPacksClick);
         }
         StageReferance.stage.removeEventListener("click",__clearGiftPacks);
      }
      
      public function get currentWalkStartPoint() : Point
      {
         return _currentWalkStartPoint;
      }
      
      public function get isShowName() : Boolean
      {
         return _isShowName;
      }
      
      public function set isShowName(param1:Boolean) : void
      {
         _isShowName = param1;
         if(!_spName)
         {
            return;
         }
         _spName.visible = _isShowName;
      }
      
      public function get playerVO() : PlayerVO
      {
         return _playerVO;
      }
      
      public function set playerVO(param1:PlayerVO) : void
      {
         _playerVO = param1;
      }
      
      public function get sceneScene() : SceneScene
      {
         return _sceneScene;
      }
      
      public function set sceneScene(param1:SceneScene) : void
      {
         _sceneScene = param1;
      }
      
      override public function dispose() : void
      {
         removeEvent();
         isChatBall = false;
         if(_playerVO)
         {
            _playerVO = null;
         }
         if(_currentWalkStartPoint)
         {
            _currentWalkStartPoint = null;
         }
         if(_spName)
         {
            ObjectUtils.disposeObject(_spName);
            _spName = null;
         }
         if(_lblName)
         {
            _lblName.dispose();
            _lblName = null;
         }
         if(_vipName)
         {
            _vipName.dispose();
            _vipName = null;
         }
         if(_vipIcon)
         {
            _vipIcon.dispose();
            _vipIcon = null;
         }
         if(_sceneScene)
         {
            _sceneScene.dispose();
            _sceneScene = null;
         }
         deleteChatBallView();
         deleteGiftPacks();
         deleteChatTimer();
         super.dispose();
      }
      
      public function get giftPacks() : GiftPacksTips
      {
         return _giftPacks;
      }
   }
}
