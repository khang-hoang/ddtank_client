package demonChiYou.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Sprite;
   import worldboss.player.RankingPersonInfo;
   
   public class RankingPersonInfoItem extends Sprite implements Disposeable
   {
       
      
      private var _txtName:FilterFrameText;
      
      private var _txtDamage:FilterFrameText;
      
      private var _ranking:FilterFrameText;
      
      private var _num:int;
      
      private var _personInfo:RankingPersonInfo;
      
      private var _bg:ScaleFrameImage;
      
      private var _bgLine:MutipleImage;
      
      private var _longBg:Boolean;
      
      public function RankingPersonInfoItem(param1:int, param2:RankingPersonInfo, param3:Boolean = false){super();}
      
      private function _init() : void{}
      
      private function setValue() : void{}
      
      public function dispose() : void{}
   }
}
