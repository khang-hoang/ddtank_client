package room.view.chooseMap
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.controls.TextInput;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.GameInSocketOut;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.SoundManager;
   import ddt.utils.FilterWordManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import room.RoomManager;
   
   public class MatchRoomSetView extends Sprite implements Disposeable
   {
       
      
      private var _frame:BaseAlerFrame;
      
      private var _bg:ScaleBitmapImage;
      
      private var _roomMode:Bitmap;
      
      private var _modelIcon:Bitmap;
      
      private var _trialModelIcon:Bitmap;
      
      private var _soprts:FilterFrameText;
      
      private var _roomName:FilterFrameText;
      
      private var _password:FilterFrameText;
      
      private var _nameInput:TextInput;
      
      private var _passInput:TextInput;
      
      private var _isReset:Boolean;
      
      private var _isChanged:Boolean = false;
      
      private var _checkBox:SelectedCheckButton;
      
      public function MatchRoomSetView(){super();}
      
      private function init() : void{}
      
      private function updateRoomInfo() : void{}
      
      private function __checkBoxClick(param1:MouseEvent) : void{}
      
      private function upadtePassTextBg() : void{}
      
      private function __frameEventHandler(param1:FrameEvent) : void{}
      
      public function showMatchRoomSetView() : void{}
      
      public function dispose() : void{}
   }
}
