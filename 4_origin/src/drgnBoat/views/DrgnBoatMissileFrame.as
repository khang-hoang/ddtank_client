package drgnBoat.views
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import drgnBoat.DrgnBoatManager;
   import drgnBoat.data.DrgnBoatPlayerInfo;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   
   public class DrgnBoatMissileFrame extends Frame
   {
       
      
      private var _labelBg:Bitmap;
      
      private var _labelTxt:FilterFrameText;
      
      private var _listBg:Bitmap;
      
      private var _vbox:VBox;
      
      private var _submitBtn:TextButton;
      
      private var _list:Array;
      
      private var _playerList:Vector.<DrgnBoatPlayerInfo>;
      
      private var _threeBtnView:DrgnBoatThreeBtnView;
      
      public function DrgnBoatMissileFrame()
      {
         super();
         initView();
         initEvents();
      }
      
      private function initView() : void
      {
         escEnable = true;
         enterEnable = true;
         _labelBg = ComponentFactory.Instance.creat("drgnBoat.missile.labelBg");
         addToContent(_labelBg);
         _listBg = ComponentFactory.Instance.creat("drgnBoat.missile.listBg");
         addToContent(_listBg);
         titleText = LanguageMgr.GetTranslation("drgnBoat.select");
         _labelTxt = ComponentFactory.Instance.creatComponentByStylename("drgnBoat.missileFrame.labelTxt");
         _labelTxt.text = LanguageMgr.GetTranslation("drgnBoat.selectTarget");
         addToContent(_labelTxt);
         _vbox = ComponentFactory.Instance.creatComponentByStylename("drgnBoat.missileFrame.vbox");
         addToContent(_vbox);
         _submitBtn = ComponentFactory.Instance.creatComponentByStylename("ddtcore.quickEnter");
         PositionUtils.setPos(_submitBtn,"drgnBoat.missileFrame.btnPos");
         _submitBtn.text = LanguageMgr.GetTranslation("drgnBoat.sendMissile");
         addToContent(_submitBtn);
         setList();
      }
      
      private function setList() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = null;
         var _loc1_:* = null;
         _playerList = DrgnBoatManager.instance.playerList;
         _list = [];
         _loc3_ = 0;
         while(_loc3_ <= _playerList.length - 1)
         {
            _loc2_ = _playerList[_loc3_] as DrgnBoatPlayerInfo;
            if(!_loc2_.isSelf)
            {
               _loc1_ = new DrgnBoatNameCell(_loc3_);
               _loc1_.setData(_loc2_.name);
               _loc1_.addEventListener("click",__cellClick);
               _loc1_.buttonMode = true;
               _vbox.addChild(_loc1_);
               _list.push(_loc1_);
            }
            _loc3_++;
         }
      }
      
      private function initEvents() : void
      {
         addEventListener("response",_response);
         _submitBtn.addEventListener("click",__submitBtnClick);
      }
      
      protected function __cellClick(param1:MouseEvent) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = _list;
         for each(var _loc2_ in _list)
         {
            _loc2_.selected = false;
         }
         (param1.currentTarget as DrgnBoatNameCell).selected = true;
      }
      
      protected function __submitBtnClick(param1:MouseEvent) : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = _list;
         for each(var _loc2_ in _list)
         {
            if(_loc2_.selected == true)
            {
               _threeBtnView.targetId = _playerList[_loc2_.index].id;
               _threeBtnView.targetZone = _playerList[_loc2_.index].zoneId;
               _threeBtnView.useSkill();
            }
         }
         dispose();
      }
      
      public function setThreeBtnView(param1:DrgnBoatThreeBtnView) : void
      {
         _threeBtnView = param1;
      }
      
      protected function _response(param1:FrameEvent) : void
      {
         SoundManager.instance.play("008");
         if(param1.responseCode == 0 || param1.responseCode == 1)
         {
            ObjectUtils.disposeObject(this);
         }
      }
      
      private function removeEvents() : void
      {
         removeEventListener("response",_response);
         _submitBtn.removeEventListener("click",__submitBtnClick);
      }
      
      override public function dispose() : void
      {
         removeEvents();
         ObjectUtils.disposeObject(_labelBg);
         _labelBg = null;
         ObjectUtils.disposeObject(_labelTxt);
         _labelTxt = null;
         ObjectUtils.disposeObject(_listBg);
         _listBg = null;
         ObjectUtils.disposeObject(_vbox);
         _vbox = null;
         ObjectUtils.disposeObject(_submitBtn);
         _submitBtn = null;
         super.dispose();
      }
   }
}
