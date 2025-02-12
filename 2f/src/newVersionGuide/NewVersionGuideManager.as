package newVersionGuide
{
   import com.greensock.TweenLite;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import invite.InviteManager;
   import trainer.view.NewHandContainer;
   
   public class NewVersionGuideManager extends EventDispatcher
   {
      
      private static var _instance:NewVersionGuideManager;
      
      private static var buildingAndIconPosArr:Array = [new Point(626,161),new Point(1100,189),new Point(2006,167),new Point(2195,158),new Point(2235,164),new Point(-312,-107),new Point(-267,-107)];
      
      private static var npcPosArr:Array = [new Point(0,452),new Point(291,133),new Point(466,175),new Point(764,288),new Point(1251,412),new Point(1470,280),new Point(1785,135)];
      
      private static var guideTxtBitmapArr:Array = ["hall.newVersionGuide.dungeon","hall.newVersionGuide.roomList","hall.newVersionGuide.labyrinth","hall.newVersionGuide.farm","hall.newVersionGuide.ringstation","hall.newVersionGuide.email","hall.newVersionGuide.famousPeople"];
      
      private static var _arrowTypeArr:Array = [131,132,133,134,135,136,137];
       
      
      private var _hallView:MovieClip;
      
      private var _paopaoMc:MovieClip;
      
      private var _npcTxt:FilterFrameText;
      
      public var completeGuideFunc:Function;
      
      public var isGuiding:Boolean = false;
      
      public var isShowOldPlayerFrame:Boolean = false;
      
      private var _index:int;
      
      private var _guideSprite:Sprite;
      
      private var _timer:Timer;
      
      public function NewVersionGuideManager(param1:IEventDispatcher = null){super(null);}
      
      public static function get instance() : NewVersionGuideManager{return null;}
      
      public function setUp(param1:MovieClip) : void{}
      
      public function startGuide() : void{}
      
      private function guide(param1:int) : void{}
      
      private function showGuideTxt() : void{}
      
      private function dispose() : void{}
      
      private function endGuide() : void{}
      
      protected function __guideNextHanlder(param1:TimerEvent) : void{}
   }
}
