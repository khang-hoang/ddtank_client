package gameCommon.view.playerThumbnail
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import ddt.events.LivingEvent;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.filters.BitmapFilter;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import gameCommon.model.Living;
   import gameCommon.model.SimpleBoss;
   import room.RoomManager;
   import worldboss.WorldBossManager;
   import worldboss.event.WorldBossRoomEvent;
   import worldboss.view.WorldBossCutHpMC;
   
   public class BossThumbnail extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _living:Living;
      
      private var _headFigure:HeadFigure;
      
      private var _blood:BossBloodItem;
      
      private var _name:FilterFrameText;
      
      private var lightingFilter:BitmapFilter;
      
      public function BossThumbnail(param1:Living){super();}
      
      public function init() : void{}
      
      public function initEvents() : void{}
      
      public function __updateBlood(param1:LivingEvent) : void{}
      
      public function __die(param1:LivingEvent) : void{}
      
      private function __shineChange(param1:LivingEvent) : void{}
      
      public function setUpLintingFilter() : void{}
      
      public function removeEvents() : void{}
      
      public function updateView() : void{}
      
      public function set info(param1:Living) : void{}
      
      public function get Id() : int{return 0;}
      
      private function __showCutHp(param1:WorldBossRoomEvent) : void{}
      
      private function offset(param1:int = 30) : int{return 0;}
      
      public function dispose() : void{}
   }
}
