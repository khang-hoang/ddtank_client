package ddQiYuan.view
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddQiYuan.DDQiYuanManager;
   import ddQiYuan.model.DDQiYuanModel;
   import ddt.data.goods.InventoryItemInfo;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class AreaRankListItem extends Sprite implements Disposeable
   {
       
      
      private var _model:DDQiYuanModel;
      
      private var _bgImage:ScaleFrameImage;
      
      private var _topThreeRink:ScaleFrameImage;
      
      private var _rankTf:FilterFrameText;
      
      private var _bagCell:BagCell;
      
      private var _playerNameSP:Component;
      
      private var _playerNameTf:FilterFrameText;
      
      private var _areaRankOfferValueTf:FilterFrameText;
      
      private var _data:Object;
      
      private var _index:int;
      
      public function AreaRankListItem(){super();}
      
      private function initView() : void{}
      
      public function setData(param1:int, param2:int) : void{}
      
      public function dispose() : void{}
   }
}
