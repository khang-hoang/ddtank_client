package academy.view
{
   import academy.AcademyController;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.utils.PositionUtils;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class AcademyView extends Sprite implements Disposeable
   {
       
      
      private var _memberLis:AcademyMemberListView;
      
      private var _playerPanel:AcademyPlayerPanel;
      
      private var _controller:AcademyController;
      
      private var _flowerPatternBg:MovieClip;
      
      public function AcademyView(param1:AcademyController){super();}
      
      private function init() : void{}
      
      public function dispose() : void{}
   }
}
