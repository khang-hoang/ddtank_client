package braveDoor.view
{
   import BraveDoor.event.BraveDoorEvent;
   import braveDoor.BraveDoorControl;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.map.DungeonInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MapManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   
   public class DuplicateSelectView extends Frame implements Disposeable
   {
      
      public static var SELECT_DUPLICATE:String = "selectDuplicate";
       
      
      private var _duplicateMap:Bitmap;
      
      private var _dropList:BraveDoorDropList;
      
      private var _bg:Bitmap;
      
      private var _selectDupBtn:BaseButton;
      
      private var _info:DungeonInfo;
      
      private var _control:BraveDoorControl;
      
      public function DuplicateSelectView(param1:BraveDoorControl)
      {
         _control = param1;
         super();
      }
      
      override protected function init() : void
      {
         _bg = ComponentFactory.Instance.creatBitmap("asset.braveDoor.duplicateDrop.bgIcon");
         _selectDupBtn = ComponentFactory.Instance.creatComponentByStylename("braveDoor.selectDuplicateView.selectDupBtn");
         _selectDupBtn.enable = false;
         _dropList = new BraveDoorDropList();
         _dropList.x = 15;
         _dropList.y = 178;
         _dropList.visible = true;
         super.init();
         titleText = LanguageMgr.GetTranslation("game.braveDoor.selectDulicate");
         initEvent();
      }
      
      override protected function addChildren() : void
      {
         super.addChildren();
         addChild(_bg);
         addChild(_dropList);
         addChild(_selectDupBtn);
      }
      
      private function initEvent() : void
      {
         this.addEventListener("response",__responseHandler);
         _selectDupBtn.addEventListener("click",__selectDupHandler);
      }
      
      private function removeEvent() : void
      {
         this.removeEventListener("response",__responseHandler);
         _selectDupBtn.removeEventListener("click",__selectDupHandler);
      }
      
      private function __selectDupHandler(param1:MouseEvent) : void
      {
         SoundManager.instance.playButtonSound();
         if(_control)
         {
            _control.dispatchEvent(new BraveDoorEvent("selectedDuplicate",_info.ID));
         }
         this.dispose();
      }
      
      private function __responseHandler(param1:FrameEvent) : void
      {
         if(param1.responseCode == 0 || param1.responseCode == 1)
         {
            SoundManager.instance.playButtonSound();
            this.dispose();
         }
      }
      
      public function set duplicateID(param1:int) : void
      {
         _info = MapManager.getBraveDoorDuplicateInfo(param1);
         updateMap(param1);
         if(_info && param1 != 0 && param1 != 10000 && _info.SimpleTemplateIds != "")
         {
            _dropList.info = _info.SimpleTemplateIds.split(",");
         }
         _selectDupBtn.enable = true;
      }
      
      private function updateMap(param1:int) : void
      {
         if(_duplicateMap)
         {
            ObjectUtils.disposeObject(_duplicateMap);
            _duplicateMap = null;
         }
         if(param1 != 0)
         {
            _duplicateMap = ComponentFactory.Instance.creatBitmap("asset.braveDoor.duplicateIcon" + param1);
            _duplicateMap.x = 20;
            _duplicateMap.y = 44;
            addChild(_duplicateMap);
         }
      }
      
      override public function dispose() : void
      {
         removeEvent();
         if(_dropList)
         {
            ObjectUtils.disposeObject(_dropList);
         }
         _dropList = null;
         if(_duplicateMap)
         {
            ObjectUtils.disposeObject(_duplicateMap);
         }
         _duplicateMap = null;
         if(_selectDupBtn)
         {
            ObjectUtils.disposeObject(_selectDupBtn);
         }
         _selectDupBtn = null;
         if(_bg)
         {
            ObjectUtils.disposeObject(_bg);
         }
         _bg = null;
         _info = null;
         _control = null;
         if(this.parent)
         {
            this.parent.removeChild(this);
         }
      }
   }
}
