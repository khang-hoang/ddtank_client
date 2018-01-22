package ddt.view.enthrall
{
   import com.pickgliss.ui.ComponentFactory;
   import com.pickgliss.ui.core.Component;
   import com.pickgliss.ui.text.FilterFrameText;
   import flash.display.Bitmap;
   
   public class TimeTip extends Component
   {
       
      
      private var bg:Bitmap;
      
      public var info_txt:FilterFrameText;
      
      public function TimeTip()
      {
         super();
         initView();
      }
      
      private function initView() : void
      {
         bg = ComponentFactory.Instance.creat("asset.core.view.enthrall.TipBG");
         addChild(bg);
         info_txt = ComponentFactory.Instance.creat("core.view.enthrall.TipTimeText");
         addChild(info_txt);
      }
   }
}
