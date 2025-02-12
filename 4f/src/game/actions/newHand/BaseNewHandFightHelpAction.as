package game.actions.newHand
{
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import gameCommon.GameControl;
   import gameCommon.actions.BaseAction;
   import gameCommon.model.GameInfo;
   import room.RoomManager;
   import room.model.RoomInfo;
   import trainer.controller.WeakGuildManager;
   
   class BaseNewHandFightHelpAction extends BaseAction
   {
       
      
      protected var _gameInfo:GameInfo;
      
      function BaseNewHandFightHelpAction(){super();}
      
      protected function get isInNewHandRoom() : Boolean{return false;}
      
      protected function showFightTip(param1:String, param2:Number = 1) : void{}
   }
}
