package consortion.view.club
{
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
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.command.QuickBuyFrame;
   import ddt.data.analyze.ReworkNameAnalyzer;
   import ddt.manager.LanguageMgr;
   import ddt.manager.LeavePageManager;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PathManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.FilterWordManager;
   import ddt.utils.RequestVairableCreater;
   import ddtBuried.BuriedManager;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.URLVariables;
   import road7th.utils.StringHelper;
   
   public class CreateConsortionFrame extends Frame
   {
      
      public static const MIN_CREAT_CONSROTIA_LEVEL:int = 17;
      
      public static const MIN_CREAT_CONSORTIA_MONEY:int = 500;
      
      public static const MIN_CREAT_CONSORTIA_GOLD:int = int(ServerConfigManager.instance.CreateGuild);
       
      
      private var _bg:Bitmap;
      
      private var _input:TextInput;
      
      private var _okBtn:TextButton;
      
      private var _cancelBtn:TextButton;
      
      private var _img:MutipleImage;
      
      private var _conditionText:FilterFrameText;
      
      private var _ticketText1:FilterFrameText;
      
      private var _ticketText2:FilterFrameText;
      
      private var _gradeText1:FilterFrameText;
      
      private var _gradeText2:FilterFrameText;
      
      private var _moneyText1:FilterFrameText;
      
      private var _moneyText2:FilterFrameText;
      
      private var _goldAlertFrame:BaseAlerFrame;
      
      private var _moneyAlertFrame:BaseAlerFrame;
      
      private var _quickBuyFrame:QuickBuyFrame;
      
      public function CreateConsortionFrame(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function createAction() : void{}
      
      private function sendName() : void{}
      
      public function checkCallBack(param1:ReworkNameAnalyzer) : void{}
      
      private function __onLoadError(param1:LoaderEvent) : void{}
      
      private function __poorManResponse(param1:FrameEvent) : void{}
      
      private function __quickBuyResponse(param1:FrameEvent) : void{}
      
      private function checkCanCreatConsortia() : Boolean{return false;}
      
      private function __addToStageHandler(param1:Event) : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      private function __okFun(param1:MouseEvent) : void{}
      
      private function __cancelFun(param1:MouseEvent) : void{}
      
      private function __inputHandler(param1:Event) : void{}
      
      private function __keyboardHandler(param1:KeyboardEvent) : void{}
      
      override public function dispose() : void{}
   }
}
