package dayActivity.view.dayActtivityView
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.utils.ObjectUtils;
   import dayActivity.ActivityData;
   import dayActivity.items.DayActivityLeftList;
   import flash.display.Sprite;
   
   public class DayActtivityLeftView extends Sprite implements Disposeable
   {
       
      
      private var _rightBack:MutipleImage;
      
      private var _resArray:Array;
      
      private var _wordArray:Array;
      
      private var _boolArray:Array;
      
      private var _panel:ScrollPanel;
      
      private var _list:VBox;
      
      private var _itemList:Vector.<DayActivityLeftList>;
      
      public function DayActtivityLeftView(){super();}
      
      private function initView() : void{}
      
      public function initList(param1:Vector.<ActivityData>, param2:Vector.<ActivityData>) : void{}
      
      private function clearList() : void{}
      
      public function dispose() : void{}
   }
}
