package gemstone.views
{
   import bagAndInfo.cell.PersonalInfoCell;
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.ShopManager;
   import ddt.manager.SocketManager;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class GemstoneObtainView extends Frame
   {
       
      
      private var _buyBtn:SimpleBitmapButton;
      
      private var _pic:Bitmap;
      
      private var _figGetTxt:FilterFrameText;
      
      private var _shopTxt:FilterFrameText;
      
      private var _othersTxt:FilterFrameText;
      
      private var _inputTxt1:FilterFrameText;
      
      private var _inputTxt2:FilterFrameText;
      
      private var _killBoss:FilterFrameText;
      
      private var _effect:FilterFrameText;
      
      private var _road:FilterFrameText;
      
      private var _effDescri:FilterFrameText;
      
      private var _bg:Bitmap;
      
      private var _numBg1:Bitmap;
      
      private var _numBg2:Bitmap;
      
      private var _line:Bitmap;
      
      private var price:int;
      
      private var icon:Bitmap;
      
      private var item:PersonalInfoCell;
      
      private var _goodsNumTxt:FilterFrameText;
      
      private var _priceTxt:FilterFrameText;
      
      public function GemstoneObtainView(){super();}
      
      private function initView() : void{}
      
      protected function inputChangeHander(param1:Event) : void{}
      
      protected function saleClickHander(param1:MouseEvent) : void{}
      
      override public function dispose() : void{}
   }
}
