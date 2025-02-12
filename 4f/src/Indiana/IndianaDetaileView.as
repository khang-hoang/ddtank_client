package Indiana
{
   import Indiana.analyzer.IndianaGoodsItemInfo;
   import Indiana.analyzer.IndianaShopItemInfo;
   import Indiana.item.AttributeItem;
   import Indiana.item.IndianaSkillItem;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PetSkillManager;
   import ddt.utils.PositionUtils;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import horse.HorseControl;
   import pet.data.PetSkillTemplateInfo;
   
   public class IndianaDetaileView extends Sprite implements Disposeable
   {
       
      
      private var _itemName:FilterFrameText;
      
      private var _itemNameValue:AttributeItem;
      
      private var _dis:FilterFrameText;
      
      private var _disValue:AttributeItem;
      
      private var _attribute:FilterFrameText;
      
      private var _info:IndianaShopItemInfo;
      
      private var _itemInfo:IndianaGoodsItemInfo;
      
      private var _vbox:VBox;
      
      private var _scoller:ScrollPanel;
      
      private var _contain:Sprite;
      
      private var _petskillContain:Sprite;
      
      private var _validityTxt:FilterFrameText;
      
      private var _validityValue:AttributeItem;
      
      private var _bangState:FilterFrameText;
      
      private var _bangvalu:AttributeItem;
      
      private var _attributeX:int;
      
      public function IndianaDetaileView(){super();}
      
      private function initView() : void{}
      
      public function setInfo(param1:IndianaShopItemInfo) : void{}
      
      private function clearContain() : void{}
      
      private function setAttribute(param1:ItemTemplateInfo) : void{}
      
      private function setHorse() : void{}
      
      private function setPetSkill() : void{}
      
      private function addBottomItem(param1:DisplayObject) : void{}
      
      private function getType(param1:int) : String{return null;}
      
      public function dispose() : void{}
   }
}
