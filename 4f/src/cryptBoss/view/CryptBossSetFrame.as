package cryptBoss.view
{
   import bagAndInfo.cell.BaseCell;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.events.ListItemEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ComboBox;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.container.SimpleTileList;
   import com.pickgliss.ui.controls.list.VectorListModel;
   import cryptBoss.CryptBossControl;
   import cryptBoss.data.CryptBossItemInfo;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.CheckWeaponManager;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class CryptBossSetFrame extends Frame
   {
       
      
      private var _data:CryptBossItemInfo;
      
      private var _bossIcon:Bitmap;
      
      private var _itemBg:Bitmap;
      
      private var _levelBg:Bitmap;
      
      private var _fightBtn:SimpleBitmapButton;
      
      private var _levelComboBox:ComboBox;
      
      private var _levelArr:Array;
      
      private var _cellVec:Vector.<BaseCell>;
      
      private var _list:SimpleTileList;
      
      private var _scrollPanel:ScrollPanel;
      
      private var _level:int;
      
      private var _clickTime:Number = 0;
      
      public function CryptBossSetFrame(param1:CryptBossItemInfo){super();}
      
      private function initView() : void{}
      
      private function updateItems() : void{}
      
      private function updateLevelComboBox() : void{}
      
      private function __itemClick(param1:ListItemEvent) : void{}
      
      private function initEvent() : void{}
      
      protected function __fightHandler(param1:MouseEvent) : void{}
      
      private function __buttonClick(param1:MouseEvent) : void{}
      
      protected function __responseHandler(param1:FrameEvent) : void{}
      
      private function removeEvent() : void{}
      
      override public function dispose() : void{}
   }
}
