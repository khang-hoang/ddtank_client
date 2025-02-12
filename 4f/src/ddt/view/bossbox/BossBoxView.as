package ddt.view.bossbox
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MovieImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.BossBoxManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import fightLib.FightLibManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import times.utils.timerManager.TimerJuggler;
   import times.utils.timerManager.TimerManager;
   
   public class BossBoxView extends Sprite implements Disposeable
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _downBox:MovieImage;
      
      private var _templateIds:Array;
      
      public var boxType:int = 0;
      
      public var boxID:int;
      
      private var _time:TimerJuggler;
      
      private var awards:AwardsView;
      
      private var _fightLibType:int;
      
      private var _fightLibLevel:int;
      
      private var _mission:int;
      
      private var _alertTitle:FilterFrameText;
      
      private var _frame:BaseAlerFrame;
      
      private var _winTime:uint;
      
      public function BossBoxView(param1:int, param2:int, param3:Array, param4:int = -1, param5:int = -1){super();}
      
      private function init() : void{}
      
      private function startMusic() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function _boxClick(param1:MouseEvent) : void{}
      
      private function _time_complete(param1:Event) : void{}
      
      private function _close(param1:Event) : void{}
      
      public function dispose() : void{}
   }
}
