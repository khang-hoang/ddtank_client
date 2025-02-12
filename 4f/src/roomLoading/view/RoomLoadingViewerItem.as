package roomLoading.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.utils.PositionUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import gameCommon.GameControl;
   import room.RoomManager;
   import room.model.RoomPlayer;
   import room.view.RoomViewerItem;
   
   public class RoomLoadingViewerItem extends Sprite implements Disposeable
   {
      
      private static const MAX_VIEWER:int = 2;
       
      
      private var _bg:Image;
      
      private var _viewerTxt:Bitmap;
      
      private var _viewerItems:Vector.<RoomViewerItem>;
      
      public function RoomLoadingViewerItem(){super();}
      
      public function init() : void{}
      
      private function findViewers() : Vector.<RoomPlayer>{return null;}
      
      public function dispose() : void{}
   }
}
