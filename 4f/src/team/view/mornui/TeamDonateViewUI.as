package team.view.mornui
{
   import morn.core.components.Button;
   import morn.core.components.Label;
   import morn.core.components.TextInput;
   import morn.core.components.View;
   
   public class TeamDonateViewUI extends View
   {
       
      
      public var teamText1:Label = null;
      
      public var btn_esc:Button = null;
      
      public var teamText2:Label = null;
      
      public var teamText3:Label = null;
      
      public var btn_submit:Button = null;
      
      public var btn_cancel:Button = null;
      
      public var teamText4:Label = null;
      
      public var label_active:Label = null;
      
      public var label_count:Label = null;
      
      public var input_text:TextInput = null;
      
      public function TeamDonateViewUI(){super();}
      
      override protected function createChildren() : void{}
   }
}
