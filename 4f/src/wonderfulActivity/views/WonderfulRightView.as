package wonderfulActivity.views
{
   import RechargeRank.views.RechargeRankView;
   import activeEvents.data.ActiveEventsInfo;
   import carnivalActivity.view.CarnivalActivityView;
   import carnivalActivity.view.UsePropsView;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import consumeRank.views.ConsumeRankView;
   import dayActivity.ActivityTypeData;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import wonderfulActivity.WonderfulActivityManager;
   import wonderfulActivity.items.AccumulativePayView;
   import wonderfulActivity.items.DaySupplyAwardItem;
   import wonderfulActivity.items.FarmView;
   import wonderfulActivity.items.FighterRutrunView;
   import wonderfulActivity.items.HeroView;
   import wonderfulActivity.items.JoinIsPowerView;
   import wonderfulActivity.items.LimitActivityView;
   import wonderfulActivity.items.LuckStoneView;
   import wonderfulActivity.items.NewGameBenifitView;
   import wonderfulActivity.items.RechargeReturnView;
   import wonderfulActivity.items.StrengthDarenView;
   import wonderfulActivity.items.WasteRecycleItem;
   import wonderfulActivity.newActivity.AnnouncementAct.AnnouncementActView;
   import wonderfulActivity.newActivity.ExchangeAct.ExchangeActView;
   import wonderfulActivity.newActivity.GetRewardAct.GetRewardActView;
   import wonderfulActivity.newActivity.returnActivity.ReturnActivityView;
   
   public class WonderfulRightView extends Sprite implements Disposeable
   {
       
      
      private var _view:IRightView;
      
      private var _tittle:Bitmap;
      
      private var _currentInfo:ActiveEventsInfo;
      
      public function WonderfulRightView(){super();}
      
      public function setState(param1:int, param2:int) : void{}
      
      public function updateView(param1:String) : void{}
      
      public function dispose() : void{}
   }
}
