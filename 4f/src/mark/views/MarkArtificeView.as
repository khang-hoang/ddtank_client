package mark.views
{
   import bagAndInfo.cell.BaseCell;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.data.goods.QualityType;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Shape;
   import mark.MarkMgr;
   import mark.data.MarkChipData;
   import mark.data.MarkProData;
   import mark.data.MarkTransferTemplateData;
   import mark.event.MarkEvent;
   import mark.items.MarkArtificeItem;
   import mark.items.MarkPropItem;
   import mark.mornUI.views.MarkArtificeViewUI;
   import morn.core.handlers.Handler;
   
   public class MarkArtificeView extends MarkArtificeViewUI
   {
       
      
      private var _itemLeft:BaseCell = null;
      
      private var _qualityTxtLeft:FilterFrameText = null;
      
      private var _transferAlert:BaseAlerFrame = null;
      
      public function MarkArtificeView(){super();}
      
      override protected function initialize() : void{}
      
      private function transfer() : void{}
      
      private function alertHandler(param1:FrameEvent) : void{}
      
      private function submit(param1:Boolean) : void{}
      
      private function render(param1:MarkPropItem, param2:int) : void{}
      
      private function select(param1:int) : void{}
      
      private function transferSelect(param1:int) : void{}
      
      private function transferRender(param1:MarkArtificeItem, param2:int) : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function submitResult(param1:MarkEvent) : void{}
      
      private function transferResultHandler(param1:MarkEvent) : void{}
      
      private function updateMarkMoney(param1:MarkEvent) : void{}
      
      private function updateInfo(param1:MarkEvent = null) : void{}
      
      private function updateDemand() : void{}
      
      override public function set visible(param1:Boolean) : void{}
      
      override public function dispose() : void{}
   }
}
