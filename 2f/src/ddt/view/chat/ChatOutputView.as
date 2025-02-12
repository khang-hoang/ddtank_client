package ddt.view.chat
{
   import com.pickgliss.effect.EffectManager;
   import com.pickgliss.effect.IEffect;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.ShowTipManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedTextButton;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.utils.StringUtils;
   import ddt.manager.ChatManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import ddt.utils.PositionUtils;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import hall.event.NewHallEvent;
   
   public class ChatOutputView extends Sprite
   {
      
      public static const CHAT_OUPUT_CLUB:int = 1;
      
      public static const CHAT_OUPUT_CURRENT:int = 0;
      
      public static const CHAT_OUPUT_PRIVATE:int = 2;
      
      private static const IN_GAME:uint = 3;
       
      
      private var _bg:ScaleFrameImage;
      
      private var _consortiaBtn:SelectedTextButton;
      
      private var _currentBtn:SelectedTextButton;
      
      private var _privateBtn:SelectedTextButton;
      
      private var _channel:int = -1;
      
      private var _clearBtn:BaseButton;
      
      private var _currentOffset:int = 0;
      
      private var _goBottomBtn:BaseButton;
      
      private var _isLocked:Boolean = false;
      
      private var _leftBtnContainer:Sprite;
      
      private var _lockBtn:SelectedButton;
      
      private var _model:ChatModel;
      
      private var _outputField:ChatOutputField;
      
      private var _rightBtnContainer:Sprite;
      
      private var _scrollDownBtn:BaseButton;
      
      private var _scrollUpBtn:BaseButton;
      
      private var _goBottomBtnEffect:IEffect;
      
      private var _privateBtnEffect:IEffect;
      
      private var _group:SelectedButtonGroup;
      
      private var _hotAreaInGame:Sprite;
      
      private var _functionEnabled:Boolean;
      
      private var _leftBtnContainerInGame:Sprite;
      
      private var _functionBtnInGame:SelectedButton;
      
      private var _lockBtnInGame:SelectedButton;
      
      private var _scrollUpBtnInGame:SimpleBitmapButton;
      
      private var _scrollDownBtnInGame:SimpleBitmapButton;
      
      private var _goBottomBtnInGame:SimpleBitmapButton;
      
      private var _clearBtnInGame:SimpleBitmapButton;
      
      private var _goBottomEffectInGame:IEffect;
      
      private var _more:SelectedButton;
      
      private var _leftScroll:ChatScrollBar;
      
      private var _ghostState:Boolean;
      
      private var _bgVisible:Boolean = true;
      
      public function ChatOutputView(){super();}
      
      public function set enableGameState(param1:Boolean) : void{}
      
      public function set functionEnabled(param1:Boolean) : void{}
      
      public function set ghostState(param1:Boolean) : void{}
      
      private function __onMouseRollOver(param1:MouseEvent) : void{}
      
      private function __onMouseRollOut(param1:MouseEvent) : void{}
      
      public function set bg(param1:int) : void{}
      
      public function set channel(param1:int) : void{}
      
      public function get contentField() : ChatOutputField{return null;}
      
      public function get currentOffset() : int{return 0;}
      
      public function set currentOffset(param1:int) : void{}
      
      public function goBottom() : void{}
      
      public function get isLock() : Boolean{return false;}
      
      public function setIsLock() : void{}
      
      public function set isLock(param1:Boolean) : void{}
      
      public function setLockBtnTipData(param1:Boolean) : void{}
      
      public function set lockEnable(param1:Boolean) : void{}
      
      public function setBgVisible(param1:Boolean) : void{}
      
      public function set bgVisible(param1:Boolean) : void{}
      
      public function setChannelBtnVisible(param1:Boolean) : void{}
      
      private function __leftBtnsClick(param1:MouseEvent) : void{}
      
      private function __onAddChat(param1:ChatEvent) : void{}
      
      private function __onMouseWheel(param1:MouseEvent) : void{}
      
      private function __onScroll(param1:Event = null) : void{}
      
      private function __textFieldBindScroll(param1:int = 0) : void{}
      
      private function __rightBtnsSelected(param1:MouseEvent) : void{}
      
      private function init() : void{}
      
      private function initBtns() : void{}
      
      public function setMoreVisible(param1:Boolean) : void{}
      
      public function moreState(param1:Boolean) : void{}
      
      public function openPetSprite(param1:Boolean) : void{}
      
      public function enablePetSpriteSwitcher(param1:Boolean) : void{}
      
      public function PetSpriteSwitchVisible(param1:Boolean) : void{}
      
      private function initEvent() : void{}
      
      private function __moreSwitcherClick(param1:MouseEvent) : void{}
      
      private function updateOutputViewState() : void{}
      
      protected function __onMouseClick(param1:MouseEvent) : void{}
      
      protected function __switchPetSprite(param1:MouseEvent) : void{}
      
      private function petSpriteClose(param1:Event) : void{}
      
      private function petSpriteOpen(param1:Event) : void{}
      
      private function __functionSwitch(param1:MouseEvent) : void{}
      
      public function isInGame() : Boolean{return false;}
      
      public function updateCurrnetChannel() : void{}
      
      private function updateShine() : void{}
   }
}
