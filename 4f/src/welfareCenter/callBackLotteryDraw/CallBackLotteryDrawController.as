package welfareCenter.callBackLotteryDraw
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.text.FilterFrameText;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import welfareCenter.callBackLotteryDraw.view.CallBackLotteryDrawFrame;
   import welfareCenter.callBackLotteryDraw.view.FilterFrameTextMiddleLine;
   import welfareCenter.callBackLotteryDraw.view.LuckeyLotteryDrawFrame;
   
   public class CallBackLotteryDrawController extends EventDispatcher
   {
      
      private static var _instance:CallBackLotteryDrawController;
       
      
      private var _frame:Frame;
      
      public function CallBackLotteryDrawController(param1:IEventDispatcher = null){super(null);}
      
      public static function get instance() : CallBackLotteryDrawController{return null;}
      
      public function setup() : void{}
      
      protected function onOpenView(param1:Event) : void{}
      
      private function onZeroFresh(param1:Event) : void{}
      
      public function getCardShowFont(param1:Object, param2:String) : Sprite{return null;}
      
      public function disposeFrame() : void{}
   }
}
