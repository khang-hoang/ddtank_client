package com.pickgliss.debug
{
   import flash.display.BitmapData;
   import flash.display.Graphics;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.system.System;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class DebugStats extends Sprite
   {
      
      private static const _WIDTH:Number = 125;
      
      private static const _MAX_HEIGHT:Number = 75;
      
      private static const _MIN_HEIGHT:Number = 41;
      
      private static const _UPPER_Y:Number = -1;
      
      private static const _LOWER_Y:Number = 9;
      
      private static const _POLY_COL:uint = 16763904;
      
      private static const _MEM_COL:uint = 16711884;
      
      private static var _INSTANCE:DebugStats;
       
      
      private var _timer:Timer;
      
      private var _last_frame_timestamp:Number;
      
      private var _fps:uint;
      
      private var _ram:Number;
      
      private var _max_ram:Number;
      
      private var _min_fps:uint;
      
      private var _avg_fps:Number;
      
      private var _max_fps:uint;
      
      private var _tfaces:uint;
      
      private var _rfaces:uint;
      
      private var _num_frames:uint;
      
      private var _fps_sum:uint;
      
      private var _top_bar:Sprite;
      
      private var _btm_bar:Sprite;
      
      private var _btm_bar_hit:Sprite;
      
      private var _data_format:TextFormat;
      
      private var _label_format:TextFormat;
      
      private var _fps_bar:Shape;
      
      private var _afps_bar:Shape;
      
      private var _lfps_bar:Shape;
      
      private var _hfps_bar:Shape;
      
      private var _diagram:Sprite;
      
      private var _dia_bmp:BitmapData;
      
      private var _mem_points:Array;
      
      private var _mem_graph:Shape;
      
      private var _updates:int;
      
      private var _min_max_btn:Sprite;
      
      private var _fps_tf:TextField;
      
      private var _afps_tf:TextField;
      
      private var _ram_tf:TextField;
      
      private var _poly_tf:TextField;
      
      private var _drag_dx:Number;
      
      private var _drag_dy:Number;
      
      private var _dragging:Boolean;
      
      private var _mean_data:Array;
      
      private var _mean_data_length:int;
      
      private var _enable_reset:Boolean;
      
      private var _enable_mod_fr:Boolean;
      
      private var _transparent:Boolean;
      
      private var _minimized:Boolean;
      
      public function DebugStats(param1:Boolean = false, param2:Boolean = false, param3:uint = 0, param4:Boolean = true, param5:Boolean = true)
      {
         super();
         _minimized = param1;
         _transparent = param2;
         _enable_reset = param4;
         _enable_mod_fr = param5;
         _mean_data_length = param3;
         if(_INSTANCE)
         {
            trace("Creating several statistics windows in one project. Is this intentional?");
         }
         _INSTANCE = this;
         _fps = 0;
         _num_frames = 0;
         _avg_fps = 0;
         _ram = 0;
         _max_ram = 0;
         _tfaces = 0;
         _rfaces = 0;
         _init();
      }
      
      public static function get instance() : DebugStats
      {
         return _INSTANCE;
      }
      
      public function get fps() : int
      {
         return _fps;
      }
      
      private function _init() : void
      {
         _initMisc();
         _initTopBar();
         _initBottomBar();
         _initDiagrams();
         _initInteraction();
         _reset();
         _redrawWindow();
         addEventListener("addedToStage",_onAddedToStage);
         addEventListener("removedFromStage",_onRemovedFromStage);
      }
      
      private function _initMisc() : void
      {
         var _loc1_:int = 0;
         _timer = new Timer(200,0);
         _timer.addEventListener("timer",_onTimer);
         _label_format = new TextFormat("_sans",9,16777215,true);
         _data_format = new TextFormat("_sans",9,16777215,false);
         if(_mean_data_length > 0)
         {
            _mean_data = [];
            _loc1_ = 0;
            while(_loc1_ < _mean_data_length)
            {
               _mean_data[_loc1_] = 0;
               _loc1_++;
            }
         }
      }
      
      private function _initTopBar() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc4_:* = null;
         var _loc3_:* = null;
         _top_bar = new Sprite();
         _top_bar.graphics.beginFill(0,0);
         _top_bar.graphics.drawRect(0,0,125,20);
         addChild(_top_bar);
         _loc1_ = new Shape();
         _loc1_.x = 9;
         _loc1_.y = 7.5;
         _loc1_.scaleX = 0.6;
         _loc1_.scaleY = 0.6;
         _loc1_.graphics.beginFill(16777215,1);
         _loc1_.graphics.moveTo(-0.5,-7);
         _loc1_.graphics.curveTo(-0.5,-7.7,-1,-7);
         _loc1_.graphics.lineTo(-9,5);
         _loc1_.graphics.curveTo(-9.3,5.5,-8,5);
         _loc1_.graphics.curveTo(-1,1,-0.5,-7);
         _loc1_.graphics.moveTo(0.5,-7);
         _loc1_.graphics.curveTo(0.5,-7.7,1,-7);
         _loc1_.graphics.lineTo(9,5);
         _loc1_.graphics.curveTo(9.3,5.5,8,5);
         _loc1_.graphics.curveTo(1,1,0.5,-7);
         _loc1_.graphics.moveTo(-8,7);
         _loc1_.graphics.curveTo(-8.3,6.7,-7.5,6.3);
         _loc1_.graphics.curveTo(0,2,7.5,6.3);
         _loc1_.graphics.curveTo(8.3,6.7,8,7);
         _loc1_.graphics.lineTo(-8,7);
         _top_bar.addChild(_loc1_);
         _loc2_ = new Shape();
         _loc2_.graphics.beginFill(16777215);
         _loc2_.graphics.drawRect(20,7,4,4);
         _loc2_.graphics.beginFill(3377373);
         _loc2_.graphics.drawRect(77,7,4,4);
         _top_bar.addChild(_loc2_);
         _loc4_ = new TextField();
         _loc4_.defaultTextFormat = _label_format;
         _loc4_.autoSize = "left";
         _loc4_.text = "FR:";
         _loc4_.x = 24;
         _loc4_.y = 2;
         _loc4_.selectable = false;
         _top_bar.addChild(_loc4_);
         _fps_tf = new TextField();
         _fps_tf.defaultTextFormat = _data_format;
         _fps_tf.autoSize = "left";
         _fps_tf.x = _loc4_.x + 16;
         _fps_tf.y = _loc4_.y;
         _fps_tf.selectable = false;
         _top_bar.addChild(_fps_tf);
         _loc3_ = new TextField();
         _loc3_.defaultTextFormat = _label_format;
         _loc3_.autoSize = "left";
         _loc3_.text = "A:";
         _loc3_.x = 81;
         _loc3_.y = 2;
         _loc3_.selectable = false;
         _top_bar.addChild(_loc3_);
         _afps_tf = new TextField();
         _afps_tf.defaultTextFormat = _data_format;
         _afps_tf.autoSize = "left";
         _afps_tf.x = _loc3_.x + 12;
         _afps_tf.y = _loc3_.y;
         _afps_tf.selectable = false;
         _top_bar.addChild(_afps_tf);
         _min_max_btn = new Sprite();
         _min_max_btn.x = 125 - 8;
         _min_max_btn.y = 7;
         _min_max_btn.graphics.beginFill(0,0);
         _min_max_btn.graphics.lineStyle(1,15724527,1,true);
         _min_max_btn.graphics.drawRect(-4,-4,8,8);
         _min_max_btn.graphics.moveTo(-3,2);
         _min_max_btn.graphics.lineTo(3,2);
         _min_max_btn.buttonMode = true;
         _min_max_btn.addEventListener("click",_onMinMaxBtnClick);
         _top_bar.addChild(_min_max_btn);
      }
      
      private function _initBottomBar() : void
      {
         var _loc3_:* = null;
         var _loc1_:* = null;
         var _loc2_:* = null;
         _btm_bar = new Sprite();
         _btm_bar.graphics.beginFill(0,0.2);
         _btm_bar.graphics.drawRect(0,0,125,21);
         addChild(_btm_bar);
         _btm_bar_hit = new Sprite();
         _btm_bar_hit.graphics.beginFill(16763904,0);
         _btm_bar_hit.graphics.drawRect(0,1,125,20);
         addChild(_btm_bar_hit);
         _loc3_ = new Shape();
         _loc3_.graphics.beginFill(16711884);
         _loc3_.graphics.drawRect(5,4,4,4);
         _loc3_.graphics.beginFill(16763904);
         _loc3_.graphics.drawRect(5,14,4,4);
         _btm_bar.addChild(_loc3_);
         _loc1_ = new TextField();
         _loc1_.defaultTextFormat = _label_format;
         _loc1_.autoSize = "left";
         _loc1_.text = "RAM:";
         _loc1_.x = 10;
         _loc1_.y = -1;
         _loc1_.selectable = false;
         _loc1_.mouseEnabled = false;
         _btm_bar.addChild(_loc1_);
         _ram_tf = new TextField();
         _ram_tf.defaultTextFormat = _data_format;
         _ram_tf.autoSize = "left";
         _ram_tf.x = _loc1_.x + 31;
         _ram_tf.y = _loc1_.y;
         _ram_tf.selectable = false;
         _ram_tf.mouseEnabled = false;
         _btm_bar.addChild(_ram_tf);
         _loc2_ = new TextField();
         _loc2_.defaultTextFormat = _label_format;
         _loc2_.autoSize = "left";
         _loc2_.text = "POLY:";
         _loc2_.x = 10;
         _loc2_.y = 9;
         _loc2_.selectable = false;
         _loc2_.mouseEnabled = false;
         _btm_bar.addChild(_loc2_);
         _poly_tf = new TextField();
         _poly_tf.defaultTextFormat = _data_format;
         _poly_tf.autoSize = "left";
         _poly_tf.x = _loc2_.x + 31;
         _poly_tf.y = _loc2_.y;
         _poly_tf.selectable = false;
         _poly_tf.mouseEnabled = false;
         _btm_bar.addChild(_poly_tf);
      }
      
      private function _initDiagrams() : void
      {
         _dia_bmp = new BitmapData(125,75 - 40,true,0);
         _diagram = new Sprite();
         _diagram.graphics.beginBitmapFill(_dia_bmp);
         _diagram.graphics.drawRect(0,0,_dia_bmp.width,_dia_bmp.height);
         _diagram.graphics.endFill();
         _diagram.y = 17;
         addChild(_diagram);
         _diagram.graphics.lineStyle(1,16777215,0.03);
         _diagram.graphics.moveTo(0,0);
         _diagram.graphics.lineTo(125,0);
         _diagram.graphics.moveTo(0,Math.floor(_dia_bmp.height / 2));
         _diagram.graphics.lineTo(125,Math.floor(_dia_bmp.height / 2));
         _fps_bar = new Shape();
         _fps_bar.graphics.beginFill(16777215);
         _fps_bar.graphics.drawRect(0,0,125,4);
         _fps_bar.x = 0;
         _fps_bar.y = 16;
         addChild(_fps_bar);
         _afps_bar = new Shape();
         _afps_bar.graphics.lineStyle(1,3377373,1,false,"normal","square");
         _afps_bar.graphics.lineTo(0,4);
         _afps_bar.y = _fps_bar.y;
         addChild(_afps_bar);
         _lfps_bar = new Shape();
         _lfps_bar.graphics.lineStyle(1,16711680,1,false,"normal","square");
         _lfps_bar.graphics.lineTo(0,4);
         _lfps_bar.y = _fps_bar.y;
         addChild(_lfps_bar);
         _hfps_bar = new Shape();
         _hfps_bar.graphics.lineStyle(1,65280,1,false,"normal","square");
         _hfps_bar.graphics.lineTo(0,4);
         _hfps_bar.y = _fps_bar.y;
         addChild(_hfps_bar);
         _mem_points = [];
         _mem_graph = new Shape();
         _mem_graph.y = _diagram.y + _diagram.height;
         addChildAt(_mem_graph,0);
      }
      
      private function _initInteraction() : void
      {
         _top_bar.addEventListener("mouseDown",_onTopBarMouseDown);
         if(_enable_reset)
         {
            _btm_bar.mouseEnabled = false;
            _btm_bar_hit.addEventListener("click",_onCountersClick_reset);
            _afps_tf.addEventListener("mouseUp",_onAverageFpsClick_reset,false,1);
         }
         if(_enable_mod_fr)
         {
            _diagram.addEventListener("click",_onDiagramClick);
         }
      }
      
      private function _redrawWindow() : void
      {
         var _loc1_:Number = NaN;
         _loc1_ = !!_minimized?41:75;
         if(!_transparent)
         {
            this.graphics.clear();
            this.graphics.beginFill(0,0.6);
            this.graphics.drawRect(0,0,125,_loc1_);
         }
         _min_max_btn.rotation = !!_minimized?180:0;
         _btm_bar.y = _loc1_ - 21;
         _btm_bar_hit.y = _btm_bar.y;
         _diagram.visible = !_minimized;
         _mem_graph.visible = !_minimized;
         _fps_bar.visible = _minimized;
         _afps_bar.visible = _minimized;
         _lfps_bar.visible = _minimized;
         _hfps_bar.visible = _minimized;
         if(!_minimized)
         {
            _redrawMemGraph();
         }
      }
      
      private function _redrawStats() : void
      {
         var _loc1_:int = 0;
         _fps_tf.text = _fps.toString().concat("/",stage.frameRate);
         _afps_tf.text = Math.round(_avg_fps).toString();
         _ram_tf.text = _getRamString(_ram).concat(" / ",_getRamString(_max_ram));
         _dia_bmp.scroll(1,0);
         _poly_tf.text = "n/a (no view)";
         _loc1_ = _dia_bmp.height - Math.floor(_fps / stage.frameRate * _dia_bmp.height);
         _dia_bmp.setPixel32(1,_loc1_,4294967295);
         _loc1_ = _dia_bmp.height - Math.floor(_avg_fps / stage.frameRate * _dia_bmp.height);
         _dia_bmp.setPixel32(1,_loc1_,4281580543);
         if(_minimized)
         {
            _fps_bar.scaleX = Math.min(1,_fps / stage.frameRate);
            _afps_bar.x = Math.min(1,_avg_fps / stage.frameRate) * 125;
            _lfps_bar.x = Math.min(1,_min_fps / stage.frameRate) * 125;
            _hfps_bar.x = Math.min(1,_max_fps / stage.frameRate) * 125;
         }
         else if(_updates % 5 == 0)
         {
            _redrawMemGraph();
         }
         _mem_graph.x = _updates % 5;
         _updates = Number(_updates) + 1;
      }
      
      private function _redrawMemGraph() : void
      {
         var _loc3_:int = 0;
         var _loc1_:* = null;
         var _loc2_:* = 0;
         _mem_graph.scaleY = 1;
         _loc1_ = _mem_graph.graphics;
         _loc1_.clear();
         _loc1_.lineStyle(0.5,16711884,1,true,"none");
         _loc1_.moveTo(5 * (_mem_points.length - 1),-_mem_points[_mem_points.length - 1]);
         _loc3_ = _mem_points.length - 1;
         while(_loc3_ >= 0)
         {
            if(_mem_points[_loc3_ + 1] == 0 || _mem_points[_loc3_] == 0)
            {
               _loc1_.moveTo(_loc3_ * 5,-_mem_points[_loc3_]);
            }
            else
            {
               _loc1_.lineTo(_loc3_ * 5,-_mem_points[_loc3_]);
               if(_mem_points[_loc3_] > _loc2_)
               {
                  _loc2_ = Number(_mem_points[_loc3_]);
               }
            }
            _loc3_--;
         }
         _mem_graph.scaleY = _dia_bmp.height / _loc2_;
      }
      
      private function _getRamString(param1:Number) : String
      {
         var _loc2_:String = "B";
         if(param1 > 1048576)
         {
            param1 = param1 / 1048576;
            _loc2_ = "M";
         }
         else if(param1 > 1024)
         {
            param1 = param1 / 1024;
            _loc2_ = "K";
         }
         return param1.toFixed(1) + _loc2_;
      }
      
      private function _reset() : void
      {
         var _loc1_:int = 0;
         _updates = 0;
         _num_frames = 0;
         _min_fps = 2147483647;
         _max_fps = 0;
         _avg_fps = 0;
         _fps_sum = 0;
         _max_ram = 0;
         _loc1_ = 0;
         while(_loc1_ < 125 / 5)
         {
            _mem_points[_loc1_] = 0;
            _loc1_++;
         }
         if(_mean_data)
         {
            _loc1_ = 0;
            while(_loc1_ < _mean_data.length)
            {
               _mean_data[_loc1_] = 0;
               _loc1_++;
            }
         }
         _mem_graph.graphics.clear();
         _dia_bmp.fillRect(_dia_bmp.rect,0);
      }
      
      private function _endDrag() : void
      {
         if(this.x < -125)
         {
            this.x = -105;
         }
         else if(this.x > stage.stageWidth)
         {
            this.x = stage.stageWidth - 20;
         }
         if(this.y < 0)
         {
            this.y = 0;
         }
         else if(this.y > stage.stageHeight)
         {
            this.y = stage.stageHeight - 15;
         }
         this.x = Math.round(this.x);
         this.y = Math.round(this.y);
         _dragging = false;
         stage.removeEventListener("mouseLeave",_onMouseUpOrLeave);
         stage.removeEventListener("mouseUp",_onMouseUpOrLeave);
         stage.removeEventListener("mouseMove",_onMouseMove);
      }
      
      private function _onAddedToStage(param1:Event) : void
      {
         _timer.start();
         addEventListener("enterFrame",_onEnterFrame);
      }
      
      private function _onRemovedFromStage(param1:Event) : void
      {
         _timer.stop();
         removeEventListener("enterFrame",_onTimer);
      }
      
      private function _onTimer(param1:Event) : void
      {
         _ram = System.totalMemory;
         if(_ram > _max_ram)
         {
            _max_ram = _ram;
         }
         if(_updates % 5 == 0)
         {
            _mem_points.unshift(_ram / 1024);
            _mem_points.pop();
         }
         _redrawStats();
      }
      
      private function _onEnterFrame(param1:Event) : void
      {
         var _loc2_:Number = getTimer() - _last_frame_timestamp;
         _fps = Math.floor(1000 / _loc2_);
         _fps_sum = _fps_sum + _fps;
         if(_fps > _max_fps)
         {
            _max_fps = _fps;
         }
         else if(_fps != 0 && _fps < _min_fps)
         {
            _min_fps = _fps;
         }
         if(_mean_data)
         {
            _mean_data.push(_fps);
            _fps_sum = _fps_sum - _mean_data.shift();
            _avg_fps = _fps_sum / _mean_data_length;
         }
         else
         {
            _num_frames = Number(_num_frames) + 1;
            _avg_fps = _fps_sum / _num_frames;
         }
         _last_frame_timestamp = getTimer();
      }
      
      private function _onDiagramClick(param1:MouseEvent) : void
      {
         stage.frameRate = stage.frameRate - Math.floor((_diagram.mouseY - _dia_bmp.height / 2) / 5);
      }
      
      private function _onAverageFpsClick_reset(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         if(!_dragging)
         {
            _num_frames = 0;
            _fps_sum = 0;
            if(_mean_data)
            {
               _loc2_ = 0;
               while(_loc2_ < _mean_data.length)
               {
                  _mean_data[_loc2_] = 0;
                  _loc2_++;
               }
            }
         }
      }
      
      private function _onCountersClick_reset(param1:MouseEvent) : void
      {
         _reset();
      }
      
      private function _onMinMaxBtnClick(param1:MouseEvent) : void
      {
         _minimized = !_minimized;
         _redrawWindow();
      }
      
      private function _onTopBarMouseDown(param1:MouseEvent) : void
      {
         _drag_dx = this.mouseX;
         _drag_dy = this.mouseY;
         stage.addEventListener("mouseMove",_onMouseMove);
         stage.addEventListener("mouseUp",_onMouseUpOrLeave);
         stage.addEventListener("mouseLeave",_onMouseUpOrLeave);
      }
      
      private function _onMouseMove(param1:MouseEvent) : void
      {
         _dragging = true;
         this.x = stage.mouseX - _drag_dx;
         this.y = stage.mouseY - _drag_dy;
      }
      
      private function _onMouseUpOrLeave(param1:Event) : void
      {
         _endDrag();
      }
   }
}
