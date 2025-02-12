package gemstone.views
{
   import bagAndInfo.cell.BagCell;
   import bagAndInfo.cell.PersonalInfoCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.FTextButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.BagInfo;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.data.player.SelfInfo;
   import ddt.events.BagEvent;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import gemstone.GemstoneManager;
   import gemstone.info.GemstListInfo;
   import gemstone.info.GemstnoeSendInfo;
   import gemstone.info.GemstoneStaticInfo;
   import gemstone.info.GemstoneUpGradeInfo;
   import gemstone.items.ExpBar;
   import gemstone.items.GemstoneBuyItem;
   import gemstone.items.GemstoneContent;
   import org.aswing.KeyboardManager;
   
   public class GemstoneUpView extends Frame
   {
      
      private static const ANGLE_P:int = 120;
      
      private static const FIG_POS:int = 2;
       
      
      private var baseMc:MovieClip;
      
      private var _contArray:Vector.<GemstoneContent>;
      
      private var _centerP:Point;
      
      private var _angle:int = 0;
      
      private var _upgradeBtn:SimpleBitmapButton;
      
      private var _upghostBtn:SimpleBitmapButton;
      
      private var _cellPos:Array;
      
      private var _cells:Vector.<PersonalInfoCell>;
      
      private var _cellContent:Sprite;
      
      private var _selfInfo:SelfInfo;
      
      private var _radius:Number = 100;
      
      private var _contArrlen:int;
      
      private var _expBar:ExpBar;
      
      private var _hairBtn:FTextButton;
      
      private var _faceBtn:FTextButton;
      
      private var _eyeBtn:FTextButton;
      
      private var _suitBtn:FTextButton;
      
      private var _decorateBtn:FTextButton;
      
      private var _selectBtn:SelectedButton;
      
      private var _txt1:FilterFrameText;
      
      private var _txt2:FilterFrameText;
      
      private var _txt3:FilterFrameText;
      
      private var _txt4:FilterFrameText;
      
      private var _selectTxt:FilterFrameText;
      
      private var _mouseClick:FilterFrameText;
      
      private var _bg:Bitmap;
      
      private var _gemstoneCriView:GemstoneCriView;
      
      private var _isAutoSele:int;
      
      private var _dataList:Vector.<InventoryItemInfo>;
      
      private var _sendInfo:GemstnoeSendInfo;
      
      private var _equipPlayce:int = 2;
      
      private var _fightSpiritId:int;
      
      private var statiDataList:Vector.<GemstoneStaticInfo>;
      
      private var _gemstoneInfoView:GemstoneInfoView;
      
      public var curIndex:int;
      
      private var _bagitem:BagCell;
      
      private var _seletedBitMap:Bitmap;
      
      private var buyItem:GemstoneBuyItem;
      
      private var _btnContent:Sprite;
      
      public function GemstoneUpView(param1:SelfInfo){super();}
      
      private function initView() : void{}
      
      protected function updateCount(param1:BagEvent) : void{}
      
      public function upDatafitCount() : void{}
      
      private function visibleGroup1(param1:Boolean) : void{}
      
      private function visibleGroup2(param1:Boolean) : void{}
      
      public function get expBar() : ExpBar{return null;}
      
      protected function selectHander(param1:MouseEvent) : void{}
      
      protected function btnClickHander(param1:MouseEvent) : void{}
      
      public function updateContentBG() : void{}
      
      public function updateUpButton(param1:Vector.<GemstListInfo>) : void{}
      
      private function mouseClickHander(param1:MouseEvent) : void{}
      
      private function sendFigSpiritUpGrade(param1:int, param2:int) : void{}
      
      public function gemstoneAction(param1:GemstoneUpGradeInfo) : void{}
      
      public function upDataCur(param1:Object) : void{}
      
      override public function dispose() : void{}
   }
}
