package gameCommon.view
{
   import com.greensock.TweenLite;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.text.FilterFrameText;
   import ddt.data.map.MissionInfo;
   import ddt.events.CrazyTankSocketEvent;
   import ddt.events.GameEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import ddt.manager.StateManager;
   import flash.display.Bitmap;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import gameCommon.GameControl;
   import gameCommon.view.smallMap.GameTurnButton;
   import labyrinth.LabyrinthManager;
   import road7th.comm.PackageIn;
   import room.RoomManager;
   
   public class DungeonInfoView extends Sprite
   {
       
      
      private var _bg:Bitmap;
      
      private var _helpBtn:SimpleBitmapButton;
      
      private var _title1:FilterFrameText;
      
      private var _title2:FilterFrameText;
      
      private var _title3:FilterFrameText;
      
      private var _title4:FilterFrameText;
      
      private var _info1:FilterFrameText;
      
      private var _info2:FilterFrameText;
      
      private var _info3:FilterFrameText;
      
      private var _info4:FilterFrameText;
      
      private var _info:MissionInfo;
      
      private var _button:GameTurnButton;
      
      private var _container:DisplayObjectContainer;
      
      private var _sourceRect:Rectangle;
      
      private var _tweened:Boolean = false;
      
      private var _totalTrunTrainer:int = 100;
      
      private var _Vy:int;
      
      private var _textFormat:TextFormat;
      
      private var arrowCount:int;
      
      public function DungeonInfoView(param1:GameTurnButton, param2:DisplayObjectContainer){super();}
      
      private function addEvent() : void{}
      
      protected function __updateActivityInfo(param1:Event) : void{}
      
      private function removeEvent() : void{}
      
      private function __openHelpHandler(param1:MouseEvent) : void{}
      
      public function barrierInfoHandler(param1:CrazyTankSocketEvent) : void{}
      
      public function trainerView(param1:int) : void{}
      
      public function open() : void{}
      
      private function closeComplete() : void{}
      
      public function close() : void{}
      
      private function upView() : void{}
      
      public function setRescueArrow(param1:int) : void{}
      
      public function dispose() : void{}
   }
}
