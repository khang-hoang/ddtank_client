package team.view.mornui
{
   import morn.core.components.Button;
   import morn.core.components.Clip;
   import morn.core.components.Label;
   import morn.core.components.TextInput;
   import morn.core.components.View;
   
   public class TeamCreateInfoViewUI extends View
   {
       
      
      public var btn_esc:Button = null;
      
      public var teamText2:Label = null;
      
      public var teamText3:Label = null;
      
      public var teamText1:Label = null;
      
      public var teamText4:Label = null;
      
      public var label_coin:Label = null;
      
      public var btn_cancel:Button = null;
      
      public var btn_create:Button = null;
      
      public var btn_checkName:Button = null;
      
      public var btn_checkTag:Button = null;
      
      public var label_checkName:Label = null;
      
      public var input_name:TextInput = null;
      
      public var teamText5:Label = null;
      
      public var clip_checkTag:Clip = null;
      
      public var label_checkTag:Label = null;
      
      public var clip_checkName:Clip = null;
      
      public var input_tag:TextInput = null;
      
      public function TeamCreateInfoViewUI(){super();}
      
      override protected function createChildren() : void{}
   }
}
