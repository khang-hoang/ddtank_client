package battleGroud.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.cell.IListCell;
   import com.pickgliss.ui.controls.list.List;
   import com.pickgliss.ui.core.Disposeable;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class BattleGroundScrollPanelCell extends Sprite implements Disposeable, IListCell
   {
       
      
      private var _data:Object;
      
      private var renshenHelpContent:Sprite;
      
      public function BattleGroundScrollPanelCell()
      {
         super();
         mouseEnabled = false;
         renshenHelpContent = ComponentFactory.Instance.creat("battle.descriptMc");
         addChild(renshenHelpContent);
      }
      
      public function dispose() : void
      {
      }
      
      public function getCellValue() : *
      {
         return {};
      }
      
      public function setCellValue(param1:*) : void
      {
      }
      
      public function setListCellStatus(param1:List, param2:Boolean, param3:int) : void
      {
         addChild(renshenHelpContent);
      }
      
      public function asDisplayObject() : DisplayObject
      {
         return this;
      }
   }
}
