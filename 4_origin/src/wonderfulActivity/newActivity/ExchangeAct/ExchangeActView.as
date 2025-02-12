package wonderfulActivity.newActivity.ExchangeAct
{
   import baglocked.BaglockedManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import wonderfulActivity.WonderfulActivityManager;
   import wonderfulActivity.data.GmActivityInfo;
   import wonderfulActivity.data.SendGiftInfo;
   import wonderfulActivity.views.IRightView;
   
   public class ExchangeActView extends Sprite implements IRightView
   {
       
      
      private var _back:DisplayObject;
      
      private var _titleField:FilterFrameText;
      
      private var _buttonBack:DisplayObject;
      
      private var _exchangeButton:BaseButton;
      
      private var _container:Sprite;
      
      private var _actId:String;
      
      private var _activityInfo:GmActivityInfo;
      
      private var _goodsExchange:ExchangeGoodsView;
      
      public function ExchangeActView(param1:String)
      {
         super();
         _actId = param1;
      }
      
      public function init() : void
      {
         initView();
         addEvent();
         initData();
         initViewWithData();
      }
      
      private function initView() : void
      {
         _container = new Sprite();
         PositionUtils.setPos(_container,"wonderful.limitActivity.ContentPos");
         _back = ComponentFactory.Instance.creatComponentByStylename("ddtcalendar.ActivityStateBg");
         _container.addChild(_back);
         _titleField = ComponentFactory.Instance.creatComponentByStylename("ddtcalendar.ActivityStateTitleField");
         _container.addChild(_titleField);
         _buttonBack = ComponentFactory.Instance.creatComponentByStylename("ddtcalendar.ActivityState.GetButtonBackBg");
         _container.addChild(_buttonBack);
         _exchangeButton = ComponentFactory.Instance.creatComponentByStylename("ddtcalendar.ActivityState.exchangeButton");
         _container.addChild(_exchangeButton);
         _goodsExchange = new ExchangeGoodsView();
         PositionUtils.setPos(_goodsExchange,"wonderful.exchangeGoodsView");
         _container.addChild(_goodsExchange);
         addChild(_container);
      }
      
      private function initData() : void
      {
         _activityInfo = WonderfulActivityManager.Instance.activityData[_actId];
      }
      
      private function initViewWithData() : void
      {
         if(!_activityInfo)
         {
            return;
         }
         _titleField.text = _activityInfo.activityName;
         _goodsExchange.setData(_activityInfo);
      }
      
      public function setState(param1:int, param2:int) : void
      {
      }
      
      public function content() : Sprite
      {
         return this;
      }
      
      public function updateAwardState() : void
      {
         _goodsExchange.count = 0;
      }
      
      private function addEvent() : void
      {
         _exchangeButton.addEventListener("click",__exchange);
         _goodsExchange.addEventListener("ExchangeGoodsChange",__ExchangeGoodsChangeHandler);
      }
      
      private function __ExchangeGoodsChangeHandler(param1:ExchangeGoodsEvent) : void
      {
         if(param1.enable == false)
         {
            _exchangeButton.enable = false;
         }
         else
         {
            _exchangeButton.enable = true;
         }
      }
      
      private function __exchange(param1:MouseEvent) : void
      {
         SoundManager.instance.playButtonSound();
         if(PlayerManager.Instance.Self.bagLocked)
         {
            BaglockedManager.Instance.show();
            return;
         }
         var _loc4_:Vector.<SendGiftInfo> = new Vector.<SendGiftInfo>();
         var _loc2_:SendGiftInfo = new SendGiftInfo();
         _loc2_.activityId = _activityInfo.activityId;
         _loc2_.awardCount = _goodsExchange.count;
         var _loc3_:Array = [];
         _loc3_.push(_activityInfo.giftbagArray[_goodsExchange.selectedIndex].giftbagId);
         _loc2_.giftIdArr = _loc3_;
         _loc4_.push(_loc2_);
         SocketManager.Instance.out.sendWonderfulActivityGetReward(_loc4_);
      }
      
      private function removeEvent() : void
      {
         _exchangeButton.removeEventListener("click",__exchange);
         _goodsExchange.removeEventListener("ExchangeGoodsChange",__ExchangeGoodsChangeHandler);
      }
      
      public function dispose() : void
      {
         removeEvent();
         if(_back)
         {
            ObjectUtils.disposeObject(_back);
         }
         _back = null;
         if(_titleField)
         {
            ObjectUtils.disposeObject(_titleField);
         }
         _titleField = null;
         if(_buttonBack)
         {
            ObjectUtils.disposeObject(_buttonBack);
         }
         _buttonBack = null;
         if(_exchangeButton)
         {
            ObjectUtils.disposeObject(_exchangeButton);
         }
         _exchangeButton = null;
      }
   }
}
