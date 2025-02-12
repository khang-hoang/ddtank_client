package farm.viewx
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.LeavePageManager;
   import ddt.manager.SoundManager;
   import ddt.utils.CheckMoneyUtils;
   import ddt.utils.PositionUtils;
   import farm.FarmModelController;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class FarmBuyFieldView extends Sprite implements Disposeable
   {
       
      
      private var _bg1:MutipleImage;
      
      private var _bg2:ScaleBitmapImage;
      
      private var _titleBg:Bitmap;
      
      private var _title:FilterFrameText;
      
      private var _close:SimpleBitmapButton;
      
      private var _cancel:TextButton;
      
      private var _ok:TextButton;
      
      private var _timeTitle:FilterFrameText;
      
      private var _bg3:Scale9CornerImage;
      
      private var _week:SelectedCheckButton;
      
      private var _month:SelectedCheckButton;
      
      private var _all:SelectedCheckButton;
      
      private var _bg4:Bitmap;
      
      private var _needTxt:FilterFrameText;
      
      private var _money:FilterFrameText;
      
      private var _group:SelectedButtonGroup;
      
      private var _selectedBtn:SelectedCheckButton;
      
      private var _selectedBandBtn:SelectedCheckButton;
      
      private var _fieldId:int;
      
      private var _moneyNum:int;
      
      private var _moneyConfirm:BaseAlerFrame;
      
      private var _isBand:Boolean;
      
      private var _back;
      
      private var _moneyTxt:FilterFrameText;
      
      private var _bandMoneyTxt:FilterFrameText;
      
      public function FarmBuyFieldView(param1:int){super();}
      
      private function initView() : void{}
      
      protected function selectedBandHander(param1:MouseEvent) : void{}
      
      protected function seletedHander(param1:MouseEvent) : void{}
      
      private function addEvent() : void{}
      
      private function removeEvent() : void{}
      
      protected function __onKeyDown(param1:KeyboardEvent) : void{}
      
      private function upMoney() : void{}
      
      protected function __all(param1:Event) : void{}
      
      private function __changeHandler(param1:Event) : void{}
      
      protected function __ok(param1:MouseEvent) : void{}
      
      protected function onCheckComplete() : void{}
      
      private function __moneyConfirmHandler(param1:FrameEvent) : void{}
      
      private function getallField() : Array{return null;}
      
      protected function __close(param1:MouseEvent) : void{}
      
      public function dispose() : void{}
   }
}
