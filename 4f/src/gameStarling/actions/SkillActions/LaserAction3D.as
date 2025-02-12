package gameStarling.actions.SkillActions
{
   import bones.BoneMovieFactory;
   import bones.display.BoneMovieStarling;
   import com.pickgliss.utils.StarlingObjectUtils;
   import ddt.command.PlayerAction;
   import ddt.view.characterStarling.GameCharacter3D;
   import dragonBones.Armature;
   import gameCommon.actions.BaseAction;
   import gameCommon.model.Bomb;
   import gameCommon.model.Living;
   import gameCommon.model.Player;
   import gameStarling.objects.GamePlayer3D;
   import gameStarling.view.map.MapView3D;
   import road7th.utils.BoneMovieWrapper;
   import road7th.utils.MathUtils;
   import starling.display.Sprite;
   import starling.events.Event;
   
   public class LaserAction3D extends BaseAction
   {
      
      public static const radius:int = 60;
       
      
      private var _player:GamePlayer3D;
      
      private var _laserMovie:BoneMovieWrapper;
      
      private var _movieComplete:Boolean = false;
      
      private var _movieStarted:Boolean = false;
      
      private var _shocked:Boolean = false;
      
      private var _showAction:PlayerAction;
      
      private var _hideAction:PlayerAction;
      
      private var _living:Living;
      
      private var _map:MapView3D;
      
      private var _angle:int;
      
      private var _speed:int;
      
      private var _length:int;
      
      private var _info:Bomb;
      
      private var _shootHead:BoneMovieStarling;
      
      private var _mask:Sprite;
      
      private var _tempLength:int = 0;
      
      public function LaserAction3D(param1:Living, param2:MapView3D, param3:Bomb, param4:int, param5:Number){super();}
      
      override public function prepare() : void{}
      
      override public function execute() : void{}
      
      private function __laserFrame(param1:Event) : void{}
      
      private function updateSkillView(param1:Number) : void{}
      
      private function movieComplete() : void{}
   }
}
