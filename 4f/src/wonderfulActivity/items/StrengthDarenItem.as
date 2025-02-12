package wonderfulActivity.items
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.EquipType;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import wonderfulActivity.data.GiftBagInfo;
   import wonderfulActivity.data.GiftCurInfo;
   import wonderfulActivity.data.GiftRewardInfo;
   import wonderfulActivity.data.SendGiftInfo;
   
   public class StrengthDarenItem extends Sprite implements Disposeable
   {
       
      
      private var _back:MovieClip;
      
      private var _icon:Bitmap;
      
      private var _nameTxt:FilterFrameText;
      
      private var _goodContent:Sprite;
      
      private var _btn:SimpleBitmapButton;
      
      private var _data:GiftBagInfo;
      
      private var _giftcurInfo:GiftCurInfo;
      
      private var _strengthGrade:int;
      
      private var _statusArr:Array;
      
      private var _activityId:String;
      
      public function StrengthDarenItem(param1:int, param2:String, param3:GiftBagInfo, param4:GiftCurInfo, param5:Array){super();}
      
      private function initView(param1:int = 1) : void{}
      
      private function checkBtnState() : Boolean{return false;}
      
      private function btnHandler(param1:MouseEvent) : void{}
      
      private function initGoods() : void{}
      
      private function createBagCell(param1:int, param2:GiftRewardInfo) : BagCell{return null;}
      
      public function dispose() : void{}
   }
}
