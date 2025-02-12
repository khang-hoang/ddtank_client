package quest
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.controls.ScrollPanel;
   import com.pickgliss.ui.core.Disposeable;
   import com.pickgliss.ui.text.FilterFrameText;
   import com.pickgliss.utils.ObjectUtils;
   import ddt.data.quest.QuestInfo;
   import flash.display.Bitmap;
   import flash.display.Sprite;
   
   public class QuestDescriptView extends Sprite implements Disposeable
   {
       
      
      private var _descTitle:Bitmap;
      
      private var descText:FilterFrameText;
      
      private var panel:ScrollPanel;
      
      private var container:Sprite;
      
      public function QuestDescriptView(){super();}
      
      private function initView() : void{}
      
      public function set info(param1:QuestInfo) : void{}
      
      public function dispose() : void{}
   }
}
