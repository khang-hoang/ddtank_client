package ddt.view.academyCommon.recommend
{
   import academy.AcademyManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import ddt.manager.AcademyFrameManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import flash.events.MouseEvent;
   
   public class RecommendMasterPlayerCellView extends RecommendPlayerCellView implements Disposeable
   {
       
      
      public function RecommendMasterPlayerCellView(){super();}
      
      override protected function initRecommendBtn() : void{}
      
      override protected function __recommendBtn(param1:MouseEvent) : void{}
   }
}
