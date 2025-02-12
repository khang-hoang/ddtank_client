package moneyTree.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SoundManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.utils.setTimeout;
   import moneyTree.MoneyTreeController;
   import moneyTree.MoneyTreeManager;
   
   public class CountDownBoard extends Sprite implements Disposeable
   {
       
      
      private var _index:int;
      
      private var _bg:Bitmap;
      
      private var _title:Bitmap;
      
      private var _speedUpBtn:SimpleBitmapButton;
      
      private var _countDownTextField:FilterFrameText;
      
      public function CountDownBoard(param1:int, param2:Bitmap){super();}
      
      protected function onSpeedUpClick(param1:MouseEvent) : void{}
      
      private function setBtnEnable() : void{}
      
      public function updateTime(param1:String) : void{}
      
      public function dispose() : void{}
   }
}
