package store.view.embed
{
   import bagAndInfo.cell.DragEffect;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.interfaces.IDragable;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   
   public class EmbedBackoutButton extends TextButton implements IDragable
   {
       
      
      private var _enabel:Boolean;
      
      private var _dragTarget:EmbedStoneCell;
      
      private var myColorMatrix_filter:ColorMatrixFilter;
      
      private var lightingFilter:ColorMatrixFilter;
      
      public var isAction:Boolean;
      
      public function EmbedBackoutButton(){super();}
      
      override protected function init() : void{}
      
      private function __mouseOver(param1:MouseEvent) : void{}
      
      private function __mouseOut(param1:MouseEvent) : void{}
      
      public function dragStop(param1:DragEffect) : void{}
      
      override public function set enable(param1:Boolean) : void{}
      
      public function getSource() : IDragable{return null;}
      
      public function getDragData() : Object{return null;}
      
      private function removeBackoutBtnEvent() : void{}
      
      private function addBackoutBtnEvent() : void{}
      
      override public function dispose() : void{}
   }
}
