package email.view
{
   import baglocked.BaglockedManager;
   import baglocked.SetPassEvent;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.email.EmailInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SharedManager;
   import ddt.manager.SoundManager;
   import ddt.manager.TimeManager;
   import email.MailManager;
   import email.manager.MailControl;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.media.SoundTransform;
   import flash.text.TextFormat;
   import giftSystem.GiftManager;
   
   public class EmailStrip extends Sprite implements Disposeable
   {
      
      public static const SELECT:String = "select";
       
      
      protected var _info:EmailInfo;
      
      protected var _isReading:Boolean;
      
      protected var _checkBox:SelectedCheckButton;
      
      protected var _cell:DiamondOfStrip;
      
      protected var _emailStripBg:MovieClip;
      
      protected var _deleteBtn:BaseButton;
      
      protected var _GMImg:Bitmap;
      
      protected var _emailType:ScaleFrameImage;
      
      protected var _EggKingImg:Bitmap;
      
      protected var _topicTxt:FilterFrameText;
      
      protected var _senderTxt:FilterFrameText;
      
      protected var _validityTxt:FilterFrameText;
      
      protected var _payImg:Bitmap;
      
      protected var _unReadImg:Bitmap;
      
      private var _deleteAlert:BaseAlerFrame;
      
      protected var _unXinImg:Bitmap;
      
      protected var _payIMGII:Bitmap;
      
      private var _emptyItem:Boolean = false;
      
      private var _movie:MovieClip;
      
      private var _soundControl:SoundTransform;
      
      public function EmailStrip()
      {
         super();
         initView();
         addEvent();
      }
      
      protected function initView() : void
      {
         _emailStripBg = ComponentFactory.Instance.creat("asset.email.EmailStripBG");
         addChildAt(_emailStripBg,0);
         _emailStripBg.bg.gotoAndStop(1);
         _cell = ComponentFactory.Instance.creatCustomObject("email.emailStrip.cell");
         addChild(_cell);
         var _loc2_:Sprite = creatMaskSprit();
         addChild(_loc2_);
         _cell.mask = _loc2_;
         _emailType = ComponentFactory.Instance.creat("email.emailType");
         addChild(_emailType);
         _EggKingImg = ComponentFactory.Instance.creatBitmap("asset.email.eggKingAsset");
         addChild(_EggKingImg);
         _EggKingImg.visible = false;
         _topicTxt = ComponentFactory.Instance.creat("email.strip.topicTxt");
         addChild(_topicTxt);
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(16711680);
         _loc1_.graphics.drawRect(0,0,218,18);
         _loc1_.graphics.endFill();
         _loc1_.x = _topicTxt.x;
         _loc1_.y = _topicTxt.y;
         addChild(_loc1_);
         _topicTxt.mask = _loc1_;
         _senderTxt = ComponentFactory.Instance.creat("email.strip.senderTxt");
         addChild(_senderTxt);
         _validityTxt = ComponentFactory.Instance.creat("email.strip.validityTxt");
         addChild(_validityTxt);
         _payImg = ComponentFactory.Instance.creatBitmap("asset.email.payImg");
         addChild(_payImg);
         _payImg.visible = true;
         _unReadImg = ComponentFactory.Instance.creatBitmap("asset.email.unReadImg");
         addChild(_unReadImg);
         _unReadImg.visible = false;
         _deleteBtn = ComponentFactory.Instance.creat("email.stripDeleteBtn");
         addChild(_deleteBtn);
         buttonMode = true;
         _checkBox = ComponentFactory.Instance.creat("email.stripCheckBtn");
         addChild(_checkBox);
         _checkBox.selected = false;
         _payIMGII = ComponentFactory.Instance.creatBitmap("asset.email.payImgII");
         addChild(_payIMGII);
         _payIMGII.visible = false;
         _unXinImg = ComponentFactory.Instance.creatBitmap("asset.email.unXinImg");
         _unXinImg.x = _unReadImg.x;
         _unXinImg.y = _unReadImg.y;
         _unXinImg.visible = false;
         addChild(_unXinImg);
      }
      
      private function creatMaskSprit() : Sprite
      {
         var _loc1_:Sprite = new Sprite();
         _loc1_.graphics.beginFill(16777215);
         _loc1_.graphics.drawRect(0,0,45,45);
         _loc1_.graphics.endFill();
         return _loc1_;
      }
      
      private function addEvent() : void
      {
         _deleteBtn.addEventListener("click",__delete);
         addEventListener("click",__click);
         addEventListener("mouseOver",__over);
         addEventListener("mouseOut",__out);
      }
      
      private function removeEvent() : void
      {
         if(_deleteBtn)
         {
            _deleteBtn.removeEventListener("click",__delete);
         }
         removeEventListener("click",__click);
         removeEventListener("mouseOver",__over);
         removeEventListener("mouseOut",__out);
      }
      
      public function set info(param1:EmailInfo) : void
      {
         _info = param1;
         update();
      }
      
      public function get info() : EmailInfo
      {
         return _info;
      }
      
      public function set isReading(param1:Boolean) : void
      {
         if(_isReading == param1)
         {
            return;
         }
         _isReading = param1;
         update();
      }
      
      public function get selected() : Boolean
      {
         return _checkBox.selected;
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(_info.Type == 58 || _info.Type == 13 || _info.Type == 59)
         {
            param1 = false;
         }
         if(_info.Type == 13 || _info.Type == 66)
         {
            param1 = true;
         }
         _checkBox.selected = param1;
      }
      
      public function update() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:* = null;
         _topicTxt.text = _info.Title;
         _senderTxt.text = LanguageMgr.GetTranslation("tank.view.emailII.EmailIIStripView.sender") + _info.Sender;
         _loc1_ = MailManager.Instance.calculateRemainTime(_info.SendTime,_info.ValidDate);
         if(_loc1_ >= 24)
         {
            _validityTxt.text = LanguageMgr.GetTranslation("tank.view.emailII.EmailIIStripView.validity") + String(Math.ceil(_loc1_ / 24)) + LanguageMgr.GetTranslation("tank.view.emailII.EmailIIStripView.day");
         }
         else if(_loc1_ > 0 && _loc1_ < 24)
         {
            _validityTxt.text = LanguageMgr.GetTranslation("tank.view.emailII.EmailIIStripView.validity") + String(Math.ceil(_loc1_)) + LanguageMgr.GetTranslation("hours");
         }
         else
         {
            MailControl.Instance.removeMail(info);
            MailManager.Instance.changeSelected(null);
            clearItem();
         }
         _unReadImg.visible = !_info.IsRead;
         if(_info.Type > 100)
         {
            _unReadImg.visible = false;
            _payImg.visible = _info.Money > 0;
            _payIMGII.visible = _info.Type == 101;
         }
         else
         {
            _deleteBtn.enable = !(_info.Type == 58 || _info.Type == 59);
            _EggKingImg.visible = _info.Type == 58;
            _checkBox.enable = !(_info.Type == 58 || _info.Type == 59);
            _payImg.visible = false;
            _payIMGII.visible = false;
            if(_info.Type == 58 || _info.Type == 13 || _info.Type == 66)
            {
               _deleteBtn.enable = false;
               _checkBox.enable = false;
               if(_info.Type == 66 && _info.Annex1 == null && _info.Annex2 == null && _info.Annex3 == null && _info.Annex4 == null && _info.Annex5 == null)
               {
                  _deleteBtn.enable = true;
                  _checkBox.enable = true;
               }
               if(_info.Type == 13 || _info.Type == 66)
               {
                  _deleteBtn.enable = true;
                  _checkBox.enable = true;
               }
            }
         }
         if(_info.ReceiverID != _info.SenderID && _info.Type == 1 || _info.Type == 67 || _info.Type == 59 || _info.Type == 101)
         {
            _emailType.setFrame(1);
         }
         else if(_info.Type == 51)
         {
            _emailType.setFrame(2);
         }
         else
         {
            _emailType.visible = false;
         }
         if(_isReading)
         {
            _emailStripBg.bg.gotoAndStop(2);
         }
         else
         {
            _emailStripBg.bg.gotoAndStop(1);
         }
         _cell.info = _info;
         if(_info.Type == 81)
         {
            _unReadImg.visible = false;
            _unXinImg.visible = !_info.IsRead;
            _loc2_ = ComponentFactory.Instance.model.getSet("format_email_emailStripXinTF");
            _topicTxt.setTextFormat(_loc2_);
            _topicTxt.defaultTextFormat = _loc2_;
            _topicTxt.filters = ComponentFactory.Instance.creatFrameFilters("format_email_emailStripXinGF")[0];
         }
      }
      
      private function __delete(param1:MouseEvent) : void
      {
         SoundManager.instance.play("008");
         param1.stopImmediatePropagation();
         if((info.Money > 0 || info.Medal > 0 || info.BindMoney > 0 || info.hasAnnexs()) && info.Type != 81 && info.Type != 83)
         {
            MessageTipManager.getInstance().show(LanguageMgr.GetTranslation("tank.view.emailII.EmailIIStripView.delectEmailInfo"));
         }
         else if(PlayerManager.Instance.Self.bagPwdState)
         {
            if(!PlayerManager.Instance.Self.bagLocked)
            {
               ok();
            }
            else
            {
               BaglockedManager.Instance.addEventListener("cancelBtn",__cancelBtn);
               BaglockedManager.Instance.show();
               return;
            }
         }
         else
         {
            ok();
         }
      }
      
      private function disposeAlert() : void
      {
         if(_deleteAlert)
         {
            _deleteAlert.removeEventListener("response",__deleteAlertResponse);
            _deleteAlert.dispose();
         }
         _deleteAlert = null;
      }
      
      private function __cancelBtn(param1:SetPassEvent) : void
      {
         BaglockedManager.Instance.removeEventListener("cancelBtn",__cancelBtn);
         disposeAlert();
      }
      
      private function __deleteAlertResponse(param1:FrameEvent) : void
      {
         SoundManager.instance.play("008");
         _deleteAlert.removeEventListener("response",__deleteAlertResponse);
         ObjectUtils.disposeObject(_deleteAlert);
         if(_deleteAlert.parent)
         {
            _deleteAlert.parent.removeChild(_deleteAlert);
         }
         if(param1.responseCode == 4 || param1.responseCode == 0 || param1.responseCode == 1)
         {
            cancel();
         }
         if(param1.responseCode == 3 || param1.responseCode == 2)
         {
            ok();
         }
      }
      
      private function cancel() : void
      {
         SoundManager.instance.play("008");
         disposeAlert();
      }
      
      private function ok() : void
      {
         SoundManager.instance.play("008");
         disposeAlert();
         MailControl.Instance.deleteEmail(_info);
         clearItem();
         MailControl.Instance.removeMail(info);
         MailManager.Instance.changeSelected(null);
      }
      
      public function get emptyItem() : Boolean
      {
         return this._emptyItem;
      }
      
      private function clearItem() : void
      {
         removeEvent();
         buttonMode = false;
         _emptyItem = true;
         _topicTxt.text = "";
         _senderTxt.text = "";
         _validityTxt.text = "";
         if(_emailType.parent)
         {
            removeChild(_emailType);
         }
         if(_topicTxt.parent)
         {
            removeChild(_topicTxt);
         }
         if(_senderTxt.parent)
         {
            removeChild(_senderTxt);
         }
         if(_validityTxt.parent)
         {
            removeChild(_validityTxt);
         }
         if(_unReadImg.parent)
         {
            removeChild(_unReadImg);
         }
         if(_payImg.parent)
         {
            removeChild(_payImg);
         }
         if(_checkBox.parent)
         {
            removeChild(_checkBox);
         }
         if(_cell.parent)
         {
            removeChild(_cell);
         }
         if(_payIMGII.parent)
         {
            removeChild(_payIMGII);
         }
         _emailStripBg.bg.gotoAndStop(1);
      }
      
      private function __over(param1:MouseEvent) : void
      {
         if(!_isReading)
         {
            _emailStripBg.bg.gotoAndStop(2);
         }
      }
      
      private function __out(param1:MouseEvent) : void
      {
         if(!_isReading)
         {
            _emailStripBg.bg.gotoAndStop(1);
         }
      }
      
      private function __click(param1:MouseEvent) : void
      {
         var _loc4_:* = null;
         var _loc3_:* = null;
         var _loc2_:* = null;
         SoundManager.instance.play("008");
         if(!_info.IsRead)
         {
            MailControl.Instance.readEmail(_info);
            _info.IsRead = true;
            if(_info.Type == 58 || _info.Type == 59)
            {
               if(SharedManager.Instance.spacialReadedMail[PlayerManager.Instance.Self.ID])
               {
                  _loc4_ = SharedManager.Instance.spacialReadedMail[PlayerManager.Instance.Self.ID] as Array;
                  if(_loc4_.indexOf(_info.ID) < 0)
                  {
                     _loc4_.push(_info.ID);
                  }
               }
               else
               {
                  SharedManager.Instance.spacialReadedMail[PlayerManager.Instance.Self.ID] = [_info.ID];
               }
               SharedManager.Instance.save();
            }
            _loc3_ = _info.SendTime;
            _loc2_ = new Date(Number(_loc3_.substr(0,4)),_loc3_.substr(5,2) - 1,Number(_loc3_.substr(8,2)),Number(_loc3_.substr(11,2)),Number(_loc3_.substr(14,2)),Number(_loc3_.substr(17,2)));
            if(!(_info.Type > 100 && _info.Money > 0) && _info.Type != 58 && _info.Type != 94)
            {
               _info.ValidDate = 72 + (TimeManager.Instance.Now().time - _loc2_.time) / 3600000;
            }
            update();
            if(_info.Type == 55)
            {
               _movie = ClassUtils.CreatInstance("asset.giftMovie") as MovieClip;
               LayerManager.Instance.addToLayer(_movie,0,false,1);
               _movie.x = StageReferance.stageWidth / 2;
               _movie.y = StageReferance.stageHeight / 2 - 250;
               _movie.addEventListener("close",__removeMovie);
               _movie.addEventListener("enterFrame",__addClickEvent);
               _soundControl = new SoundTransform();
               if(SoundManager.instance.allowSound)
               {
                  _soundControl.volume = 1;
               }
               else
               {
                  _soundControl.volume = 0;
               }
               _movie.soundTransform = _soundControl;
            }
         }
         isReading = true;
         dispatchEvent(new Event("select"));
         MailManager.Instance.changeSelected(_info);
      }
      
      protected function __removeMovie(param1:Event) : void
      {
         _movie.removeEventListener("close",__removeMovie);
         _movie.removeEventListener("click",__movieClickHandler);
         _soundControl.volume = 0;
         _movie.soundTransform = _soundControl;
         _soundControl = null;
         ObjectUtils.disposeObject(_movie);
         _movie = null;
      }
      
      protected function __addClickEvent(param1:Event) : void
      {
         if(_movie["ikNode_5"])
         {
            _movie.removeEventListener("enterFrame",__addClickEvent);
            _movie.addEventListener("click",__movieClickHandler);
            _movie.buttonMode = true;
         }
      }
      
      protected function __movieClickHandler(param1:Event) : void
      {
         SoundManager.instance.play("008");
         GiftManager.Instance.show();
         MailControl.Instance.hide();
         __removeMovie(null);
      }
      
      override public function get height() : Number
      {
         return _emailStripBg.height;
      }
      
      public function dispose() : void
      {
         removeEvent();
         if(_checkBox)
         {
            ObjectUtils.disposeObject(_checkBox);
         }
         _checkBox = null;
         if(_emailType)
         {
            ObjectUtils.disposeObject(_emailType);
         }
         _emailType = null;
         if(_payImg)
         {
            ObjectUtils.disposeObject(_payImg);
         }
         _payImg = null;
         if(_unReadImg)
         {
            ObjectUtils.disposeObject(_unReadImg);
         }
         _unReadImg = null;
         if(_deleteBtn)
         {
            ObjectUtils.disposeObject(_deleteBtn);
         }
         _deleteBtn = null;
         if(_topicTxt)
         {
            ObjectUtils.disposeObject(_topicTxt);
         }
         _topicTxt = null;
         if(_senderTxt)
         {
            ObjectUtils.disposeObject(_senderTxt);
         }
         _senderTxt = null;
         if(_validityTxt)
         {
            ObjectUtils.disposeObject(_validityTxt);
         }
         _validityTxt = null;
         if(_emailStripBg)
         {
            ObjectUtils.disposeObject(_emailStripBg);
         }
         _emailStripBg = null;
         if(_cell)
         {
            ObjectUtils.disposeObject(_cell);
         }
         _cell = null;
         if(_deleteAlert)
         {
            ObjectUtils.disposeObject(_deleteAlert);
         }
         _deleteAlert = null;
         if(_payIMGII)
         {
            ObjectUtils.disposeObject(_payIMGII);
         }
         _payIMGII = null;
         if(_unXinImg)
         {
            ObjectUtils.disposeObject(_unXinImg);
         }
         _unXinImg = null;
         _info = null;
         if(this.parent)
         {
            this.parent.removeChild(this);
         }
      }
   }
}
