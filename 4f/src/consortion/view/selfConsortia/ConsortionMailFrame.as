package consortion.view.selfConsortia
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.controls.TextInput;
   import com.pickgliss.ui.image.MovieImage;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.text.TextArea;
   import consortion.ConsortionModelManager;
   import ddt.events.PkgEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.FilterWordManager;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   
   public class ConsortionMailFrame extends Frame
   {
      
      public static const MAIL_PAY:int = 1000;
       
      
      private var _topWord:MutipleImage;
      
      private var _explain:Bitmap;
      
      private var _send:TextButton;
      
      private var _close:TextButton;
      
      private var _recevier:FilterFrameText;
      
      private var _topic:TextInput;
      
      private var _content:TextArea;
      
      private var _bg:ScaleBitmapImage;
      
      private var _addresseeText:FilterFrameText;
      
      private var _subjectText:FilterFrameText;
      
      private var _addresseeInputText:FilterFrameText;
      
      private var _subjectInputText:FilterFrameText;
      
      private var _textAreaBG:MovieImage;
      
      private var _line:MutipleImage;
      
      private var _contentBG:MutipleImage;
      
      private var _explainText:FilterFrameText;
      
      private var _explainText1:FilterFrameText;
      
      private var _explainText2:FilterFrameText;
      
      public function ConsortionMailFrame(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function __consortionMailResponse(param1:PkgEvent) : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      private function _contentInputHandler(param1:TextEvent) : void{}
      
      private function __sendHandler(param1:MouseEvent) : void{}
      
      private function __closeHandler(param1:MouseEvent) : void{}
      
      override public function dispose() : void{}
   }
}
