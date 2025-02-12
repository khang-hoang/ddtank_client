package ddt.data.email
{
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import flash.utils.Dictionary;
   
   public class EmailInfo
   {
       
      
      public var ID:int;
      
      public var UserID:int;
      
      public var MailType:int;
      
      public var sendDate:Number;
      
      public var Content:String;
      
      public var Title:String;
      
      public var Sender:String;
      
      public var SenderID:int;
      
      public var ReceiverID:int;
      
      public var SendTime:String;
      
      public var Annexs:Dictionary;
      
      public var Annex1:InventoryItemInfo;
      
      public var Annex2:InventoryItemInfo;
      
      public var Annex3:InventoryItemInfo;
      
      public var Annex4:InventoryItemInfo;
      
      public var Annex5:InventoryItemInfo;
      
      public var Annex1ID:int;
      
      public var Annex2ID:int;
      
      public var Annex3ID:int;
      
      public var Annex4ID:int;
      
      public var Annex5ID:int;
      
      public var Gold:Number = 500;
      
      public var Money:Number = 600;
      
      public var BindMoney:Number = 0;
      
      public var Medal:int;
      
      public var ValidDate:int = 30;
      
      public var Type:int = 0;
      
      public var IsRead:Boolean = false;
      
      public function EmailInfo(){super();}
      
      public function getAnnexs() : Array{return null;}
      
      public function get canReply() : Boolean{return false;}
      
      public function getAnnexByIndex(param1:int) : *{return null;}
      
      public function hasAnnexs() : Boolean{return false;}
   }
}
