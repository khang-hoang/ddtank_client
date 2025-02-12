package cardSystem.data
{
   import cardSystem.CardManager;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import road7th.data.DictionaryData;
   
   public class CardInfo extends EventDispatcher
   {
      
      public static const WEAPON_CARDS:int = 1;
      
      public static const MONSTER_CARDS:int = 2;
      
      public static const cardsType:Array = [LanguageMgr.GetTranslation("BrowseLeftMenuView.equipCard"),LanguageMgr.GetTranslation("BrowseLeftMenuView.freakCard")];
      
      public static const cardsMain:Array = [LanguageMgr.GetTranslation("ddt.cardSystem.CardsTipPanel.vice"),LanguageMgr.GetTranslation("ddt.cardSystem.CardsTipPanel.main")];
      
      public static const MAX_EQUIP_CARDS:int = 4;
       
      
      public var CardID:int;
      
      public var UserID:int;
      
      public var TemplateID:int;
      
      public var Place:int;
      
      public var Count:int;
      
      public var CardType:int;
      
      public var Attack:int;
      
      public var Defence:int;
      
      public var Agility:int;
      
      public var Luck:int;
      
      public var Guard:int;
      
      public var Damage:int;
      
      public var Level:int;
      
      public var CardGP:int;
      
      public var isFirstGet:Boolean = true;
      
      public function CardInfo(param1:IEventDispatcher = null){super(null);}
      
      public function get templateInfo() : ItemTemplateInfo{return null;}
      
      public function get realAttack() : int{return 0;}
      
      public function get realDefence() : int{return 0;}
      
      public function get realAgility() : int{return 0;}
      
      public function get realLuck() : int{return 0;}
      
      public function get realDamage() : int{return 0;}
      
      public function get realGuard() : int{return 0;}
   }
}
