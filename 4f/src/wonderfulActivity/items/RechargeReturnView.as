package wonderfulActivity.items
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import dayActivity.ActivityTypeData;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SocketManager;
   import ddt.manager.TimeManager;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.filters.ColorMatrixFilter;
   import wonderfulActivity.WonderfulActivityManager;
   import wonderfulActivity.data.CanGetData;
   import wonderfulActivity.views.IRightView;
   
   public class RechargeReturnView extends Sprite implements IRightView
   {
       
      
      private var _goldLine:Bitmap;
      
      private var _tittle:Bitmap;
      
      private var _goldStone:Bitmap;
      
      private var _back:Bitmap;
      
      private var _vbox:VBox;
      
      private var _scrollPanel:ScrollPanel;
      
      private var _downBack:Bitmap;
      
      private var _limitTime:Bitmap;
      
      private var _type:int;
      
      private var _downTxt:FilterFrameText;
      
      private var _list:Vector.<ActivityTypeData>;
      
      private var _listRightItem:Vector.<RightListItem>;
      
      private var _timerTxt:FilterFrameText;
      
      private var _helpIcon:ScaleBitmapImage;
      
      private var _data:ActivityTypeData;
      
      private var startData:Date;
      
      private var endData:Date;
      
      private var nowdate:Date;
      
      private var _stateList:Vector.<CanGetData>;
      
      private var _isTimerOver:Boolean = false;
      
      public function RechargeReturnView(param1:int = 0, param2:ActivityTypeData = null){super();}
      
      public function setState(param1:int, param2:int) : void{}
      
      public function init() : void{}
      
      private function applyGray(param1:DisplayObject) : void{}
      
      private function applyFilter(param1:DisplayObject, param2:Array) : void{}
      
      private function initTimer() : void{}
      
      private function rechargeTimerHander() : void{}
      
      private function initItem() : void{}
      
      public function content() : Sprite{return null;}
      
      public function dispose() : void{}
   }
}
