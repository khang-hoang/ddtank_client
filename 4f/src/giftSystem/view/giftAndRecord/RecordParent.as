package giftSystem.view.giftAndRecord
{
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import ddt.data.RecordInfo;
   import ddt.data.player.PlayerInfo;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import giftSystem.element.RecordItem;
   
   public class RecordParent extends Sprite implements Disposeable
   {
       
      
      private var _playerInfo:PlayerInfo;
      
      private var _canClick:Boolean = false;
      
      private var _noGift:Bitmap;
      
      private var _container:VBox;
      
      private var _panel:ScrollPanel;
      
      private var _itemArr:Vector.<RecordItem>;
      
      public function RecordParent(){super();}
      
      private function initView() : void{}
      
      public function set playerInfo(param1:PlayerInfo) : void{}
      
      public function setList(param1:RecordInfo, param2:int) : void{}
      
      private function setReceived(param1:RecordInfo) : void{}
      
      private function setSended(param1:RecordInfo) : void{}
      
      private function clear() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
