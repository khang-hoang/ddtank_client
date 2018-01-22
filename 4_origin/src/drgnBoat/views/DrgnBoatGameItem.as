package drgnBoat.views
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class DrgnBoatGameItem extends Sprite implements Disposeable
   {
       
      
      private var _itemMc:MovieClip;
      
      public function DrgnBoatGameItem(param1:int, param2:int, param3:int)
      {
         super();
         this.x = 280 + param3;
         var _loc4_:int = param1 >= 2?param1 + 1:param1;
         this.y = 195 + 75 * _loc4_;
         _itemMc = ComponentFactory.Instance.creat("drgnBoat.itemMc" + param2);
         _itemMc.gotoAndStop(1);
         addChild(_itemMc);
      }
      
      public function dispose() : void
      {
         if(_itemMc)
         {
            _itemMc.gotoAndStop(2);
            removeChild(_itemMc);
         }
         _itemMc = null;
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
