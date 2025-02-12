package welfareCenter.view
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.manager.TimeManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import road7th.utils.DateUtils;
   import times.utils.timerManager.TimerJuggler;
   import times.utils.timerManager.TimerManager;
   import welfareCenter.WelfareCenterManager;
   
   public class OldPlayerGradeGiftView extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _awardBg:ScaleBitmapImage;
      
      private var _progress:MovieClip;
      
      private var _awardArrow:Bitmap;
      
      private var _giftBtnList:Vector.<OldPlayerGradeGiftBox>;
      
      private var _hBox:HBox;
      
      private var _gainProgress:int;
      
      private var _timeText:FilterFrameText;
      
      private var _timer:TimerJuggler;
      
      private const goodsIDList:Array = [[11025,9024,12559],[11025,40002,313000,12559],[11150,100100,40002,334102,12559,11994],[11150,100100,40002,334102,20150,12559]];
      
      private const goodsCountList:Array = [[20,2,1],[50,10,5,1],[3,30,15,3,2,1],[5,50,20,8,3,3]];
      
      private const gradeList:Array = [12,20,30,35];
      
      public function OldPlayerGradeGiftView(){super();}
      
      private function init() : void{}
      
      private function __onGainComplete(param1:Event) : void{}
      
      public function updateAwardView(param1:int) : void{}
      
      private function __onClickGiftBtn(param1:MouseEvent) : void{}
      
      private function updateGiftView() : void{}
      
      private function __onUpdateTimer(param1:Event) : void{}
      
      private function isGainAward() : Boolean{return false;}
      
      private function cellBg() : Sprite{return null;}
      
      private function disposeTimer() : void{}
      
      public function dispose() : void{}
   }
}
