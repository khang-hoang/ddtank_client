package farm.viewx
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.AlertManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddtBuried.BuriedManager;
   import farm.FarmModelController;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class CountdownView extends Sprite
   {
       
      
      private var _fastForward:BaseButton;
      
      private var _fieldID:int;
      
      public function CountdownView(){super();}
      
      private function initView() : void{}
      
      public function setCountdown(param1:int) : void{}
      
      public function setFastBtnEnable(param1:Boolean) : void{}
      
      private function initEvent() : void{}
      
      protected function __fastBtnClick(param1:MouseEvent) : void{}
      
      protected function __onResponse(param1:FrameEvent) : void{}
      
      private function remvoeEvent() : void{}
      
      public function dispose() : void{}
   }
}
