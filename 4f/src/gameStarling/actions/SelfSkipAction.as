package gameStarling.actions
{
   import ddt.manager.GameInSocketOut;
   import gameCommon.actions.BaseAction;
   import gameCommon.model.LocalPlayer;
   
   public class SelfSkipAction extends BaseAction
   {
       
      
      private var _info:LocalPlayer;
      
      public function SelfSkipAction(param1:LocalPlayer){super();}
      
      override public function prepare() : void{}
   }
}
