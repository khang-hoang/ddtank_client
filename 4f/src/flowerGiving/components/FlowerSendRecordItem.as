package flowerGiving.components
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flowerGiving.FlowerGivingController;
   import flowerGiving.data.FlowerSendRecordInfo;
   import flowerGiving.events.FlowerSendRecordEvent;
   
   public class FlowerSendRecordItem extends Sprite implements Disposeable
   {
       
      
      private var _timeTxt:FilterFrameText;
      
      private var _contentTxt:FilterFrameText;
      
      private var _huikuiBtn:SimpleBitmapButton;
      
      private var _sender:String;
      
      private var _num:int;
      
      private var _receiver:String;
      
      public function FlowerSendRecordItem(param1:int){super();}
      
      private function initView() : void{}
      
      public function setData(param1:FlowerSendRecordInfo) : void{}
      
      private function addEvent() : void{}
      
      protected function __huikuiClick(param1:MouseEvent) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
