package farm.viewx
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.vo.AlertInfo;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.CheckMoneyUtils;
   import ddt.view.DoubleSelectedItem;
   import farm.FarmModelController;
   import farm.modelx.SuperPetFoodPriceInfo;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.events.Event;
   
   public class FarmBuyExpFrame extends BaseAlerFrame
   {
       
      
      private var _bg:Bitmap;
      
      private var _text:FilterFrameText;
      
      private var _currentMoney:int;
      
      private var _currentSuperPetFoodPriceInfo:SuperPetFoodPriceInfo;
      
      private var _back:MovieClip;
      
      private var _doubleSeleItem:DoubleSelectedItem;
      
      public function FarmBuyExpFrame(){super();}
      
      override protected function init() : void{}
      
      protected function __updateNum(param1:Event) : void{}
      
      protected function __onFrameEvent(param1:FrameEvent) : void{}
      
      protected function onCheckComplete() : void{}
      
      public function show() : void{}
      
      override public function dispose() : void{}
   }
}
