package roomLoading.view
{
   import com.greensock.TweenMax;
   import com.greensock.easing.Quint;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import room.RoomManager;
   
   public class RoomLoadingCountDownNum extends Sprite implements Disposeable
   {
       
      
      private var _numTxt:FilterFrameText;
      
      private var _num:int;
      
      private var _countDownBg:Bitmap;
      
      private var _bitmapDatas:Vector.<BitmapData>;
      
      private var _tenDigit:Bitmap;
      
      private var _digit:Bitmap;
      
      public function RoomLoadingCountDownNum(){super();}
      
      private function init() : void{}
      
      public function updateNum() : void{}
      
      private function updateNumView() : void{}
      
      public function dispose() : void{}
   }
}
