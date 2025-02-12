package ddQiYuan.view
{
   import bagAndInfo.cell.BagCell;
   import com.pickgliss.toplevel.StageReferance;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.Image;
   import ddQiYuan.DDQiYuanManager;
   import ddQiYuan.model.DDQiYuanModel;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.SocketManager;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   
   public class JoinBagCellSp extends Sprite implements Disposeable
   {
       
      
      private var _joinBagCell1:BagCell;
      
      private var _model:DDQiYuanModel;
      
      private var _canGainImage:Image;
      
      private var _isPressDown:Boolean;
      
      private var _leftCount:int;
      
      public function JoinBagCellSp()
      {
         super();
         _model = DDQiYuanManager.instance.model;
         var _loc1_:Bitmap = ComponentFactory.Instance.creatBitmap("DDQiYuan.Pic27");
         var _loc2_:InventoryItemInfo = DDQiYuanManager.instance.getInventoryItemInfo(_model.joinRewardGood);
         _joinBagCell1 = new BagCell(1,_loc2_,true,_loc1_,false);
         _joinBagCell1.PicPos = new Point(2,2);
         _joinBagCell1.setContentSize(38,38);
         _joinBagCell1.setCount(_loc2_.Count);
         addChild(_joinBagCell1);
         _canGainImage = ComponentFactory.Instance.creat("ddQiYuan.canGainJoinReward");
         _canGainImage.visible = false;
         addChild(_canGainImage);
         DDQiYuanManager.instance.addEventListener("event_gain_join_reward_back",update);
         DDQiYuanManager.instance.addEventListener("event_op_back",update);
         update(null);
      }
      
      private function update(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(_model.myOfferTimes >= _model.joinRewardLeastOfferTimes)
         {
            _loc2_ = Math.min(7,int(_model.myAreaOfferDegree / _model.offerTimesPerBaoZhu));
         }
         _leftCount = _loc2_ - _model.hasGainJoinRewardCount;
         if(_leftCount > 0)
         {
            this.filters = null;
            _canGainImage.visible = true;
            addEventListener("mouseDown",onMouseHandler);
            addEventListener("click",onMouseHandler);
            StageReferance.stage.addEventListener("mouseUp",onMouseHandler);
         }
         else
         {
            this.filters = [new ColorMatrixFilter([0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0,0,0,1,0])];
            _canGainImage.visible = false;
            removeEventListener("mouseDown",onMouseHandler);
            removeEventListener("click",onMouseHandler);
            StageReferance.stage.removeEventListener("mouseUp",onMouseHandler);
         }
      }
      
      private function onMouseHandler(param1:MouseEvent) : void
      {
         var _loc2_:String = param1.type;
         if(_loc2_ == "mouseDown")
         {
            this.x = this.x + 1;
            this.y = this.y + 1;
            _isPressDown = true;
         }
         else if(_loc2_ == "click")
         {
            SocketManager.Instance.out.getDDQiYuanJoinReward();
         }
         else if(_loc2_ == "mouseUp")
         {
            if(_isPressDown)
            {
               this.x = this.x - 1;
               this.y = this.y - 1;
               _isPressDown = false;
            }
         }
      }
      
      public function dispose() : void
      {
         removeEventListener("mouseDown",onMouseHandler);
         removeEventListener("click",onMouseHandler);
         StageReferance.stage.removeEventListener("mouseUp",onMouseHandler);
         DDQiYuanManager.instance.removeEventListener("event_gain_join_reward_back",update);
         DDQiYuanManager.instance.removeEventListener("event_op_back",update);
         _joinBagCell1 = null;
         _model = null;
         _canGainImage = null;
      }
   }
}
