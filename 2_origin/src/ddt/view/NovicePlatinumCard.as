package ddt.view
{
   import activeEvents.data.ActiveEventsInfo;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.loader.BaseLoader;
   import com.pickgliss.loader.LoadResourceManager;
   import com.pickgliss.loader.LoaderEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.controls.TextInput;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.PkgEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PathManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.RequestVairableCreater;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.net.URLVariables;
   
   public class NovicePlatinumCard extends Frame
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _activityCardPSWII:Bitmap;
      
      private var _divisionLine:Bitmap;
      
      private var _iconGive:Bitmap;
      
      private var _textInput:TextInput;
      
      private var _awardTxt:FilterFrameText;
      
      private var _activeGetBtn:TextButton;
      
      private var _activeCloseBtn:TextButton;
      
      private var _activeEventsInfo:ActiveEventsInfo;
      
      public function NovicePlatinumCard()
      {
         super();
         initView();
         addEvent();
      }
      
      private function initView() : void
      {
         this.titleText = LanguageMgr.GetTranslation("ddt.view.NovicePlatinumCard.titleText");
         _bg = ComponentFactory.Instance.creatComponentByStylename("core.activeEventsBg");
         this.addToContent(_bg);
         _activityCardPSWII = ComponentFactory.Instance.creatBitmap("asset.core.NovicePlatinumCard.activityCardPSWII");
         this.addToContent(_activityCardPSWII);
         _divisionLine = ComponentFactory.Instance.creatBitmap("asset.core.NovicePlatinumCard.divisionLine");
         this.addToContent(_divisionLine);
         _iconGive = ComponentFactory.Instance.creatBitmap("asset.core.NovicePlatinumCard.iconGive");
         this.addToContent(_iconGive);
         _textInput = ComponentFactory.Instance.creatComponentByStylename("core.NovicePlatinumCard.textInput");
         this.addToContent(_textInput);
         _awardTxt = ComponentFactory.Instance.creatComponentByStylename("core.NovicePlatinumCard.awardTxt");
         this.addToContent(_awardTxt);
         _activeGetBtn = ComponentFactory.Instance.creatComponentByStylename("core.NovicePlatinumCard.activeGetBtn");
         _activeGetBtn.text = LanguageMgr.GetTranslation("get");
         _activeGetBtn.enable = false;
         this.addToContent(_activeGetBtn);
         _activeCloseBtn = ComponentFactory.Instance.creatComponentByStylename("core.NovicePlatinumCard.activeCloseBtn");
         _activeCloseBtn.text = LanguageMgr.GetTranslation("cancel");
         this.addToContent(_activeCloseBtn);
      }
      
      private function addEvent() : void
      {
         addEventListener("response",__frameEventHandler);
         _textInput.addEventListener("textInput",__input);
         _textInput.addEventListener("change",__onChange);
         _textInput.addEventListener("keyDown",__textInputKeyDown);
         _activeGetBtn.addEventListener("click",__activeGetBtnClick);
         _activeCloseBtn.addEventListener("click",__activeCloseBtnClick);
         SocketManager.Instance.addEventListener(PkgEvent.format(11),__activeSocket);
      }
      
      private function removeEvent() : void
      {
         removeEventListener("response",__frameEventHandler);
         _textInput.removeEventListener("textInput",__input);
         _textInput.removeEventListener("change",__onChange);
         _textInput.removeEventListener("keyDown",__textInputKeyDown);
         _activeGetBtn.removeEventListener("click",__activeGetBtnClick);
         _activeCloseBtn.removeEventListener("click",__activeCloseBtnClick);
         SocketManager.Instance.removeEventListener(PkgEvent.format(11),__activeSocket);
      }
      
      protected function __activeSocket(param1:PkgEvent) : void
      {
         var _loc2_:Boolean = param1.pkg.readBoolean();
         if(_loc2_)
         {
            dispose();
         }
         else
         {
            _activeGetBtn.enable = true;
         }
      }
      
      private function __input(param1:TextEvent) : void
      {
         if(_textInput.text.length + param1.text.length > 50)
         {
            param1.preventDefault();
         }
      }
      
      private function __onChange(param1:Event) : void
      {
         if(_textInput.text != "")
         {
            _activeGetBtn.enable = true;
         }
         else
         {
            _activeGetBtn.enable = false;
         }
      }
      
      protected function __textInputKeyDown(param1:KeyboardEvent) : void
      {
         if(_activeGetBtn.enable && param1.keyCode == 13)
         {
            __activeGetBtnClick();
         }
      }
      
      protected function __activeGetBtnClick(param1:MouseEvent = null) : void
      {
         var _loc2_:* = null;
         SoundManager.instance.play("008");
         if(_textInput.text == "")
         {
            _loc2_ = AlertManager.Instance.simpleAlert(LanguageMgr.GetTranslation("AlertDialog.Info"),LanguageMgr.GetTranslation("tank.movement.MovementRightView.pass"),LanguageMgr.GetTranslation("ok"),LanguageMgr.GetTranslation("cancel"),true,false,false,2);
            _loc2_.info.showCancel = false;
            return;
         }
         _activeGetBtn.enable = false;
         SocketManager.Instance.out.sendActivePullDown(_activeEventsInfo.ActiveID,_textInput.text);
      }
      
      public function setup() : void
      {
         var _loc4_:int = 0;
         var _loc1_:* = null;
         var _loc3_:* = null;
         var _loc2_:Array = null;
         if(_loc2_ == null)
         {
            dispose();
            return;
         }
         _loc4_ = 0;
         while(_loc4_ < _loc2_.length)
         {
            if(_loc2_[_loc4_].Type == 10)
            {
               _activeEventsInfo = _loc2_[_loc4_] as ActiveEventsInfo;
            }
            _loc4_++;
         }
         if(_activeEventsInfo)
         {
            _loc1_ = RequestVairableCreater.creatWidthKey(true);
            _loc3_ = LoadResourceManager.Instance.createLoader(PathManager.solveRequestPath("UserGetActiveState.ashx"),6,_loc1_);
            _loc3_.addEventListener("complete",__loadComplete);
            _loc3_.addEventListener("loadError",__loadError);
            LoadResourceManager.Instance.startLoad(_loc3_);
         }
         else
         {
            dispose();
         }
      }
      
      protected function __loadComplete(param1:LoaderEvent) : void
      {
         param1.currentTarget.removeEventListener("complete",__loadComplete);
         param1.currentTarget.removeEventListener("loadError",__loadError);
         if(param1.loader.content == "True")
         {
            _awardTxt.text = _activeEventsInfo.Content;
            show();
         }
         else
         {
            dispose();
         }
      }
      
      protected function __loadError(param1:LoaderEvent) : void
      {
         param1.currentTarget.removeEventListener("complete",__loadComplete);
         param1.currentTarget.removeEventListener("loadError",__loadError);
         dispose();
      }
      
      public function show() : void
      {
         LayerManager.Instance.addToLayer(this,3,true,2);
      }
      
      protected function __activeCloseBtnClick(param1:MouseEvent) : void
      {
         dispose();
      }
      
      private function __frameEventHandler(param1:FrameEvent) : void
      {
         SoundManager.instance.play("008");
         switch(int(param1.responseCode))
         {
            case 0:
            case 1:
               dispose();
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         removeEvent();
         _activeEventsInfo = null;
         ObjectUtils.disposeObject(_bg);
         _bg = null;
         ObjectUtils.disposeObject(_activityCardPSWII);
         _activityCardPSWII = null;
         ObjectUtils.disposeObject(_divisionLine);
         _divisionLine = null;
         ObjectUtils.disposeObject(_iconGive);
         _iconGive = null;
         ObjectUtils.disposeObject(_textInput);
         _textInput = null;
         ObjectUtils.disposeObject(_awardTxt);
         _awardTxt = null;
         ObjectUtils.disposeObject(_activeGetBtn);
         _activeGetBtn = null;
         ObjectUtils.disposeObject(_activeCloseBtn);
         _activeCloseBtn = null;
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
