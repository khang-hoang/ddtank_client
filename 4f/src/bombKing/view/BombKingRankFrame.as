package bombKing.view
{
   import bombKing.components.BKingRankItem;
   import bombKing.data.BKingRankInfo;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedTextButton;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.PkgEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import road7th.comm.PackageIn;
   
   public class BombKingRankFrame extends Frame
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _menu:HBox;
      
      private var _btnGroup:SelectedButtonGroup;
      
      private var _front100Btn:SelectedTextButton;
      
      private var _front16Btn:SelectedTextButton;
      
      private var _listBg:Bitmap;
      
      private var _topTxt:FilterFrameText;
      
      private var _pageBg:Scale9CornerImage;
      
      private var _pageTxt:FilterFrameText;
      
      private var _prevBtn:BaseButton;
      
      private var _nextBtn:BaseButton;
      
      private var _bottomBg:MovieClip;
      
      private var _myRankImg:Bitmap;
      
      private var _bottomTxt:FilterFrameText;
      
      private var _myRank:FilterFrameText;
      
      private var _myScore:FilterFrameText;
      
      private var _vbox:VBox;
      
      private var _itemList:Vector.<BKingRankItem>;
      
      private var _currentIndex:int;
      
      private var _curPage:int;
      
      private var _totalPage:int;
      
      public function BombKingRankFrame(){super();}
      
      private function initView() : void{}
      
      private function initEvents() : void{}
      
      protected function __updateRank(param1:PkgEvent) : void{}
      
      protected function __changeHandler(param1:Event) : void{}
      
      protected function __prevBtnClick(param1:MouseEvent) : void{}
      
      protected function __nextBtnClick(param1:MouseEvent) : void{}
      
      private function __frameEventHandler(param1:FrameEvent) : void{}
      
      private function clearItems() : void{}
      
      private function removeEvent() : void{}
      
      override public function dispose() : void{}
   }
}
