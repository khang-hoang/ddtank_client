package dice.view
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.controls.container.VBox;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.image.MutipleImage;
   import com.pickgliss.ui.image.ScaleBitmapImage;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import dice.controller.DiceController;
   import dice.event.DiceEvent;
   import flash.display.Sprite;
   
   public class DiceRewarditemsBar extends Sprite implements Disposeable
   {
       
      
      private var _bg:ScaleBitmapImage;
      
      private var _caption:FilterFrameText;
      
      private var _line:ScaleBitmapImage;
      
      private var _titleBG:MutipleImage;
      
      private var _listPanel:ScrollPanel;
      
      private var _list:VBox;
      
      private var _tempStr:String;
      
      public function DiceRewarditemsBar()
      {
         super();
         preInitialize();
         initialize();
         addEvent();
      }
      
      private function preInitialize() : void
      {
         _bg = ComponentFactory.Instance.creatComponentByStylename("asset.dice.reward.BG");
         _caption = ComponentFactory.Instance.creatComponentByStylename("asset.dice.reward.caption");
         _titleBG = ComponentFactory.Instance.creatComponentByStylename("asset.dice.reward.title.bg");
         _listPanel = ComponentFactory.Instance.creatComponentByStylename("asset.dice.reward.panel");
         _list = ComponentFactory.Instance.creatComponentByStylename("asset.dice.reward.listVbox");
      }
      
      private function initialize() : void
      {
         addChild(_bg);
         addChild(_titleBG);
         addChild(_caption);
         _caption.text = LanguageMgr.GetTranslation("dice.reward.title");
         addChild(_listPanel);
         _listPanel.setView(_list);
         _listPanel.invalidateViewport(true);
      }
      
      private function addEvent() : void
      {
         DiceController.Instance.addEventListener("get_dice_result_data",__onAddRewardItem);
         DiceController.Instance.addEventListener("dice_player_iswalking",__onPlayerStateChanged);
      }
      
      private function __onAddRewardItem(param1:DiceEvent) : void
      {
         _tempStr = String(param1.resultData.rewardItem);
      }
      
      private function __onPlayerStateChanged(param1:DiceEvent) : void
      {
         var _loc2_:* = null;
         if(param1.resultData && !param1.resultData.isWalking)
         {
            _loc2_ = ComponentFactory.Instance.creatComponentByStylename("asset.dice.reward.item");
            _loc2_.text = _tempStr + "";
            if(_loc2_.numLines == 1)
            {
               _loc2_.height = 19;
            }
            _list.addChild(_loc2_);
            _listPanel.invalidateViewport(true);
         }
      }
      
      private function removeEvent() : void
      {
         DiceController.Instance.removeEventListener("get_dice_result_data",__onAddRewardItem);
         DiceController.Instance.removeEventListener("dice_player_iswalking",__onPlayerStateChanged);
      }
      
      public function dispose() : void
      {
         removeEvent();
         ObjectUtils.disposeObject(_titleBG);
         _titleBG = null;
         ObjectUtils.disposeObject(_listPanel);
         _listPanel = null;
         ObjectUtils.disposeObject(_bg);
         _bg = null;
         ObjectUtils.disposeObject(_caption);
         _caption = null;
         ObjectUtils.disposeObject(_line);
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
