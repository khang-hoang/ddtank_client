package academy.view
{
   import academy.AcademyController;
   import academy.AcademyEvent;
   import academy.AcademyManager;
   import bagAndInfo.info.PlayerInfoViewControl;
   import church.ChurchManager;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.controls.TextButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Scale9CornerImage;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.text.GradientText;
   import com.pickgliss.ui.text.TextArea;
   import com.pickgliss.utils.ClassUtils;
   import com.pickgliss.utils.DisplayUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.player.AcademyPlayerInfo;
   import ddt.data.player.PlayerInfo;
   import ddt.data.player.SelfInfo;
   import ddt.manager.AcademyFrameManager;
   import ddt.manager.ChatManager;
   import ddt.manager.IMManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PathManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import ddt.view.character.CharactoryFactory;
   import ddt.view.character.RoomCharacter;
   import ddt.view.common.LevelIcon;
   import ddt.view.common.MarriedIcon;
   import ddt.view.common.VipLevelIcon;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import vip.VipController;
   
   public class AcademyPlayerPanel extends Sprite implements Disposeable
   {
       
      
      private var _academyTitle:Bitmap;
      
      private var _data:Bitmap;
      
      private var _online:Bitmap;
      
      private var _courtshipBtn:TextButton;
      
      private var _talkBtn:TextButton;
      
      private var _equipBtn:TextButton;
      
      private var _addBtn:TextButton;
      
      private var _requestMasterBtn:SimpleBitmapButton;
      
      private var _requestApprenticeBtn:SimpleBitmapButton;
      
      private var _leftBg:Scale9CornerImage;
      
      private var _textLableBg:ScaleFrameImage;
      
      private var _playerNameTxt:FilterFrameText;
      
      private var _guildNameTxt:FilterFrameText;
      
      private var _graduatesCountTxt:FilterFrameText;
      
      private var _honourOfMasterTxt:FilterFrameText;
      
      private var _fightPowerTxt:FilterFrameText;
      
      private var _winProbabilityTxt:FilterFrameText;
      
      private var _vipName:GradientText;
      
      private var _bg:MovieClip;
      
      private var _introductionTxt:TextArea;
      
      private var _levelIcon:LevelIcon;
      
      private var _vipIcon:VipLevelIcon;
      
      private var _marriedIcon:MarriedIcon;
      
      private var _info:AcademyPlayerInfo;
      
      private var _controller:AcademyController;
      
      private var _player:RoomCharacter;
      
      private var _characteContainer:Sprite;
      
      private var _attestBtn:ScaleFrameImage;
      
      public function AcademyPlayerPanel(param1:AcademyController){super();}
      
      private function init() : void{}
      
      private function initEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function __onBtnClick(param1:MouseEvent) : void{}
      
      private function __playerChange(param1:AcademyEvent) : void{}
      
      private function createCharacter() : void{}
      
      private function update() : void{}
      
      private function creatAttestBtn() : void{}
      
      private function updateTextPos() : void{}
      
      private function getCourtshipBtnEnable() : Boolean{return false;}
      
      private function updateIcon() : void{}
      
      private function __characterComplete(param1:Event) : void{}
      
      public function dispose() : void{}
   }
}
