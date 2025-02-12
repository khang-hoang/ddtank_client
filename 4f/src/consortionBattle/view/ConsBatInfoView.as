package consortionBattle.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import consortionBattle.ConsortiaBattleManager;
   import ddt.manager.PlayerManager;
   import ddt.utils.PositionUtils;
   import ddt.view.PlayerPortraitView;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class ConsBatInfoView extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _hp:Bitmap;
      
      private var _nameTxt:FilterFrameText;
      
      private var _hpTxt:FilterFrameText;
      
      private var _victoryCountTxt:FilterFrameText;
      
      private var _winningStreakTxt:FilterFrameText;
      
      private var _scoreTxt:FilterFrameText;
      
      private var _portrait:PlayerPortraitView;
      
      private var _hpWidth:Number;
      
      public function ConsBatInfoView(){super();}
      
      private function initView() : void{}
      
      private function initEvent() : void{}
      
      private function refreshView(param1:Event = null) : void{}
      
      private function removeEvent() : void{}
      
      public function dispose() : void{}
   }
}
