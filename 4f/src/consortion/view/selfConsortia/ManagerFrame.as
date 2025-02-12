package consortion.view.selfConsortia
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.controls.TextInput;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import consortion.ConsortionModelManager;
   import consortion.data.ConsortiaAssetLevelOffer;
   import consortion.event.ConsortionEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   
   public class ManagerFrame extends Frame
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _consortionShop:Bitmap;
      
      private var _consortionStore:Bitmap;
      
      private var _consortionSkill:Bitmap;
      
      private var _contributionText1:FilterFrameText;
      
      private var _contributionText2:FilterFrameText;
      
      private var _contributionText3:FilterFrameText;
      
      private var _contributionText4:FilterFrameText;
      
      private var _contributionText5:FilterFrameText;
      
      private var _contributionText6:FilterFrameText;
      
      private var _contributionText7:FilterFrameText;
      
      private var _noticeText:FilterFrameText;
      
      private var _inputBG:MutipleImage;
      
      private var _textBG:MutipleImage;
      
      private var _taxBtn:TextButton;
      
      private var _okBtn:TextButton;
      
      private var _cancelBtn:TextButton;
      
      private var _shopLevelTxt1:TextInput;
      
      private var _shopLevelTxt2:TextInput;
      
      private var _shopLevelTxt3:TextInput;
      
      private var _shopLevelTxt4:TextInput;
      
      private var _shopLevelTxt5:TextInput;
      
      private var _smithTxt:TextInput;
      
      private var _skillTxt:TextInput;
      
      private var _valueArray:Array;
      
      public function ManagerFrame(){super();}
      
      private function initView() : void{}
      
      private function inputText(param1:TextInput) : void{}
      
      private function DynamicText(param1:TextInput) : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      private function __okHandler(param1:MouseEvent) : void{}
      
      private function checkChange() : Boolean{return false;}
      
      private function __alertResponse(param1:FrameEvent) : void{}
      
      private function checkInputValue(param1:TextInput) : int{return 0;}
      
      private function __cancelHandler(param1:MouseEvent) : void{}
      
      private function __taxHandler(param1:MouseEvent) : void{}
      
      private function __conditionChangeHandler(param1:ConsortionEvent) : void{}
      
      override public function dispose() : void{}
   }
}
