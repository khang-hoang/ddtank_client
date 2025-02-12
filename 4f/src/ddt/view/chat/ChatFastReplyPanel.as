package ddt.view.chat
{
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import ddt.manager.ChatManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SharedManager;
   import ddt.manager.SoundManager;
   import ddt.utils.FilterWordManager;
   import flash.display.Bitmap;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   
   public class ChatFastReplyPanel extends ChatBasePanel
   {
      
      public static const SELECTED_INGAME:String = "selectedingame";
      
      private static const FASTREPLYS:Array = [LanguageMgr.GetTranslation("chat.fastRepley.Message0"),LanguageMgr.GetTranslation("chat.fastRepley.Message1"),LanguageMgr.GetTranslation("chat.fastRepley.Message2"),LanguageMgr.GetTranslation("chat.fastRepley.Message3"),LanguageMgr.GetTranslation("chat.fastRepley.Message4")];
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _box:VBox;
      
      private var _inGame:Boolean;
      
      private var _items:Vector.<ChatFastReplyItem>;
      
      private var _selected:String;
      
      private var _boundary:Bitmap;
      
      private var _inputBg:Bitmap;
      
      private var _enterBtn:SimpleBitmapButton;
      
      private var _inputBox:FilterFrameText;
      
      private var _defaultStr:String;
      
      private var _customCnt:uint;
      
      private var _isDeleting:Boolean;
      
      private var _customBg:Shape;
      
      private var _tempText:String;
      
      private var _isEditing:Boolean;
      
      public function ChatFastReplyPanel(param1:Boolean = false){super();}
      
      public function get isEditing() : Boolean{return false;}
      
      public function set isEditing(param1:Boolean) : void{}
      
      public function get selectedWrod() : String{return null;}
      
      override public function set setVisible(param1:Boolean) : void{}
      
      public function setText() : void{}
      
      private function __itemClick(param1:MouseEvent) : void{}
      
      private function __mouseClick(param1:*) : void{}
      
      private function __deleteItem(param1:ChatEvent) : void{}
      
      private function createCustomItem() : void{}
      
      private function updatePos(param1:int) : void{}
      
      private function fixVerticalPos() : void{}
      
      override protected function init() : void{}
      
      override protected function initEvent() : void{}
      
      private function __spriteClick(param1:MouseEvent) : void{}
      
      private function __checkMaxChars(param1:TextEvent) : void{}
      
      private function __creatItem(param1:KeyboardEvent) : void{}
      
      private function __focusOut(param1:FocusEvent) : void{}
   }
}
