package demonChiYou.view
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.UICreatShortcut;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.HelpFrameUtils;
   import ddt.utils.PositionUtils;
   import demonChiYou.DemonChiYouController;
   import demonChiYou.DemonChiYouManager;
   import demonChiYou.DemonChiYouModel;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class DemonChiYouRewardSelectFrame extends Frame
   {
       
      
      private var _btnHelp:BaseButton;
      
      private var _mgr:DemonChiYouManager;
      
      private var _model:DemonChiYouModel;
      
      private var _consortiaNameTf1:FilterFrameText;
      
      private var _consortiaNameTf2:FilterFrameText;
      
      private var _consortiaNameTf3:FilterFrameText;
      
      private var _leftTimeImage:Image;
      
      private var _leftTimeTf:FilterFrameText;
      
      private var _itemArr:Array;
      
      private var _leftTimeTimer:Timer;
      
      private var _leftTimeImageW:int;
      
      private var _leftSec:int;
      
      public function DemonChiYouRewardSelectFrame(){super();}
      
      private function onShopInfoBack(param1:Event) : void{}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function onUpdateLeftTime(param1:TimerEvent) : void{}
      
      private function onCompleteLeftTime(param1:TimerEvent) : void{}
      
      private function responseHandler(param1:FrameEvent) : void{}
      
      override public function dispose() : void{}
   }
}
