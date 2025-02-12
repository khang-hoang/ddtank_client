package kingDivision.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.ScaleFrameImage;
   import com.pickgliss.utils.ObjectUtils;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class RewardListItem extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _topThreeRink:ScaleFrameImage;
      
      private var _index:int;
      
      private var _goodsList:RewardGoodsList;
      
      private var _leftBtn:BaseButton;
      
      private var _rightBtn:BaseButton;
      
      private var _panel:ScrollPanel;
      
      private var _select:int;
      
      private var _zoneIndex:int;
      
      public function RewardListItem(param1:int, param2:int)
      {
         super();
         _index = param1;
         _zoneIndex = param2;
         initView();
         addEvent();
      }
      
      private function initView() : void
      {
         _bg = ComponentFactory.Instance.creatBitmap("asset.rewardView.midsole");
         _topThreeRink = ComponentFactory.Instance.creat("kingDivision.RewardListItem.topThreeRink");
         _topThreeRink.visible = false;
         _goodsList = ComponentFactory.Instance.creatComponentByStylename("kingDivision.RewardGoodsList");
         _goodsList.setGoodsListItem(_zoneIndex);
         _panel = ComponentFactory.Instance.creatComponentByStylename("assets.RewardListItem.consorPanel");
         _panel.mouseEnabled = false;
         _panel.setView(_goodsList);
         _leftBtn = ComponentFactory.Instance.creat("kingDivision.RewardListItem.leftBtn");
         _leftBtn.enable = false;
         _rightBtn = ComponentFactory.Instance.creat("kingDivision.RewardListItem.rightBtn");
         if(_panel.hScrollbar.scrollValue > 0)
         {
            _leftBtn.enable = true;
         }
         addChild(_bg);
         addChild(_topThreeRink);
         addChild(_leftBtn);
         addChild(_rightBtn);
         addChild(_panel);
         setRink();
      }
      
      private function addEvent() : void
      {
         _leftBtn.addEventListener("mouseDown",__onClickLeftBtn);
         _rightBtn.addEventListener("mouseDown",__onClickRightBtn);
         _rightBtn.addEventListener("mouseUp",__onMouseUpBtn);
         _leftBtn.addEventListener("mouseUp",__onMouseUpBtn);
      }
      
      private function removeEvent() : void
      {
         _leftBtn.removeEventListener("mouseDown",__onClickLeftBtn);
         _rightBtn.removeEventListener("mouseDown",__onClickRightBtn);
         _rightBtn.removeEventListener("mouseUp",__onMouseUpBtn);
         _leftBtn.removeEventListener("mouseUp",__onMouseUpBtn);
         _panel.hScrollbar.removeEventListener("enterFrame",__enterFrame);
      }
      
      private function setRink() : void
      {
         _topThreeRink.visible = true;
         _topThreeRink.setFrame(_index + 1);
      }
      
      private function __onClickLeftBtn(param1:MouseEvent) : void
      {
         _select = 0;
         _panel.hScrollbar.addEventListener("enterFrame",__enterFrame);
      }
      
      private function __onClickRightBtn(param1:MouseEvent) : void
      {
         _select = 1;
         _panel.hScrollbar.addEventListener("enterFrame",__enterFrame);
      }
      
      private function __enterFrame(param1:Event) : void
      {
         if(_panel != null && _select == 0)
         {
            if(_panel != null && _leftBtn.enable && _panel.hScrollbar.scrollValue <= 0)
            {
               _leftBtn.enable = false;
            }
            _panel.hScrollbar.scrollValue = _panel.hScrollbar.scrollValue - 10;
         }
         else if(_panel != null && _select == 1)
         {
            if(_panel != null && !_leftBtn.enable && _panel.hScrollbar.scrollValue > 0)
            {
               _leftBtn.enable = true;
            }
            _panel.hScrollbar.scrollValue = _panel.hScrollbar.scrollValue + 10;
         }
         if(_goodsList.width - 268 <= Math.abs(_goodsList.x))
         {
            _rightBtn.enable = false;
         }
         else
         {
            _rightBtn.enable = true;
         }
      }
      
      private function __onMouseUpBtn(param1:MouseEvent) : void
      {
         _panel.hScrollbar.removeEventListener("enterFrame",__enterFrame);
      }
      
      public function dispose() : void
      {
         removeEvent();
         ObjectUtils.disposeAllChildren(this);
         _topThreeRink = null;
         _panel = null;
         _leftBtn = null;
         _rightBtn = null;
         if(this.parent)
         {
            this.parent.removeChild(this);
         }
      }
   }
}
