package treasurePuzzle.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.TextInput;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.text.TextArea;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import treasurePuzzle.controller.TreasurePuzzleManager;
   
   public class TreasurePuzzleRewardInfoView extends Frame
   {
       
      
      private var _iconTxtBg:Bitmap;
      
      private var _btnBg:Bitmap;
      
      private var _btn:SimpleBitmapButton;
      
      private var _topText:FilterFrameText;
      
      private var _textinput1:TextInput;
      
      private var _textinput2:TextInput;
      
      private var _detailAddressArea:TextArea;
      
      private var _nameText:FilterFrameText;
      
      private var _phoneText:FilterFrameText;
      
      private var _addressText:FilterFrameText;
      
      private var _zhuText:FilterFrameText;
      
      public function TreasurePuzzleRewardInfoView(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function __responseHandler(param1:FrameEvent) : void{}
      
      private function btnClickHandler(param1:MouseEvent) : void{}
      
      private function removeEvent() : void{}
      
      override public function dispose() : void{}
   }
}
