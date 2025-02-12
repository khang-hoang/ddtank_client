package fightLib.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.text.GradientText;
   import com.pickgliss.utils.DisplayUtils;
   import com.pickgliss.utils.ObjectUtils;
   import consortion.view.selfConsortia.Badge;
   import ddt.data.player.PlayerInfo;
   import ddt.events.PlayerPropertyEvent;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import ddt.view.academyCommon.academyIcon.AcademyIcon;
   import ddt.view.buff.BuffControl;
   import ddt.view.buff.BuffControlManager;
   import ddt.view.character.CharactoryFactory;
   import ddt.view.character.ICharacter;
   import ddt.view.character.RoomCharacter;
   import ddt.view.common.LevelIcon;
   import ddt.view.common.MarriedIcon;
   import ddt.view.common.VipLevelIcon;
   import flash.display.Sprite;
   import flash.geom.Point;
   import vip.VipController;
   
   public class FightLibPlayerInfoView extends Sprite implements Disposeable
   {
       
      
      private var _info:PlayerInfo;
      
      private var _nicknameField:FilterFrameText;
      
      private var _vipNameField:GradientText;
      
      private var _consortiaNameField:FilterFrameText;
      
      private var _reputeField:FilterFrameText;
      
      private var _reputeTitleField:FilterFrameText;
      
      private var _gesteTitleField:FilterFrameText;
      
      private var _gesteField:FilterFrameText;
      
      private var _figure:ICharacter;
      
      private var _playerContent:Sprite;
      
      private var _levelIcon:LevelIcon;
      
      private var _guildOffset:Point;
      
      private var _vipIcon:VipLevelIcon;
      
      private var _marryIcon:MarriedIcon;
      
      private var _academyIcon:AcademyIcon;
      
      private var _badge:Badge;
      
      private var _iconContainer:VBox;
      
      private var _marryOffset:Point;
      
      private var _buff:BuffControl;
      
      private var _backgournd:MutipleImage;
      
      public function FightLibPlayerInfoView(){super();}
      
      public function dispose() : void{}
      
      public function set info(param1:PlayerInfo) : void{}
      
      public function get info() : PlayerInfo{return null;}
      
      private function configUI() : void{}
      
      private function addEvent() : void{}
      
      private function removeEvent() : void{}
      
      private function __propertyChanged(param1:PlayerPropertyEvent) : void{}
      
      private function update() : void{}
   }
}
