package drgnBoatBuild.views
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import drgnBoatBuild.DrgnBoatBuildControl;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import store.HelpFrame;
   
   public class DrgnBoatBuildFrame extends Frame
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _leftView:DrgnBoatBuildLeftView;
      
      private var _rightView:DrgnBoatBuildRightView;
      
      private var _helpBtn:SimpleBitmapButton;
      
      public function DrgnBoatBuildFrame()
      {
         super();
         escEnable = true;
         initView();
         initEvents();
      }
      
      private function initView() : void
      {
         _titleText = LanguageMgr.GetTranslation("drgnBoatBuild.frameTitle");
         _bg = ComponentFactory.Instance.creatComponentByStylename("drgnBoatBuild.bg");
         addToContent(_bg);
         _leftView = new DrgnBoatBuildLeftView();
         PositionUtils.setPos(_leftView,"drgnBoatBuild.leftViewPos");
         addToContent(_leftView);
         _rightView = new DrgnBoatBuildRightView();
         PositionUtils.setPos(_rightView,"drgnBoatBuild.rightViewPos");
         addToContent(_rightView);
         _helpBtn = ComponentFactory.Instance.creatComponentByStylename("drgnBoatBuild.helpBtn");
         addToContent(_helpBtn);
      }
      
      private function initEvents() : void
      {
         addEventListener("response",__frameEventHandler);
         _helpBtn.addEventListener("click",__helpBtnClick);
      }
      
      protected function __helpBtnClick(param1:MouseEvent) : void
      {
         SoundManager.instance.play("008");
         param1.stopImmediatePropagation();
         var _loc2_:DisplayObject = ComponentFactory.Instance.creat("drgnBoatBuild.HelpPrompt");
         var _loc3_:HelpFrame = ComponentFactory.Instance.creat("drgnBoatBuild.HelpFrame");
         _loc3_.setView(_loc2_);
         _loc3_.titleText = LanguageMgr.GetTranslation("store.view.HelpButtonText");
         _loc3_.changeSubmitButtonY(-71);
         LayerManager.Instance.addToLayer(_loc3_,3,true,1);
      }
      
      private function __frameEventHandler(param1:FrameEvent) : void
      {
         SoundManager.instance.play("008");
         param1.stopPropagation();
         (param1.currentTarget as DrgnBoatBuildFrame).removeEventListener("response",__frameEventHandler);
         switch(int(param1.responseCode))
         {
            case 0:
            case 1:
               dispose();
         }
         ObjectUtils.disposeObject(param1.currentTarget);
      }
      
      private function removeEvents() : void
      {
         removeEventListener("response",__frameEventHandler);
         if(_helpBtn)
         {
            _helpBtn.removeEventListener("click",__helpBtnClick);
         }
      }
      
      override public function dispose() : void
      {
         removeEvents();
         DrgnBoatBuildControl.instance.frame = null;
         ObjectUtils.disposeObject(_bg);
         _bg = null;
         ObjectUtils.disposeObject(_leftView);
         _leftView = null;
         ObjectUtils.disposeObject(_rightView);
         _rightView = null;
         ObjectUtils.disposeObject(_helpBtn);
         _helpBtn = null;
         super.dispose();
      }
   }
}
