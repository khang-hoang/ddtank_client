package consortion.rank
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import consortion.ConsortionModelManager;
   import consortion.event.ConsortionEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import ddt.utils.HelpFrameUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class RankFrame extends Frame
   {
      
      private static const PRANK:int = 0;
      
      private static const CRANK:int = 1;
      
      private static const BRANK:int = 0;
      
      private static const LRANK:int = 1;
      
      private static const CPAGE:int = 8;
      
      protected static const PPAGE:int = 10;
      
      protected static const LIMITPAGE:int = 1;
      
      protected static var TOTALPAGE:int = 1;
       
      
      private var _index:int = 1;
      
      protected var _back:Bitmap;
      
      protected var _pRank:SelectedButton;
      
      protected var _cRank:SelectedButton;
      
      private var _group1:SelectedButtonGroup;
      
      private var _group2:SelectedButtonGroup;
      
      protected var _helpBtn:SimpleBitmapButton;
      
      protected var _rightBtn:BaseButton;
      
      protected var _leftBtn:BaseButton;
      
      protected var _pageNum:FilterFrameText;
      
      protected var _totalRank:FilterFrameText;
      
      protected var _totalScroeTxt:FilterFrameText;
      
      protected var _itemContent:Sprite;
      
      protected var _type:int;
      
      protected var _rankList:Array;
      
      protected var _prankBit:Bitmap;
      
      protected var _crankBit:Bitmap;
      
      protected var _pageBack:Scale9CornerImage;
      
      private var _isHave:Boolean;
      
      public function RankFrame(){super();}
      
      protected function initView() : void{}
      
      protected function initItemList(param1:Array) : void{}
      
      protected function setRankTxt(param1:RankData) : void{}
      
      protected function clearItemList() : void{}
      
      private function initEvents() : void{}
      
      private function removeEvents() : void{}
      
      private function personerRankListHander(param1:ConsortionEvent) : void{}
      
      private function setCurrtArr(param1:Array) : Array{return null;}
      
      private function clubRankListHander(param1:ConsortionEvent) : void{}
      
      protected function setPageTxt(param1:Array) : void{}
      
      private function mouseClickHander(param1:MouseEvent) : void{}
      
      protected function setPageArr() : void{}
      
      private function responseHander(param1:FrameEvent) : void{}
      
      private function group1changeHandler(param1:Event) : void{}
      
      override public function dispose() : void{}
   }
}
