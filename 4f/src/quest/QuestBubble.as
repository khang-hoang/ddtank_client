package quest
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.utils.ObjectUtils;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class QuestBubble extends Component
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _itemVec:Vector.<BubbleItem>;
      
      private var _time:Timer;
      
      private var _questModeArr:Array;
      
      public const ACTISOVER:String = "act_is_over";
      
      public const SHOWTASKTIP:String = "show_task_tip";
      
      private var _regularPos:Point;
      
      private var _basePos:Point;
      
      private const BASEWIDTH:int = 25;
      
      public function QuestBubble(){super();}
      
      public function start(param1:Array) : void{}
      
      public function show() : void{}
      
      private function _countInfo() : void{}
      
      override public function dispose() : void{}
   }
}
