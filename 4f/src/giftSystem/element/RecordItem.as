package giftSystem.element
{
   import bagAndInfo.cell.CellFactory;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MovieImage;
   import com.pickgliss.ui.image.TiledImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.RecordItemInfo;
   import ddt.data.goods.ShopItemInfo;
   import ddt.data.player.PlayerInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import giftSystem.GiftManager;
   import shop.view.ShopItemCell;
   
   public class RecordItem extends Sprite implements Disposeable
   {
      
      private static var THISHEIGHT:int = 52;
      
      public static const RECEIVED:int = 1;
      
      public static const SENDED:int = 0;
       
      
      private var _playerInfo:PlayerInfo;
      
      private var _info:RecordItemInfo;
      
      private var _headTxt:FilterFrameText;
      
      private var _giftNameTxt:FilterFrameText;
      
      private var _giftCountTxt:FilterFrameText;
      
      private var _playerName:FilterFrameText;
      
      private var _itemCell:ShopItemCell;
      
      private var _clickSp:Sprite;
      
      private var _recordItemBg:MovieImage;
      
      private var _line1:TiledImage;
      
      private var _nameAction:Boolean;
      
      private var _index:int;
      
      private var _receiedIcon:Bitmap;
      
      private var _sendIcon:Bitmap;
      
      private var _showed:Boolean = false;
      
      public function RecordItem(){super();}
      
      public function setup(param1:PlayerInfo) : void{}
      
      private function initView() : void{}
      
      public function setItemInfoType(param1:RecordItemInfo, param2:int) : void{}
      
      private function upReceivedItemView() : void{}
      
      private function upSendedItemView() : void{}
      
      private function upPos() : void{}
      
      private function __clickHandler(param1:MouseEvent) : void{}
      
      override public function get height() : Number{return 0;}
      
      public function dispose() : void{}
   }
}
