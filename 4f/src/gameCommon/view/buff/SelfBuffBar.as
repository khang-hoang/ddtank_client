package gameCommon.view.buff
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.events.CEvent;
   import ddt.events.LivingEvent;
   import ddt.manager.PlayerManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import game.view.buff.BuffCell;
   import game.view.propertyWaterBuff.PropertyWaterBuffBar;
   import gameCommon.GameControl;
   import gameCommon.model.Living;
   import room.RoomManager;
   
   public class SelfBuffBar extends Sprite implements Disposeable
   {
      
      public static var UPDATECELL:String = "updateCell";
       
      
      private var _buffCells:Vector.<BuffCell>;
      
      private var _back:Bitmap;
      
      private var _living:Living;
      
      private var _container:DisplayObjectContainer;
      
      private var _gameArrow:DisplayObject;
      
      private var _trueWidth:Number;
      
      private var _propertyWaterBuffBar:PropertyWaterBuffBar;
      
      private var _propertyWaterBuffBarVisible:Boolean;
      
      public function SelfBuffBar(param1:DisplayObjectContainer, param2:DisplayObject){super();}
      
      public function dispose() : void{}
      
      private function __updateCell(param1:LivingEvent) : void{}
      
      private function createPropertyWaterBuffBar() : void{}
      
      public function drawBuff(param1:Living) : void{}
      
      public function get right() : Number{return 0;}
      
      public function set propertyWaterBuffBarVisible(param1:Boolean) : void{}
      
      public function get trueWidth() : Number{return 0;}
      
      private function clearBuff() : void{}
   }
}
