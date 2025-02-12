package happyLittleGame.cubesGame
{
   import com.greensock.TweenLite;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import funnyGames.cubeGame.CubeGameManager;
   import funnyGames.cubeGame.event.CubeGameEvent;
   
   public class CubeGameSceneView extends Sprite implements Disposeable
   {
      
      private static const STAND:String = "stand";
      
      private static const DIE:String = "die";
      
      private static const FIRE:String = "beatA";
      
      private static const FIRE_FRAME:uint = 46;
       
      
      private var _forestMC:MovieClip;
      
      private var _princess:MovieClip;
      
      private var _hero:MovieClip;
      
      private var _frontBg:Bitmap;
      
      private var _cubeContainer:CubeMapView;
      
      private var _effectContainer:CubeEffectView;
      
      private var _infoView:CubeGameInfoView;
      
      private var _miniMap:CubeMinMap;
      
      private var _heroPos:Point;
      
      private var _bullets:Vector.<BulletData>;
      
      public function CubeGameSceneView(){super();}
      
      private function initView() : void{}
      
      private function initListener() : void{}
      
      private function removeListener() : void{}
      
      private function __onUpdateNPC(param1:CubeGameEvent) : void{}
      
      private function __onGameResult(param1:CubeGameEvent) : void{}
      
      private function __onFire(param1:CubeGameEvent) : void{}
      
      private function bulletFly() : void{}
      
      private function onEnterFrame(param1:Event) : void{}
      
      public function dispose() : void{}
   }
}

import flash.display.MovieClip;
import flash.geom.Point;

class BulletData
{
    
   
   public var bullet:MovieClip;
   
   public var destination:Point;
   
   public var id:int;
   
   function BulletData(){super();}
}
