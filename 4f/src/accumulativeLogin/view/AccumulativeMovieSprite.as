package accumulativeLogin.view
{
   import accumulativeLogin.data.AccumulativeLoginRewardData;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.ShowTipManager;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.core.ITipedDisplay;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class AccumulativeMovieSprite extends Sprite implements ITipedDisplay, Disposeable
   {
       
      
      private var _state:int;
      
      private var _movieClip:MovieClip;
      
      private var _tipData:Object;
      
      private var _tipDirection:String;
      
      private var _tipGapH:int;
      
      private var _tipGapV:int;
      
      private var _tipStyle:String;
      
      private var _data:AccumulativeLoginRewardData;
      
      public function AccumulativeMovieSprite(param1:String){super();}
      
      public function get tipData() : Object{return null;}
      
      public function set tipData(param1:Object) : void{}
      
      public function get tipDirctions() : String{return null;}
      
      public function set tipDirctions(param1:String) : void{}
      
      public function get tipGapH() : int{return 0;}
      
      public function set tipGapH(param1:int) : void{}
      
      public function get tipGapV() : int{return 0;}
      
      public function set tipGapV(param1:int) : void{}
      
      public function get tipStyle() : String{return null;}
      
      public function set tipStyle(param1:String) : void{}
      
      public function asDisplayObject() : DisplayObject{return null;}
      
      public function dispose() : void{}
      
      public function set state(param1:int) : void{}
      
      public function get state() : int{return 0;}
      
      public function get data() : AccumulativeLoginRewardData{return null;}
      
      public function set data(param1:AccumulativeLoginRewardData) : void{}
   }
}
