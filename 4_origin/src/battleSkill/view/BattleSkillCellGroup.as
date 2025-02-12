package battleSkill.view
{
   import battleSkill.BattleSkillManager;
   import battleSkill.BattleSkillOptionType;
   import battleSkill.event.BattleSkillEvent;
   import battleSkill.info.BattleSkillSkillInfo;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   import horse.HorseManager;
   import horse.data.HorseSkillVo;
   import room.RoomManager;
   import room.model.RoomInfo;
   
   public class BattleSkillCellGroup extends Sprite implements Disposeable
   {
       
      
      private var _updateBtn:BaseButton;
      
      private var _activateBtn:BaseButton;
      
      private var _fullLevelBtn:FilterFrameText;
      
      private var _disableTxt:FilterFrameText;
      
      private var _isDisable:Boolean = false;
      
      private var _skillCell:BattleSkillCell;
      
      private var _data:BattleSkillSkillInfo;
      
      private var _updateFrame:BattleSkillUpFrame = null;
      
      private var _lastUpClickTime:int = 0;
      
      public function BattleSkillCellGroup(param1:BattleSkillSkillInfo = null)
      {
         super();
         _data = param1;
         initSkillCell();
         if(_data == null)
         {
            return;
         }
         initView();
         initState();
         initEvent();
      }
      
      private function initSkillCell() : void
      {
         _skillCell = new BattleSkillCell(0,true,true);
         _skillCell.x = 5;
         addChild(_skillCell);
         _skillCell.info = _data;
      }
      
      private function initView() : void
      {
         _updateBtn = ComponentFactory.Instance.creatComponentByStylename("battleSkill.updateSmallBtn");
         _updateBtn.visible = false;
         addChild(_updateBtn);
         _activateBtn = ComponentFactory.Instance.creatComponentByStylename("battleSkill.activateSmallBtn");
         addChild(_activateBtn);
         _fullLevelBtn = ComponentFactory.Instance.creatComponentByStylename("battleSkill.fullLevelTxt");
         addChild(_fullLevelBtn);
         _disableTxt = ComponentFactory.Instance.creatComponentByStylename("battleSkill.fullLevelTxt");
         addChild(_disableTxt);
         _disableTxt.text = LanguageMgr.GetTranslation("battleskill.skillUse.disableTxt");
         _disableTxt.visible = false;
         _fullLevelBtn.text = LanguageMgr.GetTranslation("horse.skillFrame.fullTxt");
      }
      
      private function initState() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = null;
         var _loc1_:Boolean = isFilterByCurRoomType();
         if(_loc1_)
         {
            _disableTxt.visible = true;
            var _loc4_:* = false;
            _activateBtn.visible = _loc4_;
            _loc4_ = _loc4_;
            _fullLevelBtn.visible = _loc4_;
            _updateBtn.visible = _loc4_;
            _isDisable = true;
         }
         else
         {
            _isDisable = false;
            _loc2_ = BattleSkillManager.instance.isActivateBySkillID(_data.SkillID);
            _loc3_ = BattleSkillManager.instance.getNextlevelSkillInfo(_data.SkillID);
            _activateBtn.visible = !_loc2_;
            if(_loc2_)
            {
               _updateBtn.visible = true;
               _updateBtn.visible = _loc2_ && _loc3_ != null;
            }
            _fullLevelBtn.visible = _loc2_ && _loc3_ == null;
            _skillCell.filters = !_loc2_?ComponentFactory.Instance.creatFilters("grayFilter"):null;
         }
      }
      
      private function isFilterByCurRoomType() : Boolean
      {
         var _loc2_:* = null;
         var _loc1_:RoomInfo = RoomManager.Instance.current;
         if(_loc1_ && _loc1_.type == 123)
         {
            _loc2_ = HorseManager.instance.getHorseSkillInfoById(_data.SkillID);
            if(_loc2_ && _loc2_.GameType == 0)
            {
               return false;
            }
            return true;
         }
         return false;
      }
      
      public function updateSkillState(param1:BattleSkillSkillInfo) : void
      {
         this.info = param1;
      }
      
      private function updateClick_Handler(param1:MouseEvent) : void
      {
         if(getTimer() - _lastUpClickTime <= 1000)
         {
            return;
         }
         _lastUpClickTime = getTimer();
         playSound();
         openUpdateFrame();
         _updateFrame.show(info,BattleSkillOptionType.UPDATE);
      }
      
      private function activateClick_Handler(param1:MouseEvent) : void
      {
         if(getTimer() - _lastUpClickTime <= 1000)
         {
            return;
         }
         _lastUpClickTime = getTimer();
         playSound();
         openUpdateFrame();
         _updateFrame.show(info,BattleSkillOptionType.ACTIVATE);
      }
      
      private function openUpdateFrame() : void
      {
         _updateFrame = ComponentFactory.Instance.creatComponentByStylename("battleSkill.battleSkillUpView");
         LayerManager.Instance.addToLayer(_updateFrame,3,true,1);
      }
      
      private function cellClick_Handler(param1:MouseEvent) : void
      {
         if(_isDisable)
         {
            return;
         }
         this.dispatchEvent(new BattleSkillEvent(BattleSkillEvent.SKILLCELL_CLICK));
      }
      
      private function playSound() : void
      {
         SoundManager.instance.playButtonSound();
      }
      
      public function set info(param1:BattleSkillSkillInfo) : void
      {
         _data = param1;
         initState();
         if(_skillCell)
         {
            _skillCell.info = param1;
         }
      }
      
      public function get info() : BattleSkillSkillInfo
      {
         return _data;
      }
      
      private function initEvent() : void
      {
         _updateBtn.addEventListener("click",updateClick_Handler);
         _activateBtn.addEventListener("click",activateClick_Handler);
         _skillCell.addEventListener("click",cellClick_Handler);
      }
      
      private function removeEvent() : void
      {
         if(_updateBtn)
         {
            _updateBtn.removeEventListener("click",updateClick_Handler);
         }
         if(_activateBtn)
         {
            _activateBtn.removeEventListener("click",activateClick_Handler);
         }
         _skillCell.removeEventListener("click",cellClick_Handler);
      }
      
      public function dispose() : void
      {
         removeEvent();
         if(_updateBtn)
         {
            ObjectUtils.disposeObject(_updateBtn);
         }
         if(_activateBtn)
         {
            ObjectUtils.disposeObject(_activateBtn);
         }
         if(_fullLevelBtn)
         {
            ObjectUtils.disposeObject(_fullLevelBtn);
         }
         if(_skillCell)
         {
            ObjectUtils.disposeObject(_skillCell);
         }
         _updateFrame = null;
         _updateBtn = null;
         _activateBtn = null;
         _fullLevelBtn = null;
         _skillCell = null;
         _data = null;
      }
   }
}
