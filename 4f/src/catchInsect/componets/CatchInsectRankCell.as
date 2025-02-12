package catchInsect.componets
{
   import catchInsect.data.CatchInsectRankInfo;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.text.GradientText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.utils.PositionUtils;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   import newTitle.NewTitleManager;
   import vip.VipController;
   
   public class CatchInsectRankCell extends Sprite implements Disposeable
   {
       
      
      private var _bg:ScaleFrameImage;
      
      private var _sprite:Sprite;
      
      private var _topThreeIcon:ScaleFrameImage;
      
      private var _placeTxt:FilterFrameText;
      
      private var _vipName:GradientText;
      
      private var _nameTxt:FilterFrameText;
      
      private var _numTxt:FilterFrameText;
      
      private var _titleName:MovieClip;
      
      private var _zoneTxt:FilterFrameText;
      
      private var _titleTouch:Component;
      
      private var _info:CatchInsectRankInfo;
      
      private var _type:int;
      
      public function CatchInsectRankCell(param1:int){super();}
      
      private function initView() : void{}
      
      public function setData(param1:CatchInsectRankInfo) : void{}
      
      private function setRankNum(param1:int) : void{}
      
      private function addNickName() : void{}
      
      public function dispose() : void{}
   }
}
