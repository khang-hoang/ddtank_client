package game.actions.SkillActions
{
   import game.animations.IAnimate;
   import gameCommon.GameControl;
   import gameCommon.MirariEffectIconManager;
   import gameCommon.model.Living;
   import gameCommon.model.Player;
   import road7th.comm.PackageIn;
   
   public class ResolveHurtAction extends SkillAction
   {
       
      
      private var _pkg:PackageIn;
      
      private var _scr:Living;
      
      public function ResolveHurtAction(param1:IAnimate, param2:Living, param3:PackageIn){super(null);}
      
      override protected function finish() : void{}
   }
}
