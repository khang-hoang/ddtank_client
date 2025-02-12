package gameStarling.animations
{
   import bones.BoneMovieFactory;
   import bones.display.BoneMovieStarling;
   import com.pickgliss.utils.StarlingObjectUtils;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import gameCommon.GameControl;
   import gameStarling.objects.GamePlayer3D;
   import gameStarling.view.GameViewBase3D;
   import gameStarling.view.map.MapView3D;
   import road7th.StarlingMain;
   import road7th.math.interpolateNumber;
   import road7th.utils.BoneMovieWrapper;
   import starling.display.Sprite;
   import starling.events.Event;
   import starling.events.EventDispatcher;
   
   public class SpellSkillAnimation extends EventDispatcher implements IAnimate
   {
       
      
      private var _begin:Point;
      
      private var _end:Point;
      
      private var _scale:Number;
      
      private var _life:int;
      
      private var _backlist:Array;
      
      private var _finished:Boolean;
      
      private var _player:GamePlayer3D;
      
      private var _characterCopy:Bitmap;
      
      private var _gameView:Sprite;
      
      private var _skill:BoneMovieWrapper;
      
      private var _skillAsset:BoneMovieStarling;
      
      private var _effect:ScaleEffect3D;
      
      private var _skillType:int;
      
      private var map:MapView3D;
      
      public function SpellSkillAnimation(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number, param7:GamePlayer3D, param8:GameViewBase3D){super();}
      
      public function get level() : int{return 0;}
      
      public function canAct() : Boolean{return false;}
      
      public function prepare(param1:AnimationSet) : void{}
      
      public function canReplace(param1:IAnimate) : Boolean{return false;}
      
      public function cancel() : void{}
      
      public function update(param1:MapView3D) : Boolean{return false;}
      
      private function setMapAlpha(param1:Number) : void{}
      
      private function createSkillStyleName() : String{return null;}
      
      public function get finish() : Boolean{return false;}
   }
}
