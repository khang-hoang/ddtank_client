package carnivalActivity.view
{
   import carnivalActivity.CarnivalActivityControl;
   import com.pickgliss.ui.ComponentFactory;
   import ddt.manager.LanguageMgr;
   import ddt.utils.HelperDataModuleLoad;
   import homeTemple.HomeTempleController;
   import wonderfulActivity.WonderfulActivityManager;
   import wonderfulActivity.data.GiftBagInfo;
   import wonderfulActivity.data.PlayerCurInfo;
   
   public class GodTempleItem extends CarnivalActivityItem
   {
       
      
      private var _needTempleLevel:int;
      
      private var _needTempleStar:int;
      
      private var _reallyTempleGrade:int;
      
      public function GodTempleItem(param1:int, param2:GiftBagInfo, param3:int){super(null,null,null);}
      
      override protected function initItem() : void{}
      
      override public function updateView() : void{}
   }
}
