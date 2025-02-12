package wonderfulActivity.items
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import roulette.LeftGunRouletteManager;
   import wonderfulActivity.views.IRightView;
   
   public class LuckPanView extends Sprite implements IRightView
   {
       
      
      private var _btn:SimpleBitmapButton;
      
      public function LuckPanView()
      {
         super();
      }
      
      public function setState(param1:int, param2:int) : void
      {
      }
      
      public function init() : void
      {
         var _loc1_:Bitmap = ComponentFactory.Instance.creat("wonderfulactivity.zhuanpan.back");
         addChild(_loc1_);
         LeftGunRouletteManager.instance.createFrame(this);
      }
      
      public function content() : Sprite
      {
         return this;
      }
      
      public function dispose() : void
      {
         while(this.numChildren)
         {
            ObjectUtils.disposeObject(this.getChildAt(0));
         }
         if(parent)
         {
            ObjectUtils.disposeObject(this);
         }
      }
   }
}
