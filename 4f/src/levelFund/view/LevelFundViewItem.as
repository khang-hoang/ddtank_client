package levelFund.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import levelFund.LevelFundManager;
   
   public class LevelFundViewItem extends Sprite implements Disposeable
   {
       
      
      private var _itemBg:Bitmap;
      
      private var _itemLine:Bitmap;
      
      private var _moneyIcon:Bitmap;
      
      private var _levelTxt:FilterFrameText;
      
      private var _buyMultipleTxt:FilterFrameText;
      
      private var _getAwardBtn:TextButton;
      
      private var _info:Object;
      
      private var _index:int;
      
      public function LevelFundViewItem(param1:int = 0){super();}
      
      private function initView() : void{}
      
      public function updateView(param1:Object, param2:int) : void{}
      
      private function initEvent() : void{}
      
      private function __getAwardBtnClickHandler(param1:MouseEvent) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
