package nationDay.view
{
   import bagAndInfo.cell.BagCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import dayActivity.event.ActivityEvent;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.events.BagEvent;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import farm.FarmModelController;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class ActivitySeedCell extends BagCell
   {
       
      
      private var _id:int;
      
      private var _autumnAnimation:MovieClip;
      
      private var _getAwardAnimation:MovieClip;
      
      private var _seedBtn:BaseButton;
      
      private var _getAwardBtn:BaseButton;
      
      private var _midFlag:Boolean;
      
      public function ActivitySeedCell(param1:int, param2:ItemTemplateInfo = null, param3:Boolean = true, param4:DisplayObject = null, param5:Boolean = true){super(null,null,null,null,null);}
      
      public function addSeedBtn() : void{}
      
      private function addEvent() : void{}
      
      override public function updateCount() : void{}
      
      protected function __updateCount(param1:BagEvent) : void{}
      
      protected function __onSeedBtnClick(param1:MouseEvent) : void{}
      
      protected function __onMouseOver(param1:MouseEvent) : void{}
      
      protected function __onMouseOut(param1:MouseEvent) : void{}
      
      public function addAwardAnimation() : void{}
      
      public function addFireworkAnimation(param1:int) : void{}
      
      public function removeFireworkAnimation() : void{}
      
      protected function __onGetAwardClick(param1:MouseEvent) : void{}
      
      public function playFireworkAnimation() : void{}
      
      public function get needCount() : int{return 0;}
      
      override public function dispose() : void{}
   }
}
