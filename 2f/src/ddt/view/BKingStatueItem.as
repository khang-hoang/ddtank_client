package ddt.view
{
   import bombKing.data.BKingStatueInfo;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.ui.text.GradientText;
   import com.pickgliss.utils.DisplayUtils;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.player.BasePlayer;
   import ddt.data.player.PlayerInfo;
   import ddt.utils.PositionUtils;
   import ddt.view.character.CharactoryFactory;
   import ddt.view.character.ShowCharacter;
   import ddt.view.common.VipLevelIcon;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import phy.maps.Tile;
   import vip.VipController;
   
   public class BKingStatueItem extends Sprite implements Disposeable
   {
       
      
      private var _matrixData:Array;
      
      private var _titleName:Bitmap;
      
      private var _spName:Sprite;
      
      private var _lblName:FilterFrameText;
      
      private var _vipName:GradientText;
      
      private var _vipIcon:VipLevelIcon;
      
      private var _attestBtn:ScaleFrameImage;
      
      private var _type:int;
      
      private var _relief:Tile;
      
      private var _info:BKingStatueInfo;
      
      public function BKingStatueItem(param1:int){super();}
      
      public function set info(param1:BKingStatueInfo) : void{}
      
      private function createName() : void{}
      
      private function creatAttestBtn() : void{}
      
      private function __characterComplete(param1:Event) : void{}
      
      private function ShowRelief(param1:Bitmap) : void{}
      
      public function dispose() : void{}
   }
}
