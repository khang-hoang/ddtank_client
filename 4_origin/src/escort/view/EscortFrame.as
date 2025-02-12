package escort.view
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.LeavePageManager;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import escort.EscortControl;
   import escort.EscortManager;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import invite.InviteManager;
   
   public class EscortFrame extends Frame
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _bottomBg:ScaleBitmapImage;
      
      private var _cellList:Vector.<EscortFrameItemCell>;
      
      private var _btn:SimpleBitmapButton;
      
      private var _countTxt:FilterFrameText;
      
      private var _helpBtn:EscortHelpBtn;
      
      private var _doubleTagIcon:Bitmap;
      
      private var _matchView:EscortMatchView;
      
      public function EscortFrame()
      {
         super();
         InviteManager.Instance.enabled = false;
         _cellList = new Vector.<EscortFrameItemCell>();
         initView();
         initEvent();
      }
      
      private function initView() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         titleText = LanguageMgr.GetTranslation("escort.frame.titleTxt");
         _bg = ComponentFactory.Instance.creatComponentByStylename("escort.frame.bg");
         addToContent(_bg);
         _bottomBg = ComponentFactory.Instance.creatComponentByStylename("escort.frame.bottomBg");
         addToContent(_bottomBg);
         _loc2_ = 0;
         while(_loc2_ < 3)
         {
            _loc1_ = new EscortFrameItemCell(_loc2_,EscortControl.instance.dataInfo.carInfo[_loc2_]);
            _loc1_.x = 8 + (_loc1_.width + 4) * _loc2_;
            _loc1_.y = 10;
            addToContent(_loc1_);
            _cellList.push(_loc1_);
            _loc2_++;
         }
         _countTxt = ComponentFactory.Instance.creatComponentByStylename("escort.frame.countTxt");
         refreshEnterCountHandler(null);
         addToContent(_countTxt);
         _helpBtn = new EscortHelpBtn(false);
         addToContent(_helpBtn);
         _doubleTagIcon = ComponentFactory.Instance.creatBitmap("asset.escort.doubleScoreIcon");
         addToContent(_doubleTagIcon);
         refreshDoubleTagIcon();
      }
      
      private function refreshDoubleTagIcon() : void
      {
         if(EscortControl.instance.isInDoubleTime)
         {
            _doubleTagIcon.visible = true;
         }
         else
         {
            _doubleTagIcon.visible = false;
         }
      }
      
      private function initEvent() : void
      {
         addEventListener("response",__responseHandler);
         _btn.addEventListener("click",clickHandler,false,0,true);
         EscortManager.instance.addEventListener("escortStartGame",startGameHandler);
         EscortManager.instance.addEventListener("escortEnterGame",enterGameHandler);
         EscortManager.instance.addEventListener("escortEnd",endHandler);
         EscortManager.instance.addEventListener("escortRefreshEnterCount",refreshEnterCountHandler);
      }
      
      private function refreshEnterCountHandler(param1:Event) : void
      {
         var _loc3_:* = 0;
         if(_btn)
         {
            _btn.removeEventListener("click",clickHandler);
            ObjectUtils.disposeObject(_btn);
         }
         var _loc2_:int = EscortControl.instance.freeCount;
         if(_loc2_ > 0)
         {
            _btn = ComponentFactory.Instance.creatComponentByStylename("escort.frame.freeBtn");
            _loc3_ = _loc2_;
         }
         else
         {
            _btn = ComponentFactory.Instance.creatComponentByStylename("escort.frame.startBtn");
            _loc3_ = int(EscortControl.instance.usableCount);
         }
         addToContent(_btn);
         _countTxt.text = "(" + _loc3_ + ")";
      }
      
      private function endHandler(param1:Event) : void
      {
         SocketManager.Instance.out.sendEscortCancelGame();
         dispose();
      }
      
      private function enterGameHandler(param1:Event) : void
      {
         dispose();
         StateManager.setState("escort");
      }
      
      private function startGameHandler(param1:Event) : void
      {
         _matchView = ComponentFactory.Instance.creatComponentByStylename("escort.frame.matchView");
         LayerManager.Instance.addToLayer(_matchView,2,true,2);
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = null;
         var _loc4_:* = null;
         SoundManager.instance.play("008");
         if(PlayerManager.Instance.Self.bagLocked)
         {
            BaglockedManager.Instance.show();
            return;
         }
         if(EscortControl.instance.freeCount > 0)
         {
            SocketManager.Instance.out.sendEscortStartGame(false);
         }
         else
         {
            if(EscortControl.instance.usableCount <= 0)
            {
               MessageTipManager.getInstance().show(LanguageMgr.GetTranslation("escort.noEnoughUsableCount"));
               return;
            }
            _loc3_ = EscortControl.instance.startGameNeedMoney;
            _loc2_ = EscortControl.instance.getBuyRecordStatus(1);
            if(_loc2_.isNoPrompt)
            {
               if(_loc2_.isBand && PlayerManager.Instance.Self.BandMoney < _loc3_)
               {
                  MessageTipManager.getInstance().show(LanguageMgr.GetTranslation("bindMoneyPoorNote"));
                  _loc2_.isNoPrompt = false;
               }
               else if(!_loc2_.isBand && PlayerManager.Instance.Self.Money < _loc3_)
               {
                  MessageTipManager.getInstance().show(LanguageMgr.GetTranslation("moneyPoorNote"));
                  _loc2_.isNoPrompt = false;
               }
               else
               {
                  SocketManager.Instance.out.sendEscortStartGame(_loc2_.isBand);
                  return;
               }
            }
            _loc4_ = AlertManager.Instance.simpleAlert(LanguageMgr.GetTranslation("AlertDialog.Info"),LanguageMgr.GetTranslation("escort.frame.startGameConfirmTxt",_loc3_),LanguageMgr.GetTranslation("ok"),LanguageMgr.GetTranslation("cancel"),true,true,true,1,null,"EscortBuyConfirmView",30,true);
            _loc4_.moveEnable = false;
            _loc4_.addEventListener("response",startConfirm,false,0,true);
         }
      }
      
      private function startConfirm(param1:FrameEvent) : void
      {
         var _loc4_:int = 0;
         var _loc2_:* = null;
         var _loc3_:* = null;
         SoundManager.instance.play("008");
         var _loc5_:BaseAlerFrame = param1.currentTarget as BaseAlerFrame;
         _loc5_.removeEventListener("response",startConfirm);
         if(param1.responseCode == 3 || param1.responseCode == 2)
         {
            _loc4_ = EscortControl.instance.startGameNeedMoney;
            if(_loc5_.isBand && PlayerManager.Instance.Self.BandMoney < _loc4_)
            {
               _loc2_ = AlertManager.Instance.simpleAlert(LanguageMgr.GetTranslation("AlertDialog.Info"),LanguageMgr.GetTranslation("escort.game.useSkillNoEnoughReConfirm"),LanguageMgr.GetTranslation("ok"),LanguageMgr.GetTranslation("cancel"),true,true,true,1);
               _loc2_.moveEnable = false;
               _loc2_.addEventListener("response",startGameReConfirm,false,0,true);
               return;
            }
            if(!_loc5_.isBand && PlayerManager.Instance.Self.Money < _loc4_)
            {
               LeavePageManager.showFillFrame();
               return;
            }
            if((_loc5_ as EscortBuyConfirmView).isNoPrompt)
            {
               _loc3_ = EscortControl.instance.getBuyRecordStatus(1);
               _loc3_.isNoPrompt = true;
               _loc3_.isBand = _loc5_.isBand;
            }
            SocketManager.Instance.out.sendEscortStartGame(_loc5_.isBand);
         }
      }
      
      private function startGameReConfirm(param1:FrameEvent) : void
      {
         var _loc2_:int = 0;
         SoundManager.instance.play("008");
         var _loc3_:BaseAlerFrame = param1.currentTarget as BaseAlerFrame;
         _loc3_.removeEventListener("response",startGameReConfirm);
         if(param1.responseCode == 3 || param1.responseCode == 2)
         {
            _loc2_ = EscortControl.instance.startGameNeedMoney;
            if(PlayerManager.Instance.Self.Money < _loc2_)
            {
               LeavePageManager.showFillFrame();
               return;
            }
            SocketManager.Instance.out.sendEscortStartGame(false);
         }
      }
      
      private function __responseHandler(param1:FrameEvent) : void
      {
         if(param1.responseCode == 0 || param1.responseCode == 1)
         {
            SoundManager.instance.play("008");
            dispose();
         }
      }
      
      private function removeEvent() : void
      {
         removeEventListener("response",__responseHandler);
         if(_btn)
         {
            _btn.removeEventListener("click",clickHandler);
         }
         EscortManager.instance.removeEventListener("escortStartGame",startGameHandler);
         EscortManager.instance.removeEventListener("escortEnterGame",enterGameHandler);
         EscortManager.instance.removeEventListener("escortEnd",endHandler);
         EscortManager.instance.removeEventListener("escortRefreshEnterCount",refreshEnterCountHandler);
      }
      
      override public function dispose() : void
      {
         InviteManager.Instance.enabled = true;
         removeEvent();
         super.dispose();
         _bg = null;
         _bottomBg = null;
         _cellList = null;
         _btn = null;
         _countTxt = null;
         _helpBtn = null;
         _doubleTagIcon = null;
         ObjectUtils.disposeObject(_matchView);
         _matchView = null;
      }
   }
}
