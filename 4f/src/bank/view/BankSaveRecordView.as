package bank.view
{
   import bank.BankManager;
   import bank.data.BankRecordInfo;
   import bank.data.GameBankEvent;
   import bank.view.mornui.bank.BankSaveRecordItemUI;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import road7th.data.DictionaryData;
   
   public class BankSaveRecordView extends BankSaveRecordItemUI
   {
       
      
      private var lineBoolean:Boolean;
      
      private var _btnSprite:Sprite;
      
      private var _info:BankRecordInfo;
      
      private var _index:int;
      
      public function BankSaveRecordView(param1:int){super();}
      
      public function setInfo(param1:BankRecordInfo) : void{}
      
      private function getTime(param1:Date) : String{return null;}
      
      private function changeView(param1:MouseEvent) : void{}
      
      override public function dispose() : void{}
   }
}
