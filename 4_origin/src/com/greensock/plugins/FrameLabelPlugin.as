package com.greensock.plugins
{
   import com.greensock.TweenLite;
   import flash.display.MovieClip;
   
   public class FrameLabelPlugin extends FramePlugin
   {
      
      public static const API:Number = 1.0;
       
      
      public function FrameLabelPlugin()
      {
         super();
         this.propName = "frameLabel";
      }
      
      override public function onInitTween(param1:Object, param2:*, param3:TweenLite) : Boolean
      {
         if(!param3.target is MovieClip)
         {
            return false;
         }
         _target = param1 as MovieClip;
         this.frame = _target.currentFrame;
         var _loc5_:Array = _target.currentLabels;
         var _loc6_:String = param2;
         var _loc4_:int = _target.currentFrame;
         var _loc7_:int = _loc5_.length;
         while(true)
         {
            _loc7_--;
            if(_loc7_)
            {
               if(_loc5_[_loc7_].name == _loc6_)
               {
                  _loc4_ = _loc5_[_loc7_].frame;
                  break;
               }
               continue;
            }
            break;
         }
         if(this.frame != _loc4_)
         {
            addTween(this,"frame",this.frame,_loc4_,"frame");
         }
         return true;
      }
   }
}
