package gameCommon.view.arrow
{
   import bombKing.BombKingManager;
   import bombKing.event.BombKingEvent;
   import com.pickgliss.effect.EffectManager;
   import com.pickgliss.effect.IEffect;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.events.CrazyTankSocketEvent;
   import ddt.events.LivingEvent;
   import ddt.manager.ChatManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.GraphicsUtils;
   import ddt.view.common.GradientText;
   import ddt.view.tips.ToolPropInfo;
   import fightLib.FightLibManager;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.geom.Point;
   import flash.utils.getTimer;
   import gameCommon.model.LocalPlayer;
   import gameCommon.model.Player;
   import org.aswing.KeyStroke;
   import org.aswing.KeyboardManager;
   import room.RoomManager;
   import room.model.WeaponInfo;
   
   public class ArrowView extends Sprite implements Disposeable
   {
      
      public static const FLY_CD:int = 2;
      
      public static const HIDE_BAR:String = "hide bar";
      
      public static const USE_TOOL:String = "use_tool";
      
      public static const ADD_BLOOD_CD:int = 2;
      
      public static const RANDOW_COLORSII:Array = [[1351165,16768512],[1478655,2607344],[1555258,14293039],[7912215,14293199],[12862218,7721224],[14577152,15970051],[6011902,832292],[521814,13411850],[15035908,11327256],[15118867,8369930],[2213785,8116729],[10735137,14497882],[15460371,15430666],[13032456,2861311],[16670299,12510266],[44799,7721224]];
      
      public static const ANGLE_NEXTCHANGE_TIME:int = 100;
       
      
      private var _bg:ArrowBg;
      
      private var _info:LocalPlayer;
      
      private var _sector:Sprite;
      
      private var _recordChangeBefore:Number;
      
      private var _flyCoolDown:int = 0;
      
      private var _flyEnable:Boolean;
      
      private var _isLockFly:Boolean = false;
      
      private var rotationCountField:GradientText;
      
      private var _hammerCoolDown:int = 0;
      
      private var _hammerEnable:Boolean;
      
      private var _deputyWeaponResCount:int;
      
      private var _AngelLine:MovieClip;
      
      private var _ShineKey:Boolean;
      
      public var _AnglelShineEffect:IEffect;
      
      private var _wFlag:Boolean;
      
      private var _sFlag:Boolean;
      
      private var _angleNum:int;
      
      private var _hideState:Boolean;
      
      private var _enableArrow:Boolean;
      
      private var _currentAngleChangeTime:int = 0;
      
      private var _first:Boolean = true;
      
      private var _recordRotation:Number;
      
      private var _hammerBlocked:Boolean;
      
      public function ArrowView(param1:LocalPlayer){super();}
      
      public function set flyEnable(param1:Boolean) : void{}
      
      private function __sendShootAction(param1:LivingEvent) : void{}
      
      public function set hammerEnable(param1:Boolean) : void{}
      
      public function get hammerEnable() : Boolean{return false;}
      
      public function disable() : void{}
      
      private function updataAngleLine() : void{}
      
      private function showAngleLine(param1:int) : void{}
      
      private function setTip(param1:BaseButton, param2:String, param3:String, param4:String, param5:String = "0", param6:Boolean = true, param7:int = 10) : void{}
      
      private function reset() : void{}
      
      public function set hideState(param1:Boolean) : void{}
      
      public function get hideState() : Boolean{return false;}
      
      private function carrayAngle() : void{}
      
      public function dispose() : void{}
      
      private function initEvents() : void{}
      
      private function removeEvent() : void{}
      
      private function __lockAngleChangeHandler(param1:LivingEvent) : void{}
      
      public function set enableArrow(param1:Boolean) : void{}
      
      protected function __onModifyAngle(param1:BombKingEvent) : void{}
      
      public function modifyAngleData(param1:Player) : void{}
      
      private function __onTurnChange(param1:LivingEvent) : void{}
      
      private function __die(param1:Event) : void{}
      
      private function __revive(param1:Event) : void{}
      
      private function __enterFrame(param1:Event) : void{}
      
      private function __inputKeyDown(param1:KeyboardEvent) : void{}
      
      private function __keydown(param1:KeyboardEvent) : void{}
      
      private function __changeBall(param1:LivingEvent) : void{}
      
      private function resetAngle() : void{}
      
      private function __change(param1:LivingEvent) : void{}
      
      private function __weapAngle(param1:LivingEvent) : void{}
      
      private function checkAngle() : void{}
      
      public function set ShineKey(param1:Boolean) : void{}
      
      public function get ShineKey() : Boolean{return false;}
      
      private function shineAngleLine() : void{}
      
      private function __changeDirection(param1:LivingEvent) : void{}
      
      private function __changeAngle(param1:LivingEvent) : void{}
      
      private function __setArrowClone(param1:Event) : void{}
      
      public function setRecordRotation() : void{}
      
      public function blockHammer() : void{}
      
      public function allowHammer() : void{}
      
      private function __setDeputyWeaponNumber(param1:CrazyTankSocketEvent) : void{}
      
      public function get transparentBtn() : SimpleBitmapButton{return null;}
      
      public function setPlaneBtnVisible(param1:Boolean) : void{}
      
      public function setOffHandedBtnVisible(param1:Boolean) : void{}
      
      public function enter() : void{}
      
      public function leaving() : void{}
   }
}
