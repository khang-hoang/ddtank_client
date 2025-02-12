package gameCommon.view.prop
{
   import com.greensock.TweenLite;
   import com.greensock.TweenMax;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.SimpleBitmapButton;
   import com.pickgliss.utils.DisplayUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.EquipType;
   import ddt.data.PropInfo;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.events.LivingEvent;
   import ddt.manager.DragManager;
   import ddt.manager.InGameCursor;
   import ddt.manager.ItemManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.MaxBtnStateManager;
   import ddt.manager.MessageTipManager;
   import ddt.manager.PlayerManager;
   import ddt.manager.SharedManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import game.GameDecorateManager;
   import gameCommon.GameControl;
   import gameCommon.model.LocalPlayer;
   import gameCommon.view.control.LiveState;
   import org.aswing.KeyStroke;
   import org.aswing.KeyboardManager;
   import room.RoomManager;
   import trainer.controller.WeakGuildManager;
   import trainer.view.NewHandContainer;
   
   public class RightPropBar extends FightPropBar
   {
      
      private static var oneTwoThreeSkill:Array = [10001,10003,10002];
       
      
      private var _startPos:Point;
      
      private var _mouseHolded:Boolean = false;
      
      private var _elasped:int = 0;
      
      private var _last:int = 0;
      
      private var _container:DisplayObjectContainer;
      
      private var _localVisible:Boolean = true;
      
      private var _tweenComplete:Boolean = true;
      
      private var _rightPropBarBorder:Array;
      
      private var _cellSprite:Sprite;
      
      private var cell:PropCell;
      
      private var _tempPlace:int;
      
      private var _maxBtn:PropMaxBtn;
      
      private var _packUpBtn:SimpleBitmapButton;
      
      private var _dropDownBtn:SimpleBitmapButton;
      
      private var _isPackUp:Boolean = false;
      
      private var _greyFilter:Array;
      
      private var bmp:Bitmap;
      
      public function RightPropBar(param1:LocalPlayer, param2:DisplayObjectContainer){super(null);}
      
      private function setPropBarBorder(param1:int, param2:Boolean) : void{}
      
      public function get isPackUp() : Boolean{return false;}
      
      public function set isPackUp(param1:Boolean) : void{}
      
      override public function set x(param1:Number) : void{}
      
      private function addEvents() : void{}
      
      protected function onMaxBtnStateChange(param1:Event) : void{}
      
      public function setup(param1:DisplayObjectContainer) : void{}
      
      protected function setItems() : void{}
      
      private function checkArmShellSpring() : void{}
      
      private function clickPropArmShellTotem(param1:int) : void{}
      
      protected function handleItem() : void{}
      
      protected function onMaxOut(param1:MouseEvent) : void{}
      
      protected function onMaxOver(param1:MouseEvent) : void{}
      
      override protected function updatePropByEnergy() : void{}
      
      private function checkMaxFilter() : void{}
      
      private function clearArrowByProp(param1:PropInfo, param2:Boolean = true, param3:Boolean = false) : void{}
      
      private function clearArr(param1:int, param2:Boolean) : void{}
      
      override protected function __itemClicked(param1:MouseEvent) : void{}
      
      override protected function addEvent() : void{}
      
      private function __setEnable(param1:Event) : void{}
      
      protected function __transparentChanged(param1:Event) : void{}
      
      private function __attackingChanged(param1:LivingEvent) : void{}
      
      private function showComplete() : void{}
      
      private function hide() : void{}
      
      private function hideComplete() : void{}
      
      private function __shoot(param1:LivingEvent) : void{}
      
      override protected function __enabledChanged(param1:LivingEvent) : void{}
      
      private function __rightEnabledChanged(param1:LivingEvent) : void{}
      
      private function __usingItem(param1:LivingEvent) : void{}
      
      private function __threeKillChanged(param1:LivingEvent) : void{}
      
      override public function set enabled(param1:Boolean) : void{}
      
      override protected function __keyDown(param1:KeyboardEvent) : void{}
      
      override protected function configUI() : void{}
      
      override protected function drawCells() : void{}
      
      private function __DownItemHandler(param1:MouseEvent) : void{}
      
      private function OnCellComplete() : void{}
      
      private function __UpItemHandler(param1:MouseEvent) : void{}
      
      override public function dispose() : void{}
      
      override protected function removeEvent() : void{}
      
      override protected function drawLayer() : void{}
      
      override public function enter() : void{}
      
      public function get mode() : int{return 0;}
      
      public function setPropVisible(param1:int, param2:Boolean) : void{}
      
      public function setVisible(param1:Boolean) : void{}
      
      private function addChildToContainer() : void{}
      
      public function hidePropBar() : void{}
      
      public function showPropBar() : void{}
      
      protected function onDropDownClick(param1:MouseEvent) : void{}
      
      private function dropDownEffect() : void{}
      
      private function dropDown() : void{}
      
      protected function onPackUpClick(param1:MouseEvent) : void{}
      
      private function packUpEffect() : void{}
      
      private function packUp() : void{}
      
      protected function onMaxClick(param1:MouseEvent) : void{}
      
      private function useMaxBtn() : void{}
      
      private function onChange(param1:LivingEvent) : void{}
      
      private function check() : void{}
      
      private function sortPercentProps() : void{}
   }
}
