package gameCommon.view.prop
{
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.PropInfo;
   import ddt.events.LivingEvent;
   import ddt.manager.SharedManager;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import gameCommon.model.LocalPlayer;
   import org.aswing.KeyboardManager;
   
   public class FightPropBar extends Sprite implements Disposeable
   {
       
      
      protected var _mode:int;
      
      protected var _cells:Vector.<PropCell>;
      
      protected var _props:Vector.<PropInfo>;
      
      protected var _percentPropsList:Vector.<PropCell>;
      
      protected var _self:LocalPlayer;
      
      protected var _background:DisplayObject;
      
      protected var _enabled:Boolean = true;
      
      protected var _inited:Boolean = false;
      
      public function FightPropBar(param1:LocalPlayer)
      {
         _mode = SharedManager.Instance.propLayerMode;
         _cells = new Vector.<PropCell>();
         _props = new Vector.<PropInfo>();
         _percentPropsList = new Vector.<PropCell>();
         super();
         _self = param1;
         configUI();
         addEvent();
         _inited = true;
         if(_self.autoOnHook)
         {
            mouseChildren = false;
            mouseEnabled = false;
         }
      }
      
      public function enter() : void
      {
         addEvent();
         enabled = _self.propEnabled;
      }
      
      public function leaving() : void
      {
         removeEvent();
         if(parent)
         {
            parent.removeChild(this);
         }
      }
      
      protected function configUI() : void
      {
         drawCells();
      }
      
      protected function addEvent() : void
      {
         _self.addEventListener("energyChanged",__energyChange);
         _self.addEventListener("propenabledChanged",__enabledChanged);
         KeyboardManager.getInstance().addEventListener("keyDown",__keyDown);
      }
      
      protected function __enabledChanged(param1:LivingEvent) : void
      {
         enabled = _self.propEnabled;
      }
      
      protected function __keyDown(param1:KeyboardEvent) : void
      {
      }
      
      protected function __die(param1:LivingEvent) : void
      {
      }
      
      protected function __changeAttack(param1:LivingEvent) : void
      {
      }
      
      protected function __energyChange(param1:LivingEvent) : void
      {
         if(_enabled)
         {
            updatePropByEnergy();
         }
      }
      
      protected function updatePropByEnergy() : void
      {
         var _loc2_:* = null;
         var _loc4_:int = 0;
         var _loc3_:* = _cells;
         for each(var _loc1_ in _cells)
         {
            if(_loc1_.info)
            {
               _loc2_ = _loc1_.info;
               if(_loc2_)
               {
                  if(_self.energy < _loc2_.needEnergy)
                  {
                     _loc1_.enabled = false;
                  }
                  else
                  {
                     _loc1_.enabled = true;
                  }
               }
            }
         }
      }
      
      protected function removeEvent() : void
      {
         _self.removeEventListener("energyChanged",__energyChange);
         _self.removeEventListener("propenabledChanged",__enabledChanged);
         KeyboardManager.getInstance().removeEventListener("keyDown",__keyDown);
      }
      
      protected function drawLayer() : void
      {
      }
      
      protected function clearCells() : void
      {
         var _loc3_:int = 0;
         var _loc2_:* = _cells;
         for each(var _loc1_ in _cells)
         {
            _loc1_.info = null;
         }
      }
      
      protected function drawCells() : void
      {
      }
      
      protected function __itemClicked(param1:MouseEvent) : void
      {
         StageReferance.stage.focus = null;
      }
      
      public function setMode(param1:int) : void
      {
         if(_mode != param1)
         {
            _mode = param1;
            drawLayer();
         }
      }
      
      public function get enabled() : Boolean
      {
         return _enabled;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         if(_enabled != param1)
         {
            _enabled = param1;
            if(_enabled)
            {
               filters = null;
               updatePropByEnergy();
            }
            else
            {
               filters = [new ColorMatrixFilter([0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0,0,0,1,0])];
            }
            var _loc4_:int = 0;
            var _loc3_:* = _cells;
            for each(var _loc2_ in _cells)
            {
               _loc2_.enabled = _enabled;
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:int = 0;
         removeEvent();
         if(_cells)
         {
            _loc1_ = 0;
            while(_loc1_ < _cells.length)
            {
               _cells[_loc1_].dispose();
               _cells[_loc1_] = null;
               _loc1_++;
            }
         }
         _cells = null;
         if(_background)
         {
            ObjectUtils.disposeObject(_background);
         }
         _background = null;
         _self = null;
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
