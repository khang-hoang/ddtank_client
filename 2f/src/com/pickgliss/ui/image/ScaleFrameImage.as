package com.pickgliss.ui.image
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.utils.ObjectUtils;
   import com.pickgliss.utils.StringUtils;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   
   public class ScaleFrameImage extends Image
   {
      
      public static const P_fillAlphaRect:String = "fillAlphaRect";
       
      
      var _currentFrame:uint;
      
      private var _fillAlphaRect:Boolean;
      
      private var _imageLinks:Array;
      
      private var _images:Vector.<DisplayObject>;
      
      public function ScaleFrameImage(){super();}
      
      override public function dispose() : void{}
      
      public function set fillAlphaRect(param1:Boolean) : void{}
      
      public function get getFrame() : uint{return null;}
      
      override public function setFrame(param1:int) : void{}
      
      function fillRect() : void{}
      
      override protected function init() : void{}
      
      override protected function resetDisplay() : void{}
      
      override protected function updateSize() : void{}
      
      private function fillImages() : void{}
      
      public function creatFrameImage(param1:int) : void{}
      
      public function getFrameImage(param1:int) : DisplayObject{return null;}
      
      private function removeImages() : void{}
      
      public function get totalFrames() : int{return 0;}
   }
}
