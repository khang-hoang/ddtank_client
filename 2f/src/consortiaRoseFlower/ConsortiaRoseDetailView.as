package consortiaRoseFlower
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.CEvent;
   import ddt.manager.LanguageMgr;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import org.aswing.KeyboardManager;
   
   public class ConsortiaRoseDetailView extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _close:SimpleBitmapButton;
      
      private var _detailTxt:FilterFrameText;
      
      public function ConsortiaRoseDetailView(param1:Boolean, param2:String, param3:String){super();}
      
      protected function onKeyDown(param1:KeyboardEvent) : void{}
      
      protected function onCloseClick(param1:MouseEvent) : void{}
      
      private function closeRose() : void{}
      
      public function dispose() : void{}
   }
}
