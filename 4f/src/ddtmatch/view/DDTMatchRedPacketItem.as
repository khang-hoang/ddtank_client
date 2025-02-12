package ddtmatch.view
{
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SocketManager;
   import ddtmatch.data.RedPacketInfo;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class DDTMatchRedPacketItem extends Sprite implements Disposeable
   {
       
      
      private var _type:int;
      
      private var _index:int;
      
      private var _bg:Bitmap;
      
      private var _robPacketBtn:SimpleBitmapButton;
      
      private var _robrecordBtn:SimpleBitmapButton;
      
      private var _descriptAllTxt:FilterFrameText;
      
      private var _descriptPlayerTxt:FilterFrameText;
      
      private var _info:RedPacketInfo;
      
      private var recordView:DDTMatchRedPacketRecord;
      
      public function DDTMatchRedPacketItem(param1:int, param2:int){super();}
      
      public function get info() : RedPacketInfo{return null;}
      
      public function set info(param1:RedPacketInfo) : void{}
      
      private function initView() : void{}
      
      private function addEvent() : void{}
      
      private function _robPacketBtnHandler(param1:MouseEvent) : void{}
      
      private function _robrecordBtnHandler(param1:MouseEvent) : void{}
      
      private function __respose(param1:FrameEvent) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
