package draft.view
{
   import bagAndInfo.info.PlayerInfoViewControl;
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import ddt.view.character.CharactoryFactory;
   import ddt.view.character.RoomCharacter;
   import draft.DraftControl;
   import draft.data.DraftModel;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class DraftPlayer extends Sprite implements Disposeable
   {
       
      
      private var _draftInfo:DraftModel;
      
      private var _playerBg:Bitmap;
      
      private var _charactor:RoomCharacter;
      
      private var _platform:ScaleFrameImage;
      
      private var _lightBg:ScaleFrameImage;
      
      private var _light:MovieClip;
      
      private var _ticketNum:FilterFrameText;
      
      private var _lblName:FilterFrameText;
      
      private var _rankNum:FilterFrameText;
      
      private var _voteBtn:SimpleBitmapButton;
      
      public function DraftPlayer(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      protected function __onVoteBtnClick(param1:MouseEvent) : void{}
      
      public function set drafInfo(param1:DraftModel) : void{}
      
      private function __charactorClick_Handler(param1:MouseEvent) : void{}
      
      private function __charactorFilter_Handler(param1:MouseEvent) : void{}
      
      public function hideNotNeed(param1:Boolean) : void{}
      
      protected function __onCharacterComplete(param1:Event) : void{}
      
      public function dispose() : void{}
      
      private function removeEvent() : void{}
   }
}
