package cardSystem.view
{
   import cardSystem.elements.CardCell;
   import com.pickgliss.ui.ComponentFactory;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class ResetCardCell extends CardCell
   {
       
      
      public function ResetCardCell(){super(null);}
      
      override protected function onMouseOver(param1:MouseEvent) : void{}
      
      override protected function updateSize(param1:Sprite) : void{}
   }
}
