package farm.player
{
   import ddt.data.player.PlayerInfo;
   import ddt.manager.ItemManager;
   import ddt.view.character.ILayer;
   import flash.display.BitmapData;
   
   public class FarmSceneCharacterLoaderLayer
   {
       
      
      private var _loaders:Vector.<FarmSceneCharacterLayer>;
      
      private var _recordStyle:Array;
      
      private var _recordColor:Array;
      
      private var _content:BitmapData;
      
      private var _completeCount:int;
      
      private var _playerInfo:PlayerInfo;
      
      private var _sceneCharacterLoaderPath:String;
      
      private var _isAllLoadSucceed:Boolean = true;
      
      private var _callBack:Function;
      
      public function FarmSceneCharacterLoaderLayer(param1:PlayerInfo, param2:String = "cloth5"){super();}
      
      public function load(param1:Function = null) : void{}
      
      private function initLoaders() : void{}
      
      private function drawCharacter() : void{}
      
      private function layerComplete(param1:ILayer) : void{}
      
      private function loadComplete() : void{}
      
      public function getContent() : Array{return null;}
      
      public function dispose() : void{}
   }
}
