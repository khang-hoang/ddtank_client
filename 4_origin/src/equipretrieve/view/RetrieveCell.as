package equipretrieve.view
{
   import bagAndInfo.cell.BagCell;
   import bagAndInfo.cell.DragEffect;
   import com.pickgliss.events.InteractiveEvent;
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.goods.InventoryItemInfo;
   import ddt.manager.DragManager;
   import ddt.manager.LanguageMgr;
   import ddt.manager.PlayerManager;
   import ddt.manager.SocketManager;
   import ddt.manager.SoundManager;
   import ddt.utils.PositionUtils;
   import equipretrieve.RetrieveController;
   import equipretrieve.RetrieveModel;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.geom.Point;
   import store.StoreCell;
   
   public class RetrieveCell extends StoreCell
   {
      
      public static const SHINE_XY:int = 1;
      
      public static const SHINE_SIZE:int = 96;
       
      
      private var bg:Sprite;
      
      private var bgBit:Bitmap;
      
      private var _text:FilterFrameText;
      
      public function RetrieveCell(param1:int)
      {
         bg = new Sprite();
         bgBit = ComponentFactory.Instance.creatBitmap("equipretrieve.trieveCell0");
         PositionUtils.setPos(bgBit,"asset.equipretrieve.trieveCellPos");
         _text = ComponentFactory.Instance.creatComponentByStylename("ddtbagAndInfo.reworkname.Text");
         _text.text = LanguageMgr.GetTranslation("tank.view.equipretrieve.text");
         bg.addChild(bgBit);
         bg.addChild(_text);
         super(bg,param1);
         setContentSize(68,68);
         PicPos = new Point(10,9);
      }
      
      override public function startShine() : void
      {
         _shiner.x = 1;
         _shiner.y = 1;
         var _loc1_:int = 96;
         _shiner.height = _loc1_;
         _shiner.width = _loc1_;
         super.startShine();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         if(_tbxCount)
         {
            ObjectUtils.disposeObject(_tbxCount);
         }
         _tbxCount = ComponentFactory.Instance.creat("equipretrieve.goodsCountText");
         _tbxCount.mouseEnabled = false;
         addChild(_tbxCount);
      }
      
      override protected function addEnchantMc() : void
      {
         _enchantMcName = "asset.enchant.equip.level";
         _enchantMcPosStr = "enchant.retrieve.equip.levelMcPos";
         super.addEnchantMc();
      }
      
      override public function dragDrop(param1:DragEffect) : void
      {
         RetrieveController.Instance.shine = false;
         if(PlayerManager.Instance.Self.bagLocked)
         {
            return;
         }
         var _loc2_:InventoryItemInfo = param1.data as InventoryItemInfo;
         if(_loc2_.BagType == 12 && this.info != null)
         {
            return;
         }
         if(_loc2_ && param1.action != "split")
         {
            param1.action = "none";
            SocketManager.Instance.out.sendMoveGoods(_loc2_.BagType,_loc2_.Place,12,index,1);
            RetrieveModel.Instance.setSavePlaceType(_loc2_,index);
            param1.action = "none";
            DragManager.acceptDrag(this);
         }
      }
      
      override protected function __doubleClickHandler(param1:InteractiveEvent) : void
      {
         if(!DoubleClickEnabled)
         {
            return;
         }
         if(info == null)
         {
            return;
         }
         if((param1.currentTarget as BagCell).info != null)
         {
            if((param1.currentTarget as BagCell).info != null)
            {
               SocketManager.Instance.out.sendMoveGoods(12,index,RetrieveModel.Instance.getSaveCells(index).BagType,RetrieveModel.Instance.getSaveCells(index).Place);
               if(!mouseSilenced)
               {
                  SoundManager.instance.play("008");
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         super.dispose();
         if(bgBit)
         {
            ObjectUtils.disposeObject(bgBit);
         }
         if(_text)
         {
            ObjectUtils.disposeObject(_text);
         }
         if(bg)
         {
            ObjectUtils.disposeObject(bg);
         }
         if(_tbxCount)
         {
            ObjectUtils.disposeObject(_tbxCount);
         }
         bgBit = null;
         bg = null;
         _tbxCount = null;
         _text = null;
      }
   }
}
