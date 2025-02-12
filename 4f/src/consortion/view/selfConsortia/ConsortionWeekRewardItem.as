package consortion.view.selfConsortia
{
   import bagAndInfo.cell.BaseCell;
   import bagAndInfo.cell.CellFactory;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.controls.cell.IListCell;
   import com.pickgliss.ui.controls.list.List;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import consortion.ConsortionModelManager;
   import consortion.data.ConsortiaWeekRewardPlayerVo;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class ConsortionWeekRewardItem extends Sprite implements Disposeable, IListCell
   {
       
      
      private var rankName:Array;
      
      private var _rankText:FilterFrameText;
      
      private var _weekRichesText:FilterFrameText;
      
      private var _nameText:FilterFrameText;
      
      private var _playerInfo:ConsortiaWeekRewardPlayerVo;
      
      private var _itemCell:BaseCell;
      
      private var _bg:Bitmap;
      
      public function ConsortionWeekRewardItem(){super();}
      
      private function init() : void{}
      
      public function setCellValue(param1:*) : void{}
      
      public function setListCellStatus(param1:List, param2:Boolean, param3:int) : void{}
      
      private function createItemCell() : BaseCell{return null;}
      
      public function getCellValue() : *{return null;}
      
      public function asDisplayObject() : DisplayObject{return null;}
      
      public function dispose() : void{}
   }
}
