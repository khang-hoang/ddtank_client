package dice.vo
{
   import ddt.data.player.PlayerInfo;
   import ddt.events.SceneCharacterEvent;
   import ddt.view.sceneCharacter.SceneCharacterActionItem;
   import ddt.view.sceneCharacter.SceneCharacterActionSet;
   import ddt.view.sceneCharacter.SceneCharacterDirection;
   import ddt.view.sceneCharacter.SceneCharacterItem;
   import ddt.view.sceneCharacter.SceneCharacterLoaderHead;
   import ddt.view.sceneCharacter.SceneCharacterPlayerBase;
   import ddt.view.sceneCharacter.SceneCharacterSet;
   import ddt.view.sceneCharacter.SceneCharacterStateItem;
   import ddt.view.sceneCharacter.SceneCharacterStateSet;
   import dice.controller.DiceController;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class DicePlayerBase extends SceneCharacterPlayerBase
   {
       
      
      private var _playerInfo:PlayerInfo;
      
      private var _sceneCharacterStateSet:SceneCharacterStateSet;
      
      private var _sceneCharacterSetNatural:SceneCharacterSet;
      
      private var _sceneCharacterActionSetNatural:SceneCharacterActionSet;
      
      private var _headBitmapData:BitmapData;
      
      private var _bodyBitmapData:BitmapData;
      
      private var _rectangle:Rectangle;
      
      private var _sceneCharacterLoaderBody:DiceSceneCharacterLoaderBody;
      
      private var _sceneCharacterLoaderHead:SceneCharacterLoaderHead;
      
      private var _callBack:Function;
      
      private var _SynchronousPosition:Function;
      
      private var _isWalk:Boolean = false;
      
      public var _playerWidth:Number = 120;
      
      public var _playerHeight:Number = 175;
      
      public function DicePlayerBase(param1:PlayerInfo, param2:Function = null, param3:Function = null){super(null);}
      
      private function initialize() : void{}
      
      private function sceneCharacterLoadHead() : void{}
      
      private function sceneCharacterLoaderHeadCallBack(param1:SceneCharacterLoaderHead, param2:Boolean = true) : void{}
      
      private function sceneCharacterStateNatural() : void{}
      
      private function sceneCharacterLoadBodyNatural() : void{}
      
      private function sceneCharacterLoaderBodyNaturalCallBack(param1:DiceSceneCharacterLoaderBody, param2:Boolean = true) : void{}
      
      override public function playerWalk(param1:Array) : void{}
      
      override public function dispose() : void{}
   }
}
