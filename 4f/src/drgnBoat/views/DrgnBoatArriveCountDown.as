package drgnBoat.views
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class DrgnBoatArriveCountDown extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _txt:FilterFrameText;
      
      private var _recordTxt:String;
      
      public function DrgnBoatArriveCountDown(){super();}
      
      private function initView() : void{}
      
      public function refreshView(param1:int, param2:int) : void{}
      
      public function dispose() : void{}
   }
}
