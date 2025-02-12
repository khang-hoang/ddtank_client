package catchInsect.view
{
   import catchInsect.CatchInsectManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedTextButton;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.HelpFrameUtils;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class CatchInsectCheckGeinFrame extends Frame
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _indivPrizeView:IndivPrizeView;
      
      private var _selfZoneView:CatchInsectRankView;
      
      private var _crossZoneView:CatchInsectRankView;
      
      private var _hBox:HBox;
      
      private var _btnGroup:SelectedButtonGroup;
      
      private var _indivPrizeBtn:SelectedTextButton;
      
      private var _selfZoneBtn:SelectedTextButton;
      
      private var _crossZoneBtn:SelectedTextButton;
      
      private var _scoreImg:Bitmap;
      
      private var _txtBg:Scale9CornerImage;
      
      private var _scoreTxt:FilterFrameText;
      
      private var _convertBtn:SimpleBitmapButton;
      
      private var _tipsTxt:FilterFrameText;
      
      private var _helpBtn:SimpleBitmapButton;
      
      private var currentIndex:int;
      
      public function CatchInsectCheckGeinFrame(){super();}
      
      private function initView() : void{}
      
      private function initEvents() : void{}
      
      protected function __updateView(param1:Event) : void{}
      
      protected function __convertBtnClick(param1:MouseEvent) : void{}
      
      protected function __frameEvent(param1:FrameEvent) : void{}
      
      protected function __changeHandler(param1:Event) : void{}
      
      private function removeEvents() : void{}
      
      override public function dispose() : void{}
   }
}
