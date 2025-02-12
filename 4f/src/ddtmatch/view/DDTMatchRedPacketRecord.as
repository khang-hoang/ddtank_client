package ddtmatch.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.CrazyTankSocketEvent;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SocketManager;
   import ddtmatch.data.RedPacketInfo;
   import ddtmatch.manager.DDTMatchManager;
   import flash.display.Bitmap;
   import road7th.comm.PackageIn;
   
   public class DDTMatchRedPacketRecord extends Frame
   {
       
      
      private var _bg:Bitmap;
      
      private var _playerTxt:FilterFrameText;
      
      private var _messageTxt:FilterFrameText;
      
      private var _moneyNumberTxt:FilterFrameText;
      
      private var _recordTxt:FilterFrameText;
      
      private var _info:RedPacketInfo;
      
      private var _listPanel:ScrollPanel;
      
      public function DDTMatchRedPacketRecord(){super();}
      
      override protected function init() : void{}
      
      private function __updataList(param1:CrazyTankSocketEvent) : void{}
      
      public function setInfo(param1:RedPacketInfo) : void{}
      
      override public function dispose() : void{}
   }
}
