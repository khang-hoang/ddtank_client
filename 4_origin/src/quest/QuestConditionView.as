package quest
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.quest.QuestCondition;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class QuestConditionView extends Sprite implements Disposeable
   {
       
      
      private var _bg:Bitmap;
      
      private var _cond:QuestCondition;
      
      private var conditionText:FilterFrameText;
      
      private var statusText:FilterFrameText;
      
      public function QuestConditionView(param1:QuestCondition)
      {
         super();
         _bg = ComponentFactory.Instance.creat("asset.core.quest.QuestConditionBGHighlight");
         addChild(_bg);
         conditionText = ComponentFactory.Instance.creat("core.quest.QuestConditionText");
         addChild(conditionText);
         statusText = ComponentFactory.Instance.creat("core.quest.QuestConditionStatus");
         addChild(statusText);
         _cond = param1;
         text = _cond.description;
      }
      
      public function set status(param1:String) : void
      {
         statusText.text = param1;
      }
      
      public function set text(param1:String) : void
      {
         conditionText.text = param1;
         statusText.x = conditionText.x + conditionText.width;
      }
      
      public function set isComplete(param1:Boolean) : void
      {
         if(param1 == true)
         {
         }
      }
      
      override public function get height() : Number
      {
         return 35;
      }
      
      public function dispose() : void
      {
         _cond = null;
         if(_bg)
         {
            ObjectUtils.disposeObject(_bg);
         }
         _bg = null;
         if(conditionText)
         {
            ObjectUtils.disposeObject(conditionText);
         }
         conditionText = null;
         if(statusText)
         {
            ObjectUtils.disposeObject(statusText);
         }
         statusText = null;
         if(this.parent)
         {
            this.parent.removeChild(this);
         }
      }
   }
}
