package consortion.view.selfConsortia
{
   import baglocked.BaglockedManager;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.alert.BaseAlerFrame;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import consortion.data.ConsortionSkillInfo;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class ConsortionSkillItem extends Sprite implements Disposeable
   {
       
      
      private var _bg1:ScaleBitmapImage;
      
      private var _bg2:ScaleBitmapImage;
      
      private var _bg3:ScaleBitmapImage;
      
      private var _cellBG1:DisplayObject;
      
      private var _cellBG2:DisplayObject;
      
      private var _sign:FilterFrameText;
      
      private var _level:int;
      
      private var _open:Boolean;
      
      private var _isMetal:Boolean;
      
      private var _cells:Vector.<ConsortionSkillCell>;
      
      private var _btns:Vector.<ConsortionSkillItenBtn>;
      
      private var _currentInfo:ConsortionSkillInfo;
      
      public function ConsortionSkillItem(param1:int, param2:Boolean, param3:Boolean = false){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      public function set data(param1:Vector.<ConsortionSkillInfo>) : void{}
      
      private function __clickHandler(param1:MouseEvent) : void{}
      
      private function __confirmResponseHandler(param1:FrameEvent) : void{}
      
      override public function get height() : Number{return 0;}
      
      public function dispose() : void{}
   }
}
