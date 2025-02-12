package dayActivity.view.dayActtivityView
{
   import calendar.CalendarControl;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import dayActivity.DayActivityManager;
   import dayActivity.items.DayAcBar;
   import dayActivity.items.DayActivityRightViewItem;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import mainbutton.MainButtnController;
   
   public class DayActtivityRightView extends Sprite implements Disposeable
   {
       
      
      private var _back:MutipleImage;
      
      private var _todayABitMap:Bitmap;
      
      private var _txt1:FilterFrameText;
      
      private var _txt2:FilterFrameText;
      
      private var _bar:DayAcBar;
      
      private var _rfl:Bitmap;
      
      private var _lfl:Bitmap;
      
      private var _dailyCollectionBtn:SimpleBitmapButton;
      
      private var _list:Vector.<DayActivityRightViewItem>;
      
      private var _activeList:Array;
      
      public function DayActtivityRightView(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      protected function __onDailyCollection(param1:MouseEvent) : void{}
      
      private function deleteDailyBtn() : void{}
      
      public function updataBtn(param1:int) : void{}
      
      public function setBarValue(param1:int) : void{}
      
      private function setBtnState(param1:int) : void{}
      
      public function dispose() : void{}
   }
}
