package ddtmatch.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import ddtmatch.event.DDTMatchEvent;
   import ddtmatch.manager.DDTMatchManager;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class DDTMatchMainFrame extends Frame implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _hBox:HBox;
      
      private var _matchBtn:SelectedButton;
      
      private var _expertBtn:SelectedButton;
      
      private var _redPacketBtn:SelectedButton;
      
      private var _fightKingBtn:SelectedButton;
      
      private var _btnGroup:SelectedButtonGroup;
      
      private var _currentIndex:int;
      
      private var _helpBtn:BaseButton;
      
      private var _view;
      
      private var _helpframe:Frame;
      
      private var _content:MovieClip;
      
      private var _btnOk:TextButton;
      
      private var _bgHelp:Scale9CornerImage;
      
      public function DDTMatchMainFrame(){super();}
      
      override protected function init() : void{}
      
      private function addEvent() : void{}
      
      private function checkCloseHandler(param1:DDTMatchEvent) : void{}
      
      private function __helpBtnClickHandler(param1:MouseEvent) : void{}
      
      private function __helpFrameRespose(param1:FrameEvent) : void{}
      
      private function __closeHelpFrame(param1:MouseEvent) : void{}
      
      protected function __changeHandler(param1:MouseEvent) : void{}
      
      private function _response(param1:FrameEvent) : void{}
      
      private function removeEvent() : void{}
      
      override public function dispose() : void{}
   }
}
