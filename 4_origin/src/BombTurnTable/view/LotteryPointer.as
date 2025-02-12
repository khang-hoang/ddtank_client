package BombTurnTable.view
{
   import BombTurnTable.event.TurnTableEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class LotteryPointer extends Sprite implements Disposeable
   {
       
      
      private var _curType:int;
      
      private var _bg:Bitmap;
      
      private var _pointer:Bitmap;
      
      private var _pointerBorder:Bitmap;
      
      private var _lotteryBtn:BaseButton;
      
      private var _continuousBtn:BaseButton;
      
      private var _stopBtn:BaseButton;
      
      private var _curStatus:int;
      
      private var _clickNum:Number = 0;
      
      public function LotteryPointer(param1:int, param2:int)
      {
         super();
         _curType = param1;
         _curStatus = param2;
         initView();
      }
      
      private function initView() : void
      {
         switch(int(_curType))
         {
            case 0:
               updatePointer(1);
               break;
            case 1:
               updatePointer(1);
               updatePointerBorder();
               break;
            case 2:
            case 3:
               updatePointer(2);
               updatePointerBorder();
         }
         _bg = ComponentFactory.Instance.creatBitmap("asset.bombTurnTable.pointer.bg");
         if(_bg)
         {
            addChild(_bg);
         }
         initLotteryBtn();
      }
      
      private function initLotteryBtn() : void
      {
         _lotteryBtn = ComponentFactory.Instance.creatComponentByStylename("ddt.bombTurnTable.lotteryIconBtn");
         _lotteryBtn.addEventListener("click",clickLottery_Handler);
         addChild(_lotteryBtn);
         _continuousBtn = ComponentFactory.Instance.creatComponentByStylename("ddt.bombTurnTable.lotteryIconBtn.continuous");
         _continuousBtn.addEventListener("click",continuousLottery_Handler);
         addChild(_continuousBtn);
         _stopBtn = ComponentFactory.Instance.creatComponentByStylename("ddt.bombTurnTable.lotteryIconBtn.stop");
         _stopBtn.addEventListener("click",stopLottery_Handler);
         addChild(_stopBtn);
         initBtnStatus();
      }
      
      private function initBtnStatus() : void
      {
         var _loc1_:* = _curStatus == 2;
         _continuousBtn.visible = !_loc1_;
         _stopBtn.visible = _loc1_;
         _lotteryBtn.enable = !_loc1_;
      }
      
      private function clickLottery_Handler(param1:MouseEvent) : void
      {
         var _loc2_:Number = new Date().time;
         if(_loc2_ - _clickNum < 2000)
         {
            MessageTipManager.getInstance().show(LanguageMgr.GetTranslation("ddt.storeIIStrength.startStrengthClickTimerMsg"));
            return;
         }
         _clickNum = _loc2_;
         this.dispatchEvent(new TurnTableEvent("ClickLottery",1));
      }
      
      private function continuousLottery_Handler(param1:MouseEvent) : void
      {
         this.dispatchEvent(new TurnTableEvent("ClickLottery",2));
      }
      
      private function stopLottery_Handler(param1:MouseEvent) : void
      {
         this.dispatchEvent(new TurnTableEvent("ClickLottery",0));
      }
      
      public function updateBtnStatus(param1:Boolean) : void
      {
         _continuousBtn.visible = !param1;
         _stopBtn.visible = param1;
         _lotteryBtn.enable = !param1;
      }
      
      private function updatePointer(param1:int) : void
      {
         _pointer = ComponentFactory.Instance.creatBitmap("asset.bombTurnTable.pointer" + param1);
         addChild(_pointer);
      }
      
      private function updatePointerBorder() : void
      {
         _pointerBorder = ComponentFactory.Instance.creatBitmap("asset.bombTurnTable.pointer.border" + _curType);
         addChild(_pointerBorder);
      }
      
      private function removeEvents() : void
      {
         _lotteryBtn.removeEventListener("click",clickLottery_Handler);
         _continuousBtn.removeEventListener("click",continuousLottery_Handler);
         _stopBtn.removeEventListener("click",stopLottery_Handler);
      }
      
      public function dispose() : void
      {
         removeEvents();
         if(_bg)
         {
            ObjectUtils.disposeObject(_bg);
         }
         _bg = null;
         if(_pointerBorder)
         {
            ObjectUtils.disposeObject(_pointerBorder);
         }
         _pointerBorder = null;
         if(_pointer)
         {
            ObjectUtils.disposeObject(_pointer);
         }
         _pointer = null;
         if(_lotteryBtn)
         {
            ObjectUtils.disposeObject(_lotteryBtn);
         }
         _lotteryBtn = null;
         if(_continuousBtn)
         {
            ObjectUtils.disposeObject(_continuousBtn);
         }
         _continuousBtn = null;
         if(_stopBtn)
         {
            ObjectUtils.disposeObject(_stopBtn);
         }
         _stopBtn = null;
      }
   }
}
