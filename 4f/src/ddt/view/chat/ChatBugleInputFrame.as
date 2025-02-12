package ddt.view.chat
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.FilterWordManager;
   import flash.events.Event;
   import flash.utils.setTimeout;
   import road7th.utils.StringHelper;
   
   public class ChatBugleInputFrame extends BaseAlerFrame
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _textBg:Scale9CornerImage;
      
      private var _textTitle:FilterFrameText;
      
      protected var _remainTxt:FilterFrameText;
      
      protected var _inputTxt:FilterFrameText;
      
      protected var _remainStr:String;
      
      public var templateID:int;
      
      public function ChatBugleInputFrame(){super();}
      
      override protected function init() : void{}
      
      private function initEvents() : void{}
      
      private function __setFocus(param1:Event) : void{}
      
      protected function __onResponse(param1:FrameEvent) : void{}
      
      private function __upDateRemainTxt(param1:Event) : void{}
      
      override public function dispose() : void{}
   }
}
