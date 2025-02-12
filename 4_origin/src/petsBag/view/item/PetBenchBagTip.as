package petsBag.view.item
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.tip.BaseTip;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import pet.data.PetInfo;
   
   public class PetBenchBagTip extends BaseTip
   {
       
      
      protected var _bg:ScaleBitmapImage;
      
      private var _splitImg:ScaleBitmapImage;
      
      private var _petName:FilterFrameText;
      
      protected var _attackTxt:FilterFrameText;
      
      protected var _defenceTxt:FilterFrameText;
      
      protected var _HPTxt:FilterFrameText;
      
      protected var _agilityTxt:FilterFrameText;
      
      protected var _luckTxt:FilterFrameText;
      
      public function PetBenchBagTip()
      {
         super();
      }
      
      override protected function init() : void
      {
         _bg = ComponentFactory.Instance.creatComponentByStylename("core.GoodsTipBg");
         _splitImg = ComponentFactory.Instance.creatComponentByStylename("petsBag.PetBenchBagTip.line");
         _petName = ComponentFactory.Instance.creatComponentByStylename("petsBag.PetBenchBagTip.petName");
         _attackTxt = ComponentFactory.Instance.creatComponentByStylename("petsBag.PetBenchBagTip.attackTxt");
         _defenceTxt = ComponentFactory.Instance.creatComponentByStylename("petsBag.PetBenchBagTip.defenceTxt");
         _HPTxt = ComponentFactory.Instance.creatComponentByStylename("petsBag.PetBenchBagTip.HPTxt");
         _agilityTxt = ComponentFactory.Instance.creatComponentByStylename("petsBag.PetBenchBagTip.agilityTxt");
         _luckTxt = ComponentFactory.Instance.creatComponentByStylename("petsBag.PetBenchBagTip.luckTxt");
         super.init();
         .super.tipbackgound = _bg;
      }
      
      override protected function addChildren() : void
      {
         super.addChildren();
         addChild(_petName);
         addChild(_splitImg);
         addChild(_attackTxt);
         addChild(_defenceTxt);
         addChild(_HPTxt);
         addChild(_agilityTxt);
         addChild(_luckTxt);
      }
      
      override public function set tipData(param1:Object) : void
      {
         var _loc2_:* = null;
         if(param1)
         {
            _tipData = param1;
            _loc2_ = param1 as PetInfo;
            _petName.text = _loc2_.Name + " Lv." + _loc2_.Level;
            _attackTxt.text = LanguageMgr.GetTranslation("attack") + "：" + _loc2_.Attack;
            _defenceTxt.text = LanguageMgr.GetTranslation("defence") + "：" + _loc2_.Defence;
            _HPTxt.text = LanguageMgr.GetTranslation("MaxHp") + "：" + _loc2_.Blood;
            _agilityTxt.text = LanguageMgr.GetTranslation("agility") + "：" + _loc2_.Agility;
            _luckTxt.text = LanguageMgr.GetTranslation("luck") + "：" + _loc2_.Luck;
            updateWH();
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         ObjectUtils.disposeObject(_petName);
         _petName = null;
         ObjectUtils.disposeObject(_splitImg);
         _splitImg = null;
         ObjectUtils.disposeObject(_attackTxt);
         _attackTxt = null;
         ObjectUtils.disposeObject(_defenceTxt);
         _defenceTxt = null;
         ObjectUtils.disposeObject(_HPTxt);
         _HPTxt = null;
         ObjectUtils.disposeObject(_agilityTxt);
         _agilityTxt = null;
         ObjectUtils.disposeObject(_luckTxt);
         _luckTxt = null;
      }
      
      private function updateWH() : void
      {
         width = 114;
         _bg.width = 114;
         height = 160;
         _bg.height = 160;
         if(_petName.textWidth + 20 > width)
         {
            width = _petName.textWidth + 20;
            _bg.width = _petName.textWidth + 20;
         }
      }
   }
}
