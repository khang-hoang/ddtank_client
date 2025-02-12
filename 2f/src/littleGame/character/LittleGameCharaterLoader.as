package littleGame.character
{
   import ddt.data.player.PlayerInfo;
   import ddt.manager.ItemManager;
   import ddt.view.character.ILayer;
   import flash.display.BitmapData;
   import flash.utils.getTimer;
   
   public class LittleGameCharaterLoader
   {
      
      private static const HAIR_LAYER:int = 2;
      
      private static const EAR_LAYER:int = 3;
      
      private static var boyCloth:BitmapData;
      
      private static var girlCloth:BitmapData;
      
      private static var effect:BitmapData;
      
      private static var specialHeads:Vector.<BitmapData>;
       
      
      private var _playerInfo:PlayerInfo;
      
      private var _loaders:Vector.<LittleGameCharacterLayer>;
      
      private var _recordStyle:Array;
      
      private var _recordColor:Array;
      
      private var _head:BitmapData;
      
      private var _body:BitmapData;
      
      private var hasClothColor:Boolean = false;
      
      private var hasFaceColor:Boolean = false;
      
      private var _callBack:Function;
      
      public function LittleGameCharaterLoader(param1:PlayerInfo, param2:int = 1){super();}
      
      public function load(param1:Function) : void{}
      
      private function onComplete(param1:ILayer) : void{}
      
      private function drawCharacter() : void{}
      
      private function drawHeadByFace(param1:int) : BitmapData{return null;}
      
      public function getContent() : Vector.<BitmapData>{return null;}
      
      private function loadComplete() : void{}
      
      public function dispose() : void{}
   }
}
