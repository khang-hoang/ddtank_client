package ddt.view.academyCommon.academyRequest
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.vo.AlertInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.SocketManager;
   import ddt.utils.FilterWordManager;
   import flash.events.MouseEvent;
   
   public class AcademyRequestApprenticeFrame extends AcademyRequestMasterFrame implements Disposeable
   {
       
      
      public function AcademyRequestApprenticeFrame()
      {
         super();
      }
      
      override public function show() : void
      {
         LayerManager.Instance.addToLayer(this,3,true,2);
      }
      
      override protected function initContent() : void
      {
         _alertInfo = new AlertInfo();
         _alertInfo.title = LanguageMgr.GetTranslation("ddt.view.academyCommon.academyRequest.AcademyRequestApprenticeFrame.title");
         _alertInfo.submitLabel = LanguageMgr.GetTranslation("ddt.view.academyCommon.academyRequest.AcademyRequestApprenticeFrame.submitLabel");
         _alertInfo.showCancel = false;
         _alertInfo.customPos = ComponentFactory.Instance.creatCustomObject("academyCommon.myAcademy.requireSmallPos");
         info = _alertInfo;
         _inputBG = ComponentFactory.Instance.creatComponentByStylename("academyCommon.academyRequest.inputBg");
         addToContent(_inputBG);
         _inputBG2 = ComponentFactory.Instance.creatComponentByStylename("academyCommon.academyRequest.inputBg2");
         addToContent(_inputBG2);
         _inputText = ComponentFactory.Instance.creat("academyCommon.academyRequest.inputxt");
         _inputText.maxChars = 30;
         _inputText.text = LanguageMgr.GetTranslation("ddt.view.academyCommon.academyRequest.AcademyRequestApprenticeFrame.account");
         addToContent(_inputText);
         _explainText = ComponentFactory.Instance.creat("academyCommon.academyRequestApprenticeFrame.explainText");
         _explainText.text = LanguageMgr.GetTranslation("ddt.view.academyCommon.academyRequest.AcademyRequestApprenticeFrame.explainText");
         addToContent(_explainText);
      }
      
      override protected function __onInpotClick(param1:MouseEvent) : void
      {
         if(!_isSelection)
         {
            _inputText.setSelection(0,_inputText.text.length);
            _isSelection = true;
         }
         else
         {
            _inputText.setFocus();
            _isSelection = false;
         }
      }
      
      override protected function submit() : void
      {
         if(_playerInfo.playerState.StateID == 0)
         {
            MessageTipManager.getInstance().show(LanguageMgr.GetTranslation("ddt.view.academyCommon.academyRequest.state"));
            hide();
            return;
         }
         if(FilterWordManager.isGotForbiddenWords(_inputText.text))
         {
            MessageTipManager.getInstance().show(LanguageMgr.GetTranslation("im.IMView.inviteInfo1"));
            return;
         }
         SocketManager.Instance.out.sendAcademyMaster(_playerInfo.ID,_inputText.text);
         hide();
      }
   }
}
