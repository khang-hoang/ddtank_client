package kingDivision.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import ddt.manager.LanguageMgr;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import kingDivision.KingDivisionManager;
   
   public class ProgressBarView extends Sprite implements Disposeable
   {
       
      
      private var _zoneIndex:int;
      
      private var _dateArr:Array;
      
      private var _zoneImg:ScaleFrameImage;
      
      private var _fristRound:Bitmap;
      
      private var _secondRound:Bitmap;
      
      private var _semifinal:Bitmap;
      
      private var _finals:Bitmap;
      
      private var _proBarAllMovie:MovieClip;
      
      private var _dateAndTimeTxt_Qua:FilterFrameText;
      
      private var _dateAndTimeTxt_FriRou:FilterFrameText;
      
      private var _dateAndTimeTxt_SecRou:FilterFrameText;
      
      private var _dateAndTimeTxt_Sem:FilterFrameText;
      
      private var _dateAndTimeTxt_Fin:FilterFrameText;
      
      private var _index:int;
      
      public function ProgressBarView(){super();}
      
      private function initView() : void{}
      
      public function updateZoneImg(param1:int) : void{}
      
      private function addDateAndTime(param1:Array, param2:Array) : void{}
      
      private function updateDateAndTime(param1:Array, param2:Array) : void{}
      
      public function dispose() : void{}
      
      public function get proBarAllMovie() : MovieClip{return null;}
      
      public function set proBarAllMovie(param1:MovieClip) : void{}
   }
}
