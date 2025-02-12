package sevenDayTarget.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import sevenDayTarget.controller.NewPlayerRewardManager;
   import sevenDayTarget.model.NewPlayerRewardInfo;
   
   public class NewPlayerRewardMainView extends Sprite
   {
      
      public static var CHONGZHI:int = 1;
      
      public static var XIAOFEI:int = 2;
      
      public static var HUNLI:int = 3;
       
      
      private var _bg:Bitmap;
      
      private var _downBack:ScaleBitmapImage;
      
      private var _titleText1:FilterFrameText;
      
      private var _titleText2:FilterFrameText;
      
      private var _titleText3:FilterFrameText;
      
      private var _scrollpanel:ScrollPanel;
      
      private var _scrollpanel2:ScrollPanel;
      
      private var _vbox:VBox;
      
      private var _vbox2:VBox;
      
      private var _helpBnt:BaseButton;
      
      public function NewPlayerRewardMainView(){super();}
      
      private function initView() : void{}
      
      private function addHelpBnt() : void{}
      
      protected function __onHelpClick(param1:MouseEvent) : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
