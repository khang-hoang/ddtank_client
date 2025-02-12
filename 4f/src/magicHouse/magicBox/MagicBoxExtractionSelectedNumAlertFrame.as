package magicHouse.magicBox
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   
   public class MagicBoxExtractionSelectedNumAlertFrame extends BaseAlerFrame
   {
       
      
      protected var _alertInfo:AlertInfo;
      
      protected var _sellFunction:Function;
      
      protected var _notSellFunction:Function;
      
      protected var _maxNum:int = 0;
      
      protected var _minNum:int = 1;
      
      protected var _nowNum:int = 1;
      
      protected var _btn1:BaseButton;
      
      protected var _btn2:BaseButton;
      
      protected var _inputText:FilterFrameText;
      
      protected var _inputBg:Image;
      
      protected var _txtExplain:Bitmap;
      
      public var index:int;
      
      private var _goodsinfo:InventoryItemInfo;
      
      public function MagicBoxExtractionSelectedNumAlertFrame(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function __addToStageHandler(param1:Event) : void{}
      
      private function _changeInput(param1:Event) : void{}
      
      private function __enterHanlder(param1:KeyboardEvent) : void{}
      
      private function click_btn1(param1:MouseEvent) : void{}
      
      private function click_btn2(param1:MouseEvent) : void{}
      
      private function onFrameResponse(param1:FrameEvent) : void{}
      
      private function _upbtView() : void{}
      
      public function upSee() : void{}
      
      private function __confirm() : void{}
      
      public function addExeFunction(param1:Function, param2:Function) : void{}
      
      public function get goodsinfo() : InventoryItemInfo{return null;}
      
      public function set goodsinfo(param1:InventoryItemInfo) : void{}
      
      public function show(param1:int = 5, param2:int = 1) : void{}
      
      private function removeView() : void{}
      
      override public function dispose() : void{}
   }
}
