package store
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class HelpFrame extends Frame
   {
       
      
      private var _view:Sprite;
      
      private var _submitButton:TextButton;
      
      public function HelpFrame()
      {
         super();
         initView();
         addEvent();
      }
      
      private function initView() : void
      {
         _view = new Sprite();
         _submitButton = ComponentFactory.Instance.creat("ddtstore.HelpFrame.EnterBtn");
         _submitButton.text = LanguageMgr.GetTranslation("ok");
         _view.addChild(_submitButton);
         addToContent(_view);
         escEnable = true;
         enterEnable = true;
      }
      
      private function addEvent() : void
      {
         addEventListener("response",_response);
         _submitButton.addEventListener("click",_submit);
      }
      
      public function changeSubmitButtonY(param1:int) : void
      {
         _submitButton.y = _submitButton.y + param1;
      }
      
      public function changeSubmitButtonX(param1:int) : void
      {
         _submitButton.x = _submitButton.x + param1;
      }
      
      public function setView(param1:DisplayObject) : void
      {
         _view.addChild(param1);
      }
      
      private function _submit(param1:MouseEvent) : void
      {
         SoundManager.instance.play("008");
         close();
      }
      
      private function _response(param1:FrameEvent) : void
      {
         SoundManager.instance.play("008");
         if(param1.responseCode == 0 || param1.responseCode == 1 || param1.responseCode == 2)
         {
            close();
         }
      }
      
      private function close() : void
      {
         removeEventListener("response",_response);
         _submitButton.removeEventListener("click",_submit);
         ObjectUtils.disposeObject(_view);
         ObjectUtils.disposeObject(this);
      }
      
      override public function dispose() : void
      {
         super.dispose();
         removeEventListener("response",_response);
         if(_submitButton)
         {
            _submitButton.removeEventListener("click",_submit);
            ObjectUtils.disposeObject(_submitButton);
         }
         _submitButton = null;
         if(_view)
         {
            ObjectUtils.disposeAllChildren(_view);
         }
         _view = null;
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
