package mark.mornUI
{
   import morn.core.components.Button;
   import morn.core.components.Label;
   import morn.core.components.View;
   
   public class MarkMainFrameUI extends View
   {
       
      
      public var lblTitle:Label = null;
      
      public var btnClose:Button = null;
      
      public function MarkMainFrameUI()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         loadUI("MarkMainFrame.xml");
      }
   }
}
