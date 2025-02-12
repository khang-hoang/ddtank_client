package flowerGiving
{
   import com.pickgliss.events.UIModuleEvent;
   import com.pickgliss.loader.UIModuleLoader;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import ddt.manager.SoundManager;
   import ddt.view.UIModuleSmallLoading;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flowerGiving.components.FlowerFallMc;
   import flowerGiving.components.FlowerSendFrameNameInput;
   import flowerGiving.events.FlowerGiveEvent;
   import flowerGiving.views.FlowerGivingFrame;
   import flowerGiving.views.FlowerMainView;
   import flowerGiving.views.FlowerSendFrame;
   import flowerGiving.views.FlowerSendRecordFrame;
   import wonderfulActivity.data.GiftBagInfo;
   
   public class FlowerGivingController extends EventDispatcher
   {
      
      private static var _instance:FlowerGivingController;
       
      
      private var _frame:FlowerGivingFrame;
      
      private var flowerMc:FlowerFallMc;
      
      private var delayTimer:Timer;
      
      private var _manager:FlowerGivingManager;
      
      public function FlowerGivingController()
      {
         FlowerMainView;
         FlowerSendFrame;
         FlowerSendRecordFrame;
         FlowerSendFrameNameInput;
         _manager = FlowerGivingManager.instance;
         super(null);
      }
      
      public static function get instance() : FlowerGivingController
      {
         if(!_instance)
         {
            _instance = new FlowerGivingController();
         }
         return _instance;
      }
      
      public function onShow() : void
      {
         SoundManager.instance.playButtonSound();
         if(!_frame)
         {
            UIModuleSmallLoading.Instance.progress = 0;
            UIModuleSmallLoading.Instance.show();
            UIModuleSmallLoading.Instance.addEventListener("close",onSmallLoadingClose);
            UIModuleLoader.Instance.addEventListener("uiModuleComplete",createFlowerGivingFrame);
            UIModuleLoader.Instance.addEventListener("uiMoudleProgress",onUIProgress);
            UIModuleLoader.Instance.addUIModuleImp("flowerGiving");
         }
         else
         {
            _frame = ComponentFactory.Instance.creatComponentByStylename("flowerGiving.flowerGivingFrame");
            LayerManager.Instance.addToLayer(_frame,3,true,1);
         }
      }
      
      protected function __flowerMcComplete(param1:Event) : void
      {
         flowerMc.removeEventListener("complete",__flowerMcComplete);
         flowerMc.dispose();
         flowerMc = null;
      }
      
      protected function onDelayTimer(param1:TimerEvent) : void
      {
         delayTimer.stop();
         delayTimer.removeEventListener("timer",onDelayTimer);
         delayTimer = null;
         if(flowerMc)
         {
            flowerMc.isOver = true;
         }
      }
      
      public function getDataByRewardMark(param1:int) : Array
      {
         var _loc2_:Array = [];
         var _loc5_:int = 0;
         var _loc4_:* = _manager.xmlData.giftbagArray;
         for each(var _loc3_ in _manager.xmlData.giftbagArray)
         {
            if(_loc3_.rewardMark == param1)
            {
               _loc2_.push(_loc3_);
            }
         }
         _loc2_.sortOn("giftbagOrder",16);
         return _loc2_;
      }
      
      protected function onSmallLoadingClose(param1:Event) : void
      {
         UIModuleSmallLoading.Instance.hide();
         UIModuleSmallLoading.Instance.removeEventListener("close",onSmallLoadingClose);
         UIModuleLoader.Instance.removeEventListener("uiModuleComplete",createFlowerGivingFrame);
         UIModuleLoader.Instance.removeEventListener("uiMoudleProgress",onUIProgress);
      }
      
      protected function onUIProgress(param1:UIModuleEvent) : void
      {
         if(param1.module == "flowerGiving")
         {
            UIModuleSmallLoading.Instance.progress = param1.loader.progress * 100;
         }
      }
      
      public function setup() : void
      {
         var _loc1_:FlowerGivingManager = FlowerGivingManager.instance;
         if(!_loc1_.hasEventListener("fg_show"))
         {
            _loc1_.addEventListener("fg_show",onSetup);
         }
         _loc1_.addEventListener("fg_checkopen",onFlowerEventHandler);
         _loc1_.addEventListener("fg_flower_fall",onFlowerEventHandler);
      }
      
      protected function onFlowerEventHandler(param1:FlowerGiveEvent) : void
      {
         var _loc2_:* = param1.type;
         if("fg_checkopen" !== _loc2_)
         {
            if("fg_flower_fall" === _loc2_)
            {
               onFlowerFall();
            }
         }
      }
      
      private function onFlowerFall() : void
      {
         if(!flowerMc)
         {
            flowerMc = new FlowerFallMc();
            flowerMc.addEventListener("complete",__flowerMcComplete);
            LayerManager.Instance.addToLayer(flowerMc,2,false,0,false);
         }
         if(delayTimer)
         {
            delayTimer.stop();
            delayTimer.removeEventListener("timer",onDelayTimer);
            delayTimer = null;
         }
         delayTimer = new Timer(8000,1);
         delayTimer.addEventListener("timer",onDelayTimer);
         delayTimer.start();
      }
      
      private function onSetup(param1:FlowerGiveEvent) : void
      {
         onShow();
      }
      
      protected function createFlowerGivingFrame(param1:UIModuleEvent) : void
      {
         if(param1.module != "flowerGiving")
         {
            return;
         }
         UIModuleSmallLoading.Instance.hide();
         UIModuleSmallLoading.Instance.removeEventListener("close",onSmallLoadingClose);
         UIModuleLoader.Instance.removeEventListener("uiModuleComplete",createFlowerGivingFrame);
         UIModuleLoader.Instance.removeEventListener("uiMoudleProgress",onUIProgress);
         _frame = ComponentFactory.Instance.creatComponentByStylename("flowerGiving.flowerGivingFrame");
         LayerManager.Instance.addToLayer(_frame,3,true,1);
      }
   }
}
