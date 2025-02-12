package store.view.transfer
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import flash.events.Event;
   
   public class HoleConfirmAlert extends BaseAlerFrame
   {
       
      
      private var _state1:Boolean;
      
      private var _state2:Boolean;
      
      private var _beforeCheck:SelectedCheckButton;
      
      private var _afterCheck:SelectedCheckButton;
      
      private var _textField:FilterFrameText;
      
      private var _noteField:FilterFrameText;
      
      public function HoleConfirmAlert(param1:int, param2:int)
      {
         super();
         var _loc3_:AlertInfo = new AlertInfo();
         _loc3_.submitLabel = LanguageMgr.GetTranslation("ok");
         _loc3_.cancelLabel = LanguageMgr.GetTranslation("cancel");
         _loc3_.title = LanguageMgr.GetTranslation("AlertDialog.Info");
         this.info = _loc3_;
         addEvent();
         if(param1 == -1)
         {
            _beforeCheck.enable = false;
         }
         else
         {
            _beforeCheck.selected = param1 == 1?true:false;
         }
         if(param2 == -1)
         {
            _afterCheck.enable = false;
         }
         else
         {
            _afterCheck.selected = param2 == 1?true:false;
         }
      }
      
      override protected function init() : void
      {
         super.init();
         _beforeCheck = ComponentFactory.Instance.creatComponentByStylename("ddtstore.HoleConfirmAlert.StrengthenHoleCheckBtn");
         addToContent(_beforeCheck);
         _afterCheck = ComponentFactory.Instance.creatComponentByStylename("ddtstore.HoleConfirmAlert.CloseHoleCheckBtn");
         addToContent(_afterCheck);
         _textField = ComponentFactory.Instance.creatComponentByStylename("ddtstore.HoleConfirmAlert.TipsText");
         _textField.text = LanguageMgr.GetTranslation("store.view.transfer.HoleTipsText");
         addToContent(_textField);
         _noteField = ComponentFactory.Instance.creatComponentByStylename("ddtstore.HoleConfirmAlert.NoteText");
         _noteField.text = LanguageMgr.GetTranslation("store.view.transfer.HoleNoteText");
         addToContent(_noteField);
      }
      
      private function addEvent() : void
      {
         _beforeCheck.addEventListener("select",__selectChanged);
         _afterCheck.addEventListener("select",__selectChanged);
      }
      
      private function __selectChanged(param1:Event) : void
      {
         SoundManager.instance.play("008");
         var _loc2_:SelectedCheckButton = param1.currentTarget as SelectedCheckButton;
         if(_loc2_ == _beforeCheck)
         {
            _state1 = _beforeCheck.selected;
         }
         else if(_loc2_ == _afterCheck)
         {
            _state2 = _beforeCheck.selected;
         }
      }
      
      private function removeEvent() : void
      {
         _beforeCheck.removeEventListener("select",__selectChanged);
         _afterCheck.removeEventListener("select",__selectChanged);
      }
      
      public function get state1() : Boolean
      {
         return _beforeCheck.enable && _beforeCheck.selected;
      }
      
      public function get state2() : Boolean
      {
         return _afterCheck.enable && _afterCheck.selected;
      }
      
      override public function dispose() : void
      {
         removeEvent();
         if(_beforeCheck)
         {
            ObjectUtils.disposeObject(_beforeCheck);
            _beforeCheck = null;
         }
         if(_afterCheck)
         {
            ObjectUtils.disposeObject(_afterCheck);
            _afterCheck = null;
         }
         if(_textField)
         {
            ObjectUtils.disposeObject(_textField);
            _textField = null;
         }
         if(_noteField)
         {
            ObjectUtils.disposeObject(_noteField);
         }
         _noteField = null;
         super.dispose();
      }
   }
}
