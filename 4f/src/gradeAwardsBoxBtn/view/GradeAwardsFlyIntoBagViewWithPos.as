package gradeAwardsBoxBtn.view
{
   import bagAndInfo.cell.BagCell;
   import com.greensock.TweenMax;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.view.MainToolBar;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   
   public class GradeAwardsFlyIntoBagViewWithPos
   {
      
      private static var totalCellFlying:int;
      
      private static var tooMuch:Boolean = false;
       
      
      public function GradeAwardsFlyIntoBagViewWithPos(){super();}
      
      public function onFrameClose(param1:Array, param2:Array) : void{}
      
      private function notTooMuchNow() : void{}
      
      private function onFlyStart(param1:BagCell) : void{}
      
      private function onGoodsIconFlied(param1:BagCell) : void{}
   }
}
