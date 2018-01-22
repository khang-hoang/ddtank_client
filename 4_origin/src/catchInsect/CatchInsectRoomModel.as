package catchInsect
{
   import catchInsect.event.CatchInsectRoomEvent;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   import road7th.data.DictionaryData;
   
   public class CatchInsectRoomModel extends EventDispatcher
   {
       
      
      private var _players:DictionaryData;
      
      private var _playersBuffer:Array;
      
      public var _mapObjects:DictionaryData;
      
      private var _playerNameVisible:Boolean = true;
      
      public function CatchInsectRoomModel()
      {
         super();
         _players = new DictionaryData(true);
         _playersBuffer = [];
         _mapObjects = new DictionaryData(true);
      }
      
      public function get players() : DictionaryData
      {
         return _players;
      }
      
      public function addPlayer(param1:PlayerVO) : void
      {
         _playersBuffer.push(param1);
      }
      
      public function getObjects() : DictionaryData
      {
         return _mapObjects;
      }
      
      private function addPlayerToMap() : void
      {
         if(!_players || !_playersBuffer[0])
         {
            return;
         }
         _players.add(_playersBuffer[0].playerInfo.ID,_playersBuffer[0]);
         _playersBuffer.shift();
      }
      
      public function updatePlayerStauts(param1:int, param2:int, param3:Point) : void
      {
         var _loc5_:int = 0;
         var _loc4_:* = null;
         if(_playersBuffer && _playersBuffer.length > 0)
         {
            _loc5_ = 0;
            while(_loc5_ < _playersBuffer.length)
            {
               if(param1 == _playersBuffer[_loc5_].playerInfo.ID)
               {
                  _loc4_ = _playersBuffer[_loc5_] as PlayerVO;
                  _loc4_.playerStauts = param2;
                  _loc4_.playerPos = param3;
                  return;
               }
               _loc5_++;
            }
         }
      }
      
      public function removePlayer(param1:int) : void
      {
         _players.remove(param1);
      }
      
      public function getPlayers() : DictionaryData
      {
         return _players;
      }
      
      public function getPlayerFromID(param1:int) : PlayerVO
      {
         return _players[param1];
      }
      
      public function reset() : void
      {
         dispose();
         _players = new DictionaryData(true);
      }
      
      public function get playerNameVisible() : Boolean
      {
         return _playerNameVisible;
      }
      
      public function set playerNameVisible(param1:Boolean) : void
      {
         _playerNameVisible = param1;
         dispatchEvent(new CatchInsectRoomEvent("playerNameVisible"));
      }
      
      public function dispose() : void
      {
         _players = null;
         _playersBuffer = null;
      }
   }
}
