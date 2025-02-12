package times.view
{
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Sprite;
   import times.TimesController;
   import times.data.TimesPicInfo;
   
   public class TimesThumbnailView extends Sprite implements Disposeable
   {
       
      
      private var _controller:TimesController;
      
      private var _pointArr:Vector.<TimesThumbnailPoint>;
      
      private var _spacing:int;
      
      private var _pointGroup:SelectedButtonGroup;
      
      private var _pointIdx:int;
      
      public function TimesThumbnailView(param1:TimesController){super();}
      
      private function init() : void{}
      
      public function set pointIdx(param1:int) : void{}
      
      public function dispose() : void{}
   }
}
