package ddt.view.characterStarling
{
   import bones.BoneMovieFactory;
   import bones.display.BoneMovieStarling;
   import com.greensock.TweenMax;
   import com.greensock.events.TweenEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.utils.ObjectUtils;
   import com.pickgliss.utils.StarlingObjectUtils;
   import ddt.command.PlayerAction;
   import ddt.data.player.PlayerInfo;
   import ddt.manager.SocketManager;
   import ddt.utils.BitmapUtils;
   import ddt.view.character.GameCharacterLoader;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.setTimeout;
   import road7th.StarlingMain;
   import road7th.utils.StringHelper;
   import starling.display.Image;
   import starling.events.Event;
   import starling.textures.Texture;
   
   public class GameCharacter3D extends BaseCharacter3D implements IGameCharacter
   {
      
      private static const STAND_FRAME_1:Array = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,6,7,7,8,8,9,9,9,9,8,8,7,7,6,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10,10,10,10,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10,10,10,10,10];
      
      private static const STAND_FRAME_2:Array = [7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,6,6,7,7,8,8,9,9,9,9,8,8,7,7,6,6,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7];
      
      public static const STAND:PlayerAction = new PlayerAction("stand",[STAND_FRAME_1,STAND_FRAME_2],false,true,false);
      
      private static const LACK_FACE_DOWN:Array = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10,10,10,10,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10,10,10,10,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
      
      private static const LACK_FACE_UP:Array = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10,10,10,10,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,10,10,10,10,10,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
      
      private static const STAND_LACK_HP_FRAME:Array = [0,0,1,1,2,2,3,3,3,3,3,2,2,1,1,0,0,0,0,0,1,1,2,2,3,3,3,3,3,2,2,1,1,0,0,0,0,0,0,1,1,2,2,3,3,3,3,3,2,2,1,1,0,0,0,0,0,1,1,2,2,3,3,3,3,3,2,2,1,1,0,0,0,0];
      
      private static const STAND_LACK_HP_FRAME_1:Array = [0,0,1,1,2,2,3,3,0,0,1,1,2,2,3,3,0,0,1,1,2,2,3,3,0,0,1,1,2,2,3,3,0,0,1,1,2,0,0,1,1,2,2,3,3,0,0,1,1,2,2,3,3,0,0,1,1,2,2,3,3,0,0,1,1,2,2,3,3,0,0,1,1,2];
      
      public static const STAND_LACK_HP:PlayerAction = new PlayerAction("standLackHP",[STAND_LACK_HP_FRAME,STAND_LACK_HP_FRAME_1],false,false,false);
      
      public static const WALK_LACK_HP:PlayerAction = new PlayerAction("walkLackHP",[[1,1,2,2,3,3,4,4,5,5]],false,true,false);
      
      public static const WALK:PlayerAction = new PlayerAction("walk",[[1,1,2,2,3,3,4,4,5,5]],false,true,false);
      
      public static const SHOT:PlayerAction = new PlayerAction("shot",[[22,23,26,27]],true,false,true);
      
      public static const STOPSHOT:PlayerAction = new PlayerAction("stopshot",[[23]],true,false,false);
      
      public static const SHOWGUN:PlayerAction = new PlayerAction("showgun",[[19,20,21,21,21]],true,false,true);
      
      public static const HIDEGUN:PlayerAction = new PlayerAction("hidegun",[[27]],true,false,false);
      
      public static const THROWS:PlayerAction = new PlayerAction("throws",[[31,32,33,34,35]],true,false,true);
      
      public static const STOPTHROWS:PlayerAction = new PlayerAction("stopthrows",[[34]],true,false,false);
      
      public static const SHOWTHROWS:PlayerAction = new PlayerAction("showthrows",[[28,29,30,30,30]],true,false,true);
      
      public static const HIDETHROWS:PlayerAction = new PlayerAction("hidethrows",[[35]],true,false,false);
      
      public static const SHAKE:PlayerAction = new PlayerAction("shake",[[6,6,7,7,8,8,9,9,8,8,7,7,6,6]],false,false,false);
      
      public static const HANDCLIP:PlayerAction = new PlayerAction("handclip",[[13,13,14,14,15,15,14,14,13,13,14,14,15,15,14,14,13,13,14,14,15,15,14,14,13,13,14,14,15,15,14,14,13,13,14,14,15,15,14,14,13,13,14,14,15,15,14,14,13,13]],true,false,false);
      
      public static const HANDCLIP_LACK_HP:PlayerAction = new PlayerAction("handclip",[[13,13,14,14,15,15,14,14,13,13,14,14,15,15,14,14,13,13,14,14,15,15,14,14,13,13,14,14,15,15,14,14,13,13,14,14,15,15,14,14,13,13,14,14,15,15,14,14,13,13]],true,false,false);
      
      public static const SOUL:PlayerAction = new PlayerAction("soul",[[0]],false,true,false);
      
      public static const SOUL_MOVE:PlayerAction = new PlayerAction("soulMove",[[1]],false,true,false);
      
      public static const SOUL_SMILE:PlayerAction = new PlayerAction("soulSmile",[[2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]],false,false,false);
      
      public static const SOUL_CRY:PlayerAction = new PlayerAction("soulCry",[[3]],false,true,false);
      
      public static const CRY:PlayerAction = new PlayerAction("cry",[[16,16,17,17,18,18,16,16,17,17,18,18,16,16,17,17,18,18,16,16,17,17,18,18,16,16,17,17,18,18]],false,false,false);
      
      public static const HIT:PlayerAction = new PlayerAction("hit",[[12,12,24,24,24,24,24,24,24,24,25,25,38,38,38,38,11,11,11,11]],false,false,false);
      
      public static const SPECIAL_EFFECT_FRAMES:Array = [0,0,1,1,2,2,3,3,0,0,1,1,2,2,3,3,0,0,1,1,2,2,3,3,0,0,1,1,2,2,3,3,0,0,1,1,2,0,0,1,1,2,2,3,3,0,0,1,1,2,2,3,3,0,0,1,1,2,2,3,3,0,0,1,1,2,2,3,3,0,0,1,1,2];
      
      private static const grayFilter:ColorMatrixFilter = new ColorMatrixFilter([0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0,0,0,1,0]);
      
      public static const PET_CALL:PlayerAction = new PlayerAction("petCall",[[28,29,29,30,30,31,31,32,32,33,33,34,34,35,35,35,35,35,35,35,35,35,35,35,35,35,35]],false,false,false);
      
      public static const GAME_WING_WAIT:String = "stand";
      
      public static const GAME_WING_MOVE:String = "move";
      
      public static const GAME_WING_CRY:String = "cry";
      
      public static const GAME_WING_CLIP:String = "clip";
      
      public static const GAME_WING_SHOOT:String = "shot";
       
      
      private var _currentAction:PlayerAction;
      
      private var _defaultAction:PlayerAction;
      
      private var _frameStartPoint:Point;
      
      private var _defaultStartPoint:Point;
      
      private var _spBitmapData:Vector.<BitmapData>;
      
      private var _faceupBitmapData:BitmapData;
      
      private var _faceBitmapData:BitmapData;
      
      private var _lackHpFaceBitmapdata:Vector.<BitmapData>;
      
      private var _faceDownBitmapdata:BitmapData;
      
      private var _normalSuit:BitmapData;
      
      private var _lackHpSuit:BitmapData;
      
      private var _soulFace:BitmapData;
      
      private var _defaultFace:Image;
      
      private var _buffEffect:Image;
      
      private var _tempCryFace:BitmapData;
      
      private var _leftWing:BoneMovieStarling;
      
      private var _rightWing:BoneMovieStarling;
      
      private var _ghostMovie:BoneMovieStarling;
      
      private var _ghostShine:BoneMovieStarling;
      
      private var _cryTypes:Array;
      
      private var _cryType:int;
      
      private var _specialType:int = 0;
      
      private var _state:int = 1;
      
      private var _rect:Rectangle;
      
      private var _hasSuitSoul:Boolean = true;
      
      private var _cryBmps:Vector.<Bitmap>;
      
      private var _useLackHpSuit:Boolean = false;
      
      private var _useLackHpTurn:int = -1;
      
      protected var _colors:Array;
      
      private var _isLackHp:Boolean;
      
      private var _hasChangeToLackHp:Boolean;
      
      private var _index:int;
      
      private var _isPlaying:Boolean = false;
      
      private var black:Boolean;
      
      private var blackBm:Image;
      
      private var blackEyes:BoneMovieStarling;
      
      private var _wingState:String = "stand";
      
      private var closeEys:int;
      
      public function GameCharacter3D(param1:PlayerInfo){super(null,null);}
      
      override public function show(param1:Boolean = true, param2:int = 1, param3:Boolean = true) : void{}
      
      protected function CreateCryFrace(param1:String) : void{}
      
      public function set isLackHp(param1:Boolean) : void{}
      
      public function get State() : int{return 0;}
      
      public function set State(param1:int) : void{}
      
      override protected function initSizeAndPics() : void{}
      
      public function get weaponX() : int{return 0;}
      
      public function get weaponY() : int{return 0;}
      
      override protected function initLoader() : void{}
      
      override public function update() : void{}
      
      private function get STATES_ENUM() : Array{return null;}
      
      public function bombed() : void{}
      
      private function createBombedEffect() : void{}
      
      override protected function init() : void{}
      
      private function drawBlack(param1:BitmapData) : void{}
      
      public function changeToNormal() : void{}
      
      private function get isDead() : Boolean{return false;}
      
      private function setBlack(param1:TweenEvent) : void{}
      
      private function clearBomded() : void{}
      
      public function get standAction() : PlayerAction{return null;}
      
      public function get walkAction() : PlayerAction{return null;}
      
      public function get handClipAction() : PlayerAction{return null;}
      
      public function randomCryType() : void{}
      
      override public function doAction(param1:*) : void{}
      
      override public function actionPlaying() : Boolean{return false;}
      
      override public function get currentAction() : *{return null;}
      
      override public function setDefaultAction(param1:*) : void{}
      
      override protected function setContent() : void{}
      
      public function getEquipID(param1:int) : String{return null;}
      
      private function checkHasSuitsSoul(param1:BitmapData) : Boolean{return false;}
      
      public function switchWingVisible(param1:Boolean) : void{}
      
      public function setWingPos(param1:Number, param2:Number) : void{}
      
      public function setWingScale(param1:Number, param2:Number) : void{}
      
      public function set WingState(param1:String) : void{}
      
      private function initCharacterWing() : void{}
      
      public function showCharacterWing() : void{}
      
      private function __onLoadWingComplete(param1:Event) : void{}
      
      public function hideWing() : void{}
      
      public function updateBuffEffect(param1:int, param2:Boolean) : void{}
      
      override public function dispose() : void{}
      
      private function drawSoul() : void{}
      
      private function drawBomd() : void{}
      
      override public function drawFrame(param1:int, param2:int = 0, param3:Boolean = true) : void{}
      
      public function get useLackHpSuit() : Boolean{return false;}
      
      public function set useLackHpSuit(param1:Boolean) : void{}
      
      public function get useLackHpTurn() : int{return 0;}
      
      public function set useLackHpTurn(param1:int) : void{}
   }
}
