package farm.view.compose
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.container.SimpleTileList;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.BagInfo;
   import ddt.events.BagEvent;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import farm.view.compose.item.FarmHouseItem;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class FarmHousePnl extends Sprite implements Disposeable
   {
      
      public static var CURRENT_PAGE:int = 1;
      
      public static const House_ITEM_NUM:uint = 10;
       
      
      private var _firstPage:BaseButton;
      
      private var _prePageBtn:BaseButton;
      
      private var _nextPageBtn:BaseButton;
      
      private var _PageBg:DisplayObject;
      
      private var _currentPageTxt:FilterFrameText;
      
      private var _endPageBtn:BaseButton;
      
      private var _listView:SimpleTileList;
      
      protected var _bagdata:BagInfo;
      
      protected var _cells:Vector.<FarmHouseItem>;
      
      private var _bgBottom:DisplayObject;
      
      private var _bgHouseItem:DisplayObject;
      
      private var _bgPageTxt:DisplayObject;
      
      private var _totalPage:int;
      
      private var _currentPage:int;
      
      public function FarmHousePnl(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function __updateGoods(param1:BagEvent) : void{}
      
      private function update() : void{}
      
      private function __pageBtnClick(param1:MouseEvent) : void{}
      
      private function clearitems() : void{}
      
      public function dispose() : void{}
   }
}
