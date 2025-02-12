package rank.view
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.container.HBox;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.EquipType;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import rank.RankManager;
   import rank.data.RankInfo;
   
   public class RankRewardView extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var vbox:VBox;
      
      private var _checkBtn:BaseButton;
      
      private var type:int;
      
      private var _frame:RankInfoFrame;
      
      public function RankRewardView(){super();}
      
      private function createUI() : void{}
      
      private function checkBtnHandler(param1:MouseEvent) : void{}
      
      public function setData() : void{}
      
      public function dispose() : void{}
   }
}
