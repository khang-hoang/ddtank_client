package boguAdventure.view
{
   import baglocked.BaglockedManager;
   import boguAdventure.BoguAdventureControl;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class BoguAdventureAwardFrame extends Frame
   {
       
      
      private var _bg:Bitmap;
      
      private var _tipBg:Bitmap;
      
      private var _tipText:FilterFrameText;
      
      private var _awardTipText1:FilterFrameText;
      
      private var _awardTipText2:FilterFrameText;
      
      private var _awardTipText3:FilterFrameText;
      
      private var _control:BoguAdventureControl;
      
      private var _level:int;
      
      private var awardTip1:Component;
      
      private var awardTip2:Component;
      
      private var awardTip3:Component;
      
      private var _awardBtn1:SimpleBitmapButton;
      
      private var _awardBtn2:SimpleBitmapButton;
      
      private var _awardBtn3:SimpleBitmapButton;
      
      public function BoguAdventureAwardFrame(){super();}
      
      private function initView() : void{}
      
      public function set control(param1:BoguAdventureControl) : void{}
      
      private function updateBtnView() : void{}
      
      private function __onAwardClick(param1:MouseEvent) : void{}
      
      private function sendAwardAlter() : void{}
      
      private function createAwardTip(param1:Sprite) : void{}
      
      public function show() : void{}
      
      override protected function onResponse(param1:int) : void{}
      
      override public function dispose() : void{}
   }
}
