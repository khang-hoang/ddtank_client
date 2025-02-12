package cardSystem.view
{
   import cardSystem.CardManager;
   import cardSystem.data.CardInfo;
   import cardSystem.data.SetsUpgradeRuleInfo;
   import cardSystem.elements.CardCell;
   import com.pickgliss.events.FrameEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.LayerManager;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.Frame;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.image.MovieImage;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.media.SoundTransform;
   import road7th.data.DictionaryEvent;
   
   public class UpGradeFrame extends Frame
   {
      
      public static const PROGRESS_HEIGHT:int = 29;
      
      public static const PROGRESS_WIDTH:int = 158;
       
      
      private var _BG:ScaleBitmapImage;
      
      private var _inputBg:Bitmap;
      
      private var _inputBg1:Bitmap;
      
      private var _card:CardCell;
      
      private var _cardNumBG:Bitmap;
      
      private var _progressBar:MovieClip;
      
      private var _progressBarMask:Sprite;
      
      private var _upGradeBtn:TextButton;
      
      private var _cardInfo:CardInfo;
      
      private var _helpBtn:BaseButton;
      
      private var _leftCardNumText:FilterFrameText;
      
      private var _progressText:FilterFrameText;
      
      private var _ruleText:FilterFrameText;
      
      private var _progressMoive:MovieClip;
      
      private var _upgradeRuleArr:Vector.<SetsUpgradeRuleInfo>;
      
      private var _levelBmp:Bitmap;
      
      private var _level:FilterFrameText;
      
      private var _helpFrame:Frame;
      
      private var _okBtn:TextButton;
      
      private var _content:MovieImage;
      
      private var _bg:Scale9CornerImage;
      
      private var _ruleInfo:SetsUpgradeRuleInfo;
      
      private var _lastGP:int = -1;
      
      private var _lastLevel:int = -1;
      
      private var upgradeMovie:MovieClip;
      
      private var _soundControl:SoundTransform;
      
      public function UpGradeFrame(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function __progressPlayOver(param1:Event) : void{}
      
      private function __helpHandler(param1:MouseEvent) : void{}
      
      protected function __helpFrameRespose(param1:FrameEvent) : void{}
      
      private function disposeHelpFrame() : void{}
      
      protected function __closeHelpFrame(param1:MouseEvent) : void{}
      
      protected function __responseHandler(param1:FrameEvent) : void{}
      
      private function __upDateHandler(param1:DictionaryEvent) : void{}
      
      protected function __upGradeHandler(param1:MouseEvent) : void{}
      
      public function set cardInfo(param1:CardInfo) : void{}
      
      private function upView() : void{}
      
      private function __playOver(param1:Event) : void{}
      
      override public function dispose() : void{}
   }
}
