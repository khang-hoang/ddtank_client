package game.actions
{
   import ddt.data.PathInfo;
   import ddt.events.CrazyTankSocketEvent;
   import game.objects.GameSmallEnemy;
   import game.objects.SimpleBox;
   import game.view.GameView;
   import game.view.map.MapView;
   import gameCommon.GameControl;
   import gameCommon.actions.BaseAction;
   import gameCommon.model.Bomb;
   import gameCommon.model.Living;
   import gameCommon.model.SmallEnemy;
   import road7th.comm.PackageIn;
   import road7th.data.DictionaryData;
   
   public class ChangeNpcAction extends BaseAction
   {
       
      
      private var _gameView:GameView;
      
      private var _map:MapView;
      
      private var _info:Living;
      
      private var _pkg:PackageIn;
      
      private var _event:CrazyTankSocketEvent;
      
      private var _ignoreSmallEnemy:Boolean;
      
      public function ChangeNpcAction(param1:GameView, param2:MapView, param3:Living, param4:CrazyTankSocketEvent, param5:PackageIn, param6:Boolean){super();}
      
      private function syncMap() : void{}
      
      private function updateNpc() : void{}
      
      private function getClosestEnemy() : SmallEnemy{return null;}
      
      private function focusOnSmallEnemy() : void{}
      
      override public function execute() : void{}
   }
}
