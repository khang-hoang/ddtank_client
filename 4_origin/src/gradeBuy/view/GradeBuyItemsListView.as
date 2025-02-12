package gradeBuy.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.ShowTipManager;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.events.CEvent;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.TimeManager;
   import ddt.utils.HelperHelpBtnCreate;
   import ddt.utils.Helpers;
   import gradeBuy.GradeBuyManager;
   import gradeBuy.ICountDown;
   
   public class GradeBuyItemsListView extends Frame implements ICountDown
   {
       
      
      private var _itemList:Vector.<GradeBuyItem>;
      
      private var _remainTimeDetailTxt:FilterFrameText;
      
      private var _remainTimeTxt:FilterFrameText;
      
      private var _info:ItemTemplateInfo;
      
      private var _data:Object;
      
      private var _detailString:String;
      
      private var _helpBtn:SimpleBitmapButton;
      
      private var _helpBtnHelper:HelperHelpBtnCreate;
      
      public function GradeBuyItemsListView()
      {
         super();
         ShowTipManager.Instance.tempChangeTipContainer();
      }
      
      override protected function init() : void
      {
         var _loc2_:int = 0;
         var _loc1_:* = null;
         super.init();
         escEnable = true;
         _itemList = new Vector.<GradeBuyItem>();
         _loc2_ = 0;
         while(_loc2_ < 3)
         {
            _loc1_ = new GradeBuyItem(_loc2_);
            _loc1_.x = 24 + _loc2_ * 216;
            _loc1_.y = 55;
            addToContent(_loc1_);
            _itemList.push(_loc1_);
            _loc2_++;
         }
         _detailString = LanguageMgr.GetTranslation("ddt.shop.gradeBuy.detail");
         _remainTimeDetailTxt = ComponentFactory.Instance.creat("gradeBuy.ItemView.detailTxt");
         _remainTimeDetailTxt.text = _detailString;
         addToContent(_remainTimeDetailTxt);
         _remainTimeTxt = ComponentFactory.Instance.creat("gradeBuy.ItemView.timeRemainTxt");
         _remainTimeTxt.text = "00:00:00";
         addToContent(_remainTimeTxt);
         _helpBtnHelper = new HelperHelpBtnCreate();
         _helpBtnHelper.create(this,"ast.gb.help",null,"gradeBuy.helpBtn.pt",LanguageMgr.GetTranslation("tank.data.gradeBuy.box.help"));
         addEventListener("response",_response);
         addEventListener("gb_buy",onBuyClick);
      }
      
      protected function onBuyClick(param1:CEvent) : void
      {
         ObjectUtils.disposeObject(this);
         GradeBuyManager.getInstance().requireBuy(param1.data[0],param1.data[1]);
      }
      
      private function _response(param1:FrameEvent) : void
      {
         if(param1.responseCode == 0 || param1.responseCode == 1)
         {
            ObjectUtils.disposeObject(this);
         }
      }
      
      public function setData(param1:ItemTemplateInfo, param2:Object) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         _info = param1;
         _data = param2;
         titleText = _info.Name;
         _loc4_ = 0;
         while(_loc4_ < 3)
         {
            _loc3_ = ItemManager.Instance.getTemplateById(int(param1["Property" + (_loc4_ + 2).toString()]));
            _itemList[_loc4_].update(_info,_loc3_,param2["id" + _loc4_.toString()] != 0);
            _loc4_++;
         }
         GradeBuyManager.getInstance().register(this.name,this);
      }
      
      public function update() : void
      {
         if(_remainTimeTxt == null)
         {
            return;
         }
         var _loc1_:Number = _data["date"];
         var _loc2_:Number = _loc1_ - TimeManager.Instance.Now().time;
         if(_loc2_ <= 0)
         {
            _remainTimeTxt.text = "00:00:00";
            GradeBuyManager.getInstance().unRegister(this.name);
         }
         else
         {
            _remainTimeTxt.text = Helpers.getTimeString(_loc2_);
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:int = 0;
         GradeBuyManager.getInstance().stopTimer();
         ShowTipManager.Instance.setup();
         super.dispose();
         removeEventListener("response",_response);
         GradeBuyManager.getInstance().unRegister(this.name);
         GradeBuyManager.getInstance().viewClosed();
         if(_itemList)
         {
            _loc1_ = 0;
            while(_loc1_ < 3)
            {
               ObjectUtils.disposeObject(_itemList[_loc1_]);
               _itemList[_loc1_] = null;
               _loc1_++;
            }
            _itemList.length = 0;
            _itemList = null;
            if(_helpBtn)
            {
               ObjectUtils.disposeObject(_helpBtn);
               _helpBtn = null;
            }
         }
         if(_helpBtnHelper)
         {
            _helpBtnHelper.dispose();
            _helpBtnHelper = null;
         }
         ObjectUtils.disposeAllChildren(this);
         _remainTimeTxt = null;
         _remainTimeDetailTxt = null;
      }
   }
}
