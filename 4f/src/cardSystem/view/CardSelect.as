package cardSystem.view
{
   import cardSystem.CardManager;
   import cardSystem.CardSocketEvent;
   import cardSystem.data.CardInfo;
   import cardSystem.data.SetsInfo;
   import cardSystem.view.cardCollect.CardSelectItem;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.utils.DisplayUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.view.chat.ChatBasePanel;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import road7th.data.DictionaryData;
   
   public class CardSelect extends ChatBasePanel implements Disposeable
   {
       
      
      private var _list:VBox;
      
      private var _bg:ScaleBitmapImage;
      
      private var _panel:ScrollPanel;
      
      private var _itemList:Vector.<CardSelectItem>;
      
      private var _cardinfo:Vector.<CardInfo>;
      
      private var _cardIdVec:Vector.<int>;
      
      private var _bagCard:Vector.<CardInfo>;
      
      private var _equipArr:Array;
      
      public function CardSelect(){super();}
      
      override protected function init() : void{}
      
      private function setList() : void{}
      
      private function __itemClick(param1:CardSocketEvent) : void{}
      
      private function getbagCard() : Vector.<CardInfo>{return null;}
      
      private function dealNeedEquip() : void{}
      
      private function moveAllCard() : void{}
      
      override protected function __hideThis(param1:MouseEvent) : void{}
      
      public function dispose() : void{}
   }
}
