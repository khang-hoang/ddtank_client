package game.actions
{
   import ddt.data.BallInfo;
   import ddt.events.CrazyTankSocketEvent;
   import ddt.manager.BallManager;
   import ddt.manager.SoundManager;
   import game.objects.GameSceneEffect;
   import game.objects.SimpleBomb;
   import game.view.map.MapView;
   import gameCommon.actions.BaseAction;
   import gameCommon.model.Bomb;
   
   public class SceneEffectShootBombAction extends BaseAction
   {
       
      
      private var _bombs:Array;
      
      private var _isShoot:Boolean;
      
      private var _prepared:Boolean;
      
      private var _prepareAction:String;
      
      private var _shootInterval:int;
      
      private var _info:BallInfo;
      
      private var _event:CrazyTankSocketEvent;
      
      private var _endAction:String = "";
      
      private var _livingId:int;
      
      private var _map:MapView;
      
      private var _sceneEffect:GameSceneEffect;
      
      private var _canShootImp:Boolean;
      
      public function SceneEffectShootBombAction(param1:int, param2:MapView, param3:Array, param4:CrazyTankSocketEvent, param5:int)
      {
         super();
         _livingId = param1;
         _map = param2;
         _bombs = param3;
         _event = param4;
         _prepared = false;
         _shootInterval = param5;
         _sceneEffect = _map.getPhysical(_livingId) as GameSceneEffect;
      }
      
      override public function prepare() : void
      {
         _info = BallManager.instance.findBall(_bombs[0].Template.ID);
         if(_sceneEffect)
         {
            _sceneEffect.needFocus(0,0,0);
            if(_sceneEffect.effectMovie)
            {
               _sceneEffect.effectMovie.doAction("shoot",onCallbackPrepared);
            }
            else
            {
               onCallbackPrepared();
            }
         }
         else
         {
            onCallbackPrepared();
         }
      }
      
      protected function onCallbackPrepared() : void
      {
         canShoot();
      }
      
      private function canShoot() : void
      {
         _prepared = true;
         _map.cancelFocus();
      }
      
      override public function execute() : void
      {
         if(!_prepared)
         {
            return;
         }
         if(!_isShoot)
         {
            executeImp(false);
         }
         else
         {
            _shootInterval = Number(_shootInterval) - 1;
            if(_shootInterval <= 0)
            {
               _isFinished = true;
               _event.executed = true;
            }
         }
      }
      
      private function executeImp(param1:Boolean) : void
      {
         var _loc5_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:* = null;
         if(!_isShoot)
         {
            _isShoot = true;
            SoundManager.instance.play(_info.ShootSound);
            _loc5_ = 0;
            while(_loc5_ < _bombs.length)
            {
               _loc4_ = 0;
               while(_loc4_ < _bombs[_loc5_].Actions.length)
               {
                  if(_bombs[_loc5_].Actions[_loc4_].type == 5)
                  {
                     _bombs.unshift(_bombs.splice(_loc5_,1)[0]);
                     break;
                  }
                  _loc4_++;
               }
               _loc5_++;
            }
            var _loc7_:int = 0;
            var _loc6_:* = _bombs;
            for each(var _loc2_ in _bombs)
            {
               _loc3_ = new SimpleBomb(_loc2_,null);
               _map.addPhysical(_loc3_);
               if(param1)
               {
                  _loc3_.bombAtOnce();
               }
            }
         }
      }
   }
}
