package quest
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.MovieClip;
   
   public class QuestStarListView extends Component
   {
       
      
      private var _level:int;
      
      private var _starContainer:HBox;
      
      private var _starImg:Vector.<ScaleFrameImage>;
      
      private var _lightMovie:MovieClip;
      
      public function QuestStarListView(){super();}
      
      private function initView() : void{}
      
      public function level(param1:int, param2:Boolean = false) : void{}
      
      override public function dispose() : void{}
   }
}
