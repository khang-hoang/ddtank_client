package com.pickgliss.loader
{
   import com.crypto.NewCrypto;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   
   public class BitmapLoader extends DisplayLoader
   {
      
      private static const InvalidateBitmapDataID:int = 2015;
       
      
      private var _sourceBitmap:Bitmap;
      
      public function BitmapLoader(param1:int, param2:String){super(null,null);}
      
      override public function get content() : *{return null;}
      
      public function get bitmapData() : BitmapData{return null;}
      
      override protected function __onContentLoadComplete(param1:Event) : void{}
      
      override public function loadFromBytes(param1:ByteArray) : void{}
      
      override public function get type() : int{return 0;}
   }
}
