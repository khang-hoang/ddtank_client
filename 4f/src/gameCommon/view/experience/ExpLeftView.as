package gameCommon.view.experience
{
   import com.greensock.TweenMax;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.utils.PositionUtils;
   import ddt.view.character.ShowCharacter;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.filters.BlurFilter;
   import flash.filters.GlowFilter;
   import gameCommon.GameControl;
   import gameCommon.model.Player;
   
   public class ExpLeftView extends Sprite implements Disposeable
   {
       
      
      private var _bigCharacter:Bitmap;
      
      private var _characterLight:MovieClip;
      
      private var _lightBg:Bitmap;
      
      private var _title:Bitmap;
      
      private var _bodyBg:Bitmap;
      
      private var _tabName:Bitmap;
      
      private var _tabExp:Bitmap;
      
      private var _tabExploit:Bitmap;
      
      private var _itemList:Vector.<ExpFriendItem>;
      
      private var _playersList:Vector.<Player>;
      
      private var _glowFilter:GlowFilter;
      
      private var _blurFilter:BlurFilter;
      
      public function ExpLeftView(){super();}
      
      private function init() : void{}
      
      private function initEffect() : void{}
      
      private function updateFilter() : void{}
      
      public function dispose() : void{}
   }
}
