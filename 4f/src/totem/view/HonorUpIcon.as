package totem.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import totem.HonorUpManager;
   
   public class HonorUpIcon extends Sprite implements Disposeable
   {
       
      
      private var _iconBtn:SimpleBitmapButton;
      
      private var _countTxt:FilterFrameText;
      
      public function HonorUpIcon(){super();}
      
      private function refreshShow(param1:Event) : void{}
      
      private function openHonorUpFrame(param1:MouseEvent) : void{}
      
      public function dispose() : void{}
   }
}
