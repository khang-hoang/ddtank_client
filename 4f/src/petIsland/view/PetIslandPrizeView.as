package petIsland.view
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Component;
   import ddt.data.goods.ItemTemplateInfo;
   import ddt.manager.ItemManager;
   import ddt.manager.ServerConfigManager;
   import ddt.manager.SocketManager;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import petIsland.PetIslandManager;
   
   public class PetIslandPrizeView extends Sprite
   {
       
      
      private var _line1_2:Bitmap;
      
      private var _line2_3:Bitmap;
      
      private var _line3_4:Bitmap;
      
      private var _line4_5:Bitmap;
      
      private var _prize1:MovieClip;
      
      private var _prize2:MovieClip;
      
      private var _prize3:MovieClip;
      
      private var _prize4:MovieClip;
      
      private var _prize5:MovieClip;
      
      private var _contain1:Component;
      
      private var _contain2:Component;
      
      private var _contain3:Component;
      
      private var _contain4:Component;
      
      private var _contain5:Component;
      
      private var lineArr:Array;
      
      private var prizeArr:Array;
      
      public function PetIslandPrizeView(){super();}
      
      private function clickHandler(param1:MouseEvent) : void{}
      
      public function setPrizeView() : void{}
   }
}
