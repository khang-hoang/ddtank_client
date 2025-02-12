package hall.tasktrack
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.BaseButton;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.manager.LanguageMgr;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import quest.TaskManager;
   import road7th.data.DictionaryData;
   import road7th.data.DictionaryEvent;
   
   public class HallTaskCanGetListView extends Sprite implements Disposeable
   {
       
      
      private var _titleTxt:FilterFrameText;
      
      private var _scrollPanel:ScrollPanel;
      
      private var _sprite:Sprite;
      
      private var _dataList:DictionaryData;
      
      private var _npcBtn:BaseButton;
      
      private var _pointDownArrow:MovieClip;
      
      public function HallTaskCanGetListView(param1:BaseButton)
      {
         super();
         this.mouseEnabled = false;
         _npcBtn = param1;
         _dataList = TaskManager.instance.manuGetList;
         initView();
         initEvent();
         refreshView();
      }
      
      private function initView() : void
      {
         _titleTxt = ComponentFactory.Instance.creatComponentByStylename("hall.taskTrack.cellConditionTxt");
         _titleTxt.width = 300;
         _titleTxt.htmlText = LanguageMgr.GetTranslation("hall.taskCanGetListView.titleTxt");
         _titleTxt.mouseEnabled = true;
         _titleTxt.x = 7;
         _titleTxt.y = 10;
         _scrollPanel = ComponentFactory.Instance.creatComponentByStylename("hall.taskCanGetListView.scrollPanel");
         _sprite = new Sprite();
         addChild(_titleTxt);
         addChild(_scrollPanel);
      }
      
      private function initEvent() : void
      {
         _titleTxt.addEventListener("link",textClickHandler);
         _dataList.addEventListener("add",addHandler);
         _dataList.addEventListener("remove",removeHandler);
      }
      
      private function addHandler(param1:DictionaryEvent) : void
      {
         refreshView();
      }
      
      private function removeHandler(param1:DictionaryEvent) : void
      {
         refreshView();
      }
      
      private function refreshView() : void
      {
         var _loc4_:int = 0;
         var _loc3_:* = null;
         ObjectUtils.disposeAllChildren(_sprite);
         var _loc1_:Array = _dataList.list;
         var _loc2_:int = _loc1_.length;
         if(_loc2_ > 0)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc3_ = ComponentFactory.Instance.creatComponentByStylename("hall.taskTrack.cellTitleTxt");
               _loc3_.text = ">>" + _loc1_[_loc4_].Title;
               _loc3_.y = 20 * _loc4_;
               _sprite.addChild(_loc3_);
               if(_loc1_[_loc4_].QuestID == 558 && !_pointDownArrow)
               {
                  _pointDownArrow = ComponentFactory.Instance.creat("asset.newHandGuide.newArrowPointDown");
                  _pointDownArrow.mouseChildren = false;
                  _pointDownArrow.mouseEnabled = false;
                  _pointDownArrow.x = 43;
                  _pointDownArrow.y = -59;
                  addChild(_pointDownArrow);
               }
               _loc4_++;
            }
            _scrollPanel.setView(_sprite);
            _titleTxt.visible = true;
            _scrollPanel.visible = true;
         }
         else
         {
            _titleTxt.visible = false;
            _scrollPanel.visible = false;
            if(_pointDownArrow)
            {
               _pointDownArrow.gotoAndStop(1);
               removeChild(_pointDownArrow);
               _pointDownArrow = null;
            }
         }
         dispatchEvent(new Event("change"));
      }
      
      private function textClickHandler(param1:TextEvent) : void
      {
         _npcBtn.dispatchEvent(new MouseEvent("click"));
      }
      
      public function isEmpty() : Boolean
      {
         return _dataList.length <= 0;
      }
      
      private function removeEvent() : void
      {
         _titleTxt.removeEventListener("link",textClickHandler);
         _dataList.removeEventListener("add",addHandler);
         _dataList.removeEventListener("remove",removeHandler);
      }
      
      public function dispose() : void
      {
         removeEvent();
         if(_pointDownArrow)
         {
            _pointDownArrow.gotoAndStop(1);
            removeChild(_pointDownArrow);
            _pointDownArrow = null;
         }
         ObjectUtils.disposeAllChildren(this);
         ObjectUtils.disposeAllChildren(_sprite);
         _titleTxt = null;
         _scrollPanel = null;
         _sprite = null;
         _dataList = null;
         _npcBtn = null;
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
