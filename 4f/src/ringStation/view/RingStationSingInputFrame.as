package ringStation.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.vo.AlertInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.FilterWordManager;
   import ddt.view.chat.ChatBugleInputFrame;
   import ringStation.event.RingStationEvent;
   import road7th.utils.StringHelper;
   
   public class RingStationSingInputFrame extends ChatBugleInputFrame
   {
       
      
      public function RingStationSingInputFrame(){super();}
      
      override protected function init() : void{}
      
      override protected function __onResponse(param1:FrameEvent) : void{}
   }
}
