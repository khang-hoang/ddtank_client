package consortiaDomain.view
{
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import consortiaDomain.ConsortiaDomainManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.TimeManager;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class NextWaveMonsterView extends Sprite implements Disposeable
   {
       
      
      private var _tf:FilterFrameText;
      
      private var _timer:Timer;
      
      public function NextWaveMonsterView(){super();}
      
      private function onTimeTick(param1:TimerEvent) : void{}
      
      public function dispose() : void{}
   }
}
