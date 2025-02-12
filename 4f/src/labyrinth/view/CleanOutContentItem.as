package labyrinth.view
{
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.controls.cell.IListCell;
   import com.pickgliss.ui.controls.list.List;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import labyrinth.LabyrinthManager;
   import labyrinth.data.CleanOutInfo;
   
   public class CleanOutContentItem extends Sprite implements IListCell
   {
       
      
      private var _expNum:FilterFrameText;
      
      private var _floorNumContent:FilterFrameText;
      
      private var _info:CleanOutInfo;
      
      public function CleanOutContentItem(){super();}
      
      private function init() : void{}
      
      protected function __updateInfo(param1:Event) : void{}
      
      public function setListCellStatus(param1:List, param2:Boolean, param3:int) : void{}
      
      public function getCellValue() : *{return null;}
      
      public function setCellValue(param1:*) : void{}
      
      private function updateItem() : void{}
      
      public function asDisplayObject() : DisplayObject{return null;}
      
      public function dispose() : void{}
   }
}
