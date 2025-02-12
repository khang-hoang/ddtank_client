package ddt.view.horse
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.player.PlayerInfo;
   import ddt.manager.LanguageMgr;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import horse.HorseManager;
   import horse.data.HorseTemplateVo;
   
   public class HorseInfoView extends Sprite implements Disposeable
   {
       
      
      private var _level:int;
      
      private var _bg:Bitmap;
      
      private var _horseNameStrList:Array;
      
      private var _nameTxt:FilterFrameText;
      
      private var _horseMc:MovieClip;
      
      private var _levelStarTxtImage:Bitmap;
      
      private var _levelTxt:FilterFrameText;
      
      private var _starTxt:FilterFrameText;
      
      private var _starCellList:Vector.<HorseFrameLeftBottomStarCell>;
      
      private var _addPropertyValueTxtList:Vector.<FilterFrameText>;
      
      private var _curRidingBookHorseID:int;
      
      private var _bookHorseHeadBG:Bitmap;
      
      private var _bookHorseRidingState:FilterFrameText;
      
      private var _horseAmuletTips:Component;
      
      private var _bookRidingHeadBitmap:Bitmap;
      
      public function HorseInfoView(){super();}
      
      private function refreshView() : void{}
      
      public function set info(param1:PlayerInfo) : void{}
      
      public function dispose() : void{}
   }
}
