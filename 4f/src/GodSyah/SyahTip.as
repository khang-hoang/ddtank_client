package GodSyah
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.LanguageMgr;
   
   public class SyahTip extends Component
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _tipName:FilterFrameText;
      
      private var _line1:ScaleBitmapImage;
      
      private var _line2:ScaleBitmapImage;
      
      private var _hp:FilterFrameText;
      
      private var _hpValue:FilterFrameText;
      
      private var _armor:FilterFrameText;
      
      private var _armorValue:FilterFrameText;
      
      private var _damage:FilterFrameText;
      
      private var _damageValue:FilterFrameText;
      
      private var _attack:FilterFrameText;
      
      private var _attackValue:FilterFrameText;
      
      private var _defense:FilterFrameText;
      
      private var _defenseValue:FilterFrameText;
      
      private var _agility:FilterFrameText;
      
      private var _agilityValue:FilterFrameText;
      
      private var _lucky:FilterFrameText;
      
      private var _luckyValue:FilterFrameText;
      
      private var _valid:FilterFrameText;
      
      private var _lessValid:FilterFrameText;
      
      private var _itemPlace:int;
      
      private var _mode:SyahMode;
      
      private var _powerVec:Vector.<FilterFrameText>;
      
      private const SYAHVIEW:String = "syahview";
      
      private const BAGANDOTHERS:String = "bagandothers";
      
      public function SyahTip(){super();}
      
      override protected function init() : void{}
      
      override protected function addChildren() : void{}
      
      public function setTipInfo(param1:ItemTemplateInfo) : void{}
      
      public function setBGWidth(param1:int = 0) : void{}
      
      private function _buildUI() : void{}
      
      private function _buildTipInfo(param1:String) : void{}
      
      private function _showAllDetails() : void{}
      
      override public function dispose() : void{}
   }
}
