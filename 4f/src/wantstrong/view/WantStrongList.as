package wantstrong.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Sprite;
   import wantstrong.model.WantStrongModel;
   
   public class WantStrongList extends Sprite implements Disposeable
   {
       
      
      private var _listMenu:WantStrongMenu;
      
      private var _model:WantStrongModel;
      
      public function WantStrongList(param1:WantStrongModel){super();}
      
      private function createUI() : void{}
      
      public function dispose() : void{}
   }
}
