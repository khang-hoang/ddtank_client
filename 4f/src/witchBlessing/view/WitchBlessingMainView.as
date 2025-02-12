package witchBlessing.view
{
   import bagAndInfo.cell.BagCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SelectedButton;
   import com.pickgliss.ui.controls.SelectedButtonGroup;
   import com.pickgliss.ui.controls.SelectedCheckButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import witchBlessing.WitchBlessingManager;
   import witchBlessing.data.WitchBlessingModel;
   
   public class WitchBlessingMainView extends Frame implements Disposeable
   {
       
      
      private var _leftView:Sprite;
      
      private var _rightView:Sprite;
      
      private var _bottom:ScaleBitmapImage;
      
      private var _btnGroup:SelectedButtonGroup;
      
      private var lv1Btn:SelectedButton;
      
      private var lv2Btn:SelectedButton;
      
      private var lv3Btn:SelectedButton;
      
      private var lv1View:WitchBlessingRightView;
      
      private var lv2View:WitchBlessingRightView;
      
      private var lv3View:WitchBlessingRightView;
      
      private var titleMc:MovieClip;
      
      private var _awardsTxt:FilterFrameText;
      
      private var _takeAwayTxt:FilterFrameText;
      
      private var _timeOpenTxt:FilterFrameText;
      
      private var _doubleTimeTxt:FilterFrameText;
      
      private var _progressTxtImage:Bitmap;
      
      private var _progressBg:Bitmap;
      
      private var _progressCover:Bitmap;
      
      private var _progressTxt:FilterFrameText;
      
      private var _blessLvTxt:FilterFrameText;
      
      private var blessBtn:BaseButton;
      
      private var talkBoxMc:MovieClip;
      
      private var blessHarderBtn:BaseButton;
      
      private var _witchBlessingFrame:WitchBlessingFrame;
      
      private var itemInfo:ItemTemplateInfo;
      
      private var cell:BagCell;
      
      private var maxNumInBag:int;
      
      private var maxMoneyCount:int;
      
      private const ITEMID:int = int(ServerConfigManager.instance.getWitchBlessItemId);
      
      private const ONCE_BLESS_EXP:int = ServerConfigManager.instance.getWitchBlessGP[0];
      
      private const ONCE_HARDER_BLESS_EXP:int = ServerConfigManager.instance.getWitchBlessGP[2];
      
      private const ONCE_BLESS_MONEY:int = ServerConfigManager.instance.getWitchBlessMoney;
      
      private var expArr:Array;
      
      private var awardsNums:Array;
      
      private var doubleMoney:Array;
      
      public var nowLv:int = 0;
      
      private var needExp:int;
      
      private var allHarderBlessMax:int;
      
      private var allBlessMax:int;
      
      private var nextLvBlessMax:int;
      
      private var nextLvHarderBlessMax:int;
      
      private var _allIn:SelectedCheckButton;
      
      public function WitchBlessingMainView(){super();}
      
      private function initView() : void{}
      
      public function flushData() : void{}
      
      private function flushEXP(param1:int) : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function __changeHandler(param1:Event) : void{}
      
      private function __blessFunc(param1:MouseEvent) : void{}
      
      private function __blessHarderFunc(param1:MouseEvent) : void{}
      
      private function __framResponse(param1:FrameEvent) : void{}
      
      private function getNeedCount() : int{return 0;}
      
      private function hideRightAllView() : void{}
      
      public function show() : void{}
      
      private function __frameEventHandler(param1:FrameEvent) : void{}
      
      private function __soundPlay(param1:MouseEvent) : void{}
      
      override public function dispose() : void{}
   }
}
