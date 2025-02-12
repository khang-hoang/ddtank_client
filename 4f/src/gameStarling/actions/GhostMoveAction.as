package gameStarling.actions
{
   import ddt.manager.SoundManager;
   import ddt.view.characterStarling.GameCharacter3D;
   import flash.geom.Point;
   import gameCommon.actions.BaseAction;
   import gameCommon.model.Player;
   import gameStarling.objects.GameLocalPlayer3D;
   import gameStarling.objects.GamePlayer3D;
   
   public class GhostMoveAction extends BaseAction
   {
       
      
      private var _startPos:Point;
      
      private var _target:Point;
      
      private var _player:GamePlayer3D;
      
      private var _vp:Point;
      
      private var _start:Point;
      
      private var _life:int = 0;
      
      private var _pickBoxActions:Array;
      
      public function GhostMoveAction(param1:GamePlayer3D, param2:Point, param3:Array = null){super();}
      
      override public function prepare() : void{}
      
      override public function execute() : void{}
      
      public function finish() : void{}
      
      override public function executeAtOnce() : void{}
   }
}
